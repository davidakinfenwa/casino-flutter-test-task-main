import 'package:casino_test/src/presentation/widget/shared/cache_network_image.dart';
import 'package:casino_test/src/presentation/widget/shared/custom_chip.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../data/models/character.dart';
import '../ui/character_details.dart';

class DisplayCard extends StatelessWidget {
  final VoidCallback onTap;
  final Character character;

  const DisplayCard({Key? key, required this.onTap, required this.character})
      : super(key: key);

  Widget _buildDetails(BuildContext context) {
    return Container(
      color: const Color(0x90ffffff),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.name,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: CustomTypography.kHeadline5,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            _buildTags(),
            Text(
              character.created.toLocal().year.toString(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
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

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return CharacterDetail(
                character: character,
              );
            },
          );
        },
        child: Stack(
          children: [
            // Image.asset('assets/images/apple.jpg'),
            Container(
              height: Sizing.kSizingMultiple * 30,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                //borderRadius: _borderRadius,
                child: CacheNetworkImage(imageUrl: character.image),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildDetails(context),
            ),
          ],
        ),
      ),
    );
  }
}
