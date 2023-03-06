import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

import '../controllers/rate_controller.dart';

class RatingView extends GetView<RateController> {
  const RatingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Like Unlike')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          likeButtonView(),
          SizedBox(
            height: 30,
          ),
          RatingBar.builder(
            initialRating: 2,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      )),
    );
  }

  Row likeButtonView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LikeButton(
          likeCount: controller.getStorage.read("likeCount") ?? 0,
          likeBuilder: (isLiked) {
            return Icon(
              Icons.thumb_up,
              color: isLiked ? Colors.blue : Colors.grey,
            );
          },
        ),
        SizedBox(
          width: 30,
        ),
        LikeButton(
          likeCount: 4,
          likeBuilder: (isLiked) {
            return Icon(
              Icons.thumb_down,
              color: isLiked ? Colors.blue : Colors.grey,
            );
          },
          countBuilder: (likeCount, isLiked, text) {
            return Text(
              likeCount == 0 ? "" : text,
              style: TextStyle(
                color: isLiked ? Colors.blue : Colors.grey,
              ),
            );
          },
          onTap: (isLiked) {
            return controller.saveLikeCount(isLiked);
          },
          isLiked: controller.getStorage.read("isLiked") ?? false,
        ),
      ],
    );
  }
}
