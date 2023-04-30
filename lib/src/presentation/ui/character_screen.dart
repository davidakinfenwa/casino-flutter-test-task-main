import 'package:casino_test/src/core/constants.dart';
import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/core/util/toast_util.dart';
import 'package:casino_test/src/core/util/width_constraints.dart';
import 'package:casino_test/src/data/models/character.dart';
import 'package:casino_test/src/presentation/ui/character_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business/bloc/bloc_state/bloc_state.dart';
import '../../business/bloc/main_bloc.dart';
import '../../business/snapshot_cache/character_snapshot_cache.dart';
import '../../core/di/main_di_module.dart';
import '../../core/util/dialog_util.dart';
import '../../core/util/loading_indicator.dart';
import '../../data/form/get_page_form.dart';
import '../widget/display_card.dart';
import '../widget/shared/custom_button.dart';
import '../widget/shared/response_indicators/empty_response_indicator.dart';
import '../widget/shared/response_indicators/error_indicator.dart';

@immutable
class CharactersScreen extends StatefulWidget {
  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final _scrollController = ScrollController();
  final _scrollThreshold = Sizing.kScrollThreshold;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScrollView);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScrollView)
      ..dispose();
    super.dispose();
  }

  void _onFetchCharactersCallback() {
    final _successCharacterState =
        context.read<CharacterSnapshotCache>().successCharacterState;

    final _nextPage = _successCharacterState == null
        ? INITIAL_PAGE
        : _successCharacterState.data.info.nextPage;

    if (_nextPage != null) {
      final _getCharactersFormParams = GetCharactersFormParams(page: _nextPage);

      context.read<MainPageBloc>().add(
            MainBlocEvent.getCharacters(
              getCharactersFormParams: _getCharactersFormParams,
            ),
          );
    }
  }

  void _onScrollView() {
    if (!_scrollController.hasClients) return;
    final _maxScroll = _scrollController.position.maxScrollExtent;
    final _currentScroll = _scrollController.position.pixels;
    if (_maxScroll - _currentScroll <= _scrollThreshold) {
      _onFetchCharactersCallback();
    }
  }

  Widget _buildLoadingIndicator({bool isSmallSizedLoadingIndicator = false}) {
    return Center(
      child: LoadingIndicator(
        type: LoadingIndicatorType.circularProgressIndicator(
            isSmallSize: isSmallSizedLoadingIndicator),
      ),
    );
  }

  Widget _buildBottomActionIndicator() {
    return BlocBuilder<MainPageBloc,
        BlocState<Failure<ExceptionMessage>, CharacterList>>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return SizedBox(
              height: Sizing.kSizingMultiple * 5,
              child: _buildLoadingIndicator(isSmallSizedLoadingIndicator: true),
            );
          },
          error: (_) {
            return WidthConstraint(context).withHorizontalSymmetricalPadding(
              child: CustomButton(
                type: ButtonType.withArrowIndicatorButton(
                  onTap: () => _onFetchCharactersCallback(),
                  indicator: Icon(
                    Icons.refresh_rounded,
                    color: ColorTheme.kWhiteColor,
                  ),
                  label: 'Load More Data',
                ),
              ),
            );
          },
        );
      },
    );
  }

 void _showCharacterDetailModalBottomSheet({required Character character})  {
    DialogUtil(context).bottomModal(
      child: BlocProvider<MainPageBloc>(
        create: (context) => getIt<MainPageBloc>(),
        child:  CharacterDetail(character: character)
      ),
    );
  }
  Widget _buildCharacterListBuilder() {
    final _state =
        context.watch<CharacterSnapshotCache>().successCharacterState;

    if (_state == null || _state.data.characters.isEmpty) {
      return WidthConstraint(context).withHorizontalSymmetricalPadding(
        child: EmptyResponseIndicator(
          type: EmptyResponseIndicatorType.simple(
            context,
            onActionCallback: () => _onFetchCharactersCallback(),
            message: 'Sorry! There are content available',
          ),
        ),
      );
    }

    final _characters = _state.data.characters;

    return ListView.separated(
      cacheExtent: double.maxFinite,
      controller: _scrollController,
      itemCount:
          _state.hasReachedMax ? _characters.length : _characters.length + 1,
      padding: EdgeInsets.symmetric(
        vertical: Sizing.kSizingMultiple * 3,
      ),
      separatorBuilder: (_, __) {
        return SizedBox(height: Sizing.kSizingMultiple * 3);
      },
      itemBuilder: (context, index) {
        if (index >= _characters.length) {
          return _buildBottomActionIndicator();
        }

        final _character = _characters[index];

        return DisplayCard(
          onTap: () {
            
           _showCharacterDetailModalBottomSheet(character: _character);
          },
          character: _character,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _characterSnapshotCache =
        context.watch<CharacterSnapshotCache>().successCharacterState;
        

    return Scaffold(
      backgroundColor: ColorTheme.kBackgroundColor,
      appBar: AppBar(
        title: Text('Rick and Morty cartoon'),
       centerTitle: true,
        backgroundColor: ColorTheme.kSecondaryColor,
      ),
      body: BlocConsumer<MainPageBloc,
          BlocState<Failure<ExceptionMessage>, CharacterList>>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            success: (_) {
              // notify all listeners to rebuild
              context.read<CharacterSnapshotCache>().notifyAllListeners();
            },
            error: (state) {
              if (_characterSnapshotCache != null) {
                ToastUtil.showToast(state.failure.exception.message.toString());
              }
            },
          );
        },
        builder: (blocContext, state) {
          return state.maybeMap(
            orElse: () {
              if (_characterSnapshotCache != null) {
                return _buildCharacterListBuilder();
              }

              return _buildLoadingIndicator();
            },
            success: (state) => _buildCharacterListBuilder(),
            error: (state) {
              if (_characterSnapshotCache != null) {
                return _buildCharacterListBuilder();
              }

              return Center(
                child:
                    WidthConstraint(context).withHorizontalSymmetricalPadding(
                  child: ErrorIndicator(
                    type: ErrorIndicatorType.simple(
                      onRetryCallback: () => _onFetchCharactersCallback(),
                      code: state.failure.exception.code,
                      message: state.failure.exception.message.toString(),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
