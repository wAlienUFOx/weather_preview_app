import 'package:flutter/material.dart';
import 'package:weather_preview_app/data/models/favorites/favorite_model.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class FavoritesListTile extends StatefulWidget {
  const FavoritesListTile({super.key, required this.place, required this.onTap, required this.onDelete});

  final FavoriteModel place;
  final void Function() onTap;
  final void Function() onDelete;

  @override
  State<FavoritesListTile> createState() => _FavoritesListTileState();
}

class _FavoritesListTileState extends State<FavoritesListTile> {
  bool toDelete = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onPanUpdate: (details) {
        if (details.delta.dx < 0) setState(() => toDelete = true);
        if (details.delta.dx > 0) setState(() => toDelete = false);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsTheme.of(context).secondarySF,
        ),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  widget.place.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextsTheme.of(context).body1(ColorsTheme.of(context).primaryInvertedText),
                ),
              ),
            ),
            const SizedBox(width: 12),
            GestureDetector(
              onTap: () => setState(() => toDelete = !toDelete),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.chevron_right, size: 32, color: ColorsTheme.of(context).accentIcon),
              ),
            ),
            if (toDelete) const SizedBox(width: 14),
            GestureDetector(
              onTap: widget.onDelete,
              child: AnimatedContainer(
                width: toDelete ? 72 : 0,
                decoration: BoxDecoration(
                  color: ColorsTheme.of(context).accentIcon,
                  borderRadius: const BorderRadius.horizontal(right: Radius.circular(8)),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
                duration: const Duration(milliseconds: 100),
                child: Center(
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: toDelete ? Icon(Icons.delete, color: ColorsTheme.of(context).primaryInvertedIcon) : null,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DateTime parseTime(String timeString) {
    final timeParts = timeString.split(':');
    return DateTime.now().copyWith(
      hour: int.parse(timeParts[0]),
      minute: int.parse(timeParts[1]),
    );
  }
}
