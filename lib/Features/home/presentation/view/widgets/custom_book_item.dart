import 'package:books/core/widgets/custom_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookItem extends StatelessWidget {
  final String imageUrl;
  const CustomBookItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          placeholder: (context, url) => const CustomCircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
