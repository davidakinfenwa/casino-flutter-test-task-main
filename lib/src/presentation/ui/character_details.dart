import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/util/width_constraints.dart';
import '../../data/models/character.dart';
import '../widget/shared/cache_network_image.dart';
import '../widget/shared/custom_chip.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;
  const CharacterDetail({Key? key, required this.character}) : super(key: key);

  Widget _buildHeader() {
    return SizedBox(
      height: Sizing.kMaxItemHeight,
      child: CacheNetworkImage(imageUrl: character.image),
    );
  }

  Widget _buildTags() {
    return Row(
      children: [
        CustomChip(
          color: ColorTheme.kIndicatorColor,
          label: character.status,
        ),
        SizedBox(width: Sizing.kSizingMultiple),
        CustomChip(
          color: ColorTheme.kSecondaryColor,
          label: character.species,
        ),
        SizedBox(width: Sizing.kSizingMultiple),
        CustomChip(
          color: ColorTheme.kPrimaryColor,
          label: character.gender,
        ),
      ],
    );
  }

  Widget _buildInfoBox() {
    final _borderRadius = BorderRadius.circular(Sizing.kBorderRadius);

    return Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: WidthConstraint(context).contentPadding,
          right: WidthConstraint(context).contentPadding,
          bottom: Sizing.kSizingMultiple,
        ),
        child: Material(
          elevation: Sizing.kItemElevation * 2,
          borderRadius: _borderRadius,
          child: Container(
            height: Sizing.kSizingMultiple * 16,
            padding: EdgeInsets.all(Sizing.kSizingMultiple * 2),
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  character.name,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      character.location.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    // Text(
                    //   timeago.format(character.created),
                    //   style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    //         color: ColorTheme.kSubtitleTextColor,
                    //       ),
                    // ),
                  ],
                ),
                Spacer(),
                Text(
                  character.origin.name,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: ColorTheme.kSubtitleTextColor,
                      ),
                ),
                SizedBox(height: Sizing.kSizingMultiple * .5),
                _buildTags(),
                
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildEpisodeBuilder() {
    final _borderRadius = BorderRadius.circular(Sizing.kBorderRadius);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: Sizing.kSizingMultiple * 2,
          runSpacing: Sizing.kSizingMultiple * 2,
          // crossAxisAlignment: WrapCrossAlignment.center,
      
          children: character.episode.map((e) {
            final _parts = e.split('/');
      
            return Material(
              borderRadius: _borderRadius,
              elevation: Sizing.kItemElevation,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizing.kSizingMultiple * 2,
                  vertical: Sizing.kSizingMultiple * 1.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                ),
                child: Text('Episode ${ _parts[_parts.length - 1]}'),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
  
    return SizedBox(
      height: Sizing.kBottomSheet,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildHeader(),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
          _buildInfoBox(),
          Text('Episodes'),
          SizedBox(height: Sizing.kSizingMultiple * 2),
          Expanded(child: _buildEpisodeBuilder()),

        ],
      ),
    );
  }
}
