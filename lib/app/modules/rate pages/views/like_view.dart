import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

import '../controllers/like_controller.dart';

class LikeView extends GetView<LikeController> {
  const LikeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Like Unlike')),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LikeButton(
            likeCount: 27,
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
                color: isLiked ? Colors.red : Colors.grey,
              );
            },
          ),
        ],
      )),
    );
  }
}
