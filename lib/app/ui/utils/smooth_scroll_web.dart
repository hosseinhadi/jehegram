library smooth_scroll_web;

import 'dart:math' as math;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const int DEFAULT_NORMAL_SCROLL_ANIMATION_LENGTH_MS = 350;
const int DEFAULT_SCROLL_SPEED = 130;

class SmoothScroll extends StatelessWidget {
  ///Same ScrollController as the child widget's.
  final ScrollController controller;

  ///Child scrollable widget.
  final Widget child;

  ///Scroll speed px/scroll.
  final int scrollSpeed;

  ///Scroll animation length in milliseconds.
  final int scrollAnimationLength;

  ///Curve of the animation.
  final Curve curve;

  double _scroll = 0;

  SmoothScroll({
    required this.controller,
    required this.child,
    this.scrollSpeed = DEFAULT_SCROLL_SPEED,
    this.scrollAnimationLength = DEFAULT_NORMAL_SCROLL_ANIMATION_LENGTH_MS,
    this.curve = Curves.ease,
    this.enableScrolling = true,
  });

  double? lastMovedValue;
  Duration? lastMovedTimeStamp;
  double? velocity;
  bool enableScrolling;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      if (controller.position.activity is IdleScrollActivity) {
        _scroll = controller.position.extentBefore;
      }
    });

    return Listener(
      onPointerSignal: (pointerSignal) {
        // print('pointerSignal');
        if (!enableScrolling) return;

        int millis = scrollAnimationLength;
        if (pointerSignal is PointerScrollEvent) {
          if (pointerSignal.scrollDelta.dy > 0) {
            _scroll += scrollSpeed;
          } else {
            _scroll -= scrollSpeed;
          }
          if (_scroll > controller.position.maxScrollExtent) {
            _scroll = controller.position.maxScrollExtent;
            millis = scrollAnimationLength ~/ 2;
          }
          if (_scroll < 0) {
            _scroll = 0;
            millis = scrollAnimationLength ~/ 2;
          }

          controller.animateTo(
            _scroll,
            duration: Duration(milliseconds: millis),
            curve: curve,
          );
        } else if (pointerSignal is PointerMoveEvent) {
          print(pointerSignal.delta);
          print(pointerSignal.timeStamp.inMilliseconds);
        }
      },
      onPointerMove: (pointerSignal) {
        if (!enableScrolling) return;

        // print(pointerSignal.delta);
        // print(pointerSignal.timeStamp.inMilliseconds);
        double dy = pointerSignal.delta.dy;
        Duration dt = pointerSignal.timeStamp -
            (lastMovedTimeStamp ?? Duration(milliseconds: 0));
        velocity = dy / dt.inMilliseconds;
        lastMovedValue = controller.offset - dy;

        if (lastMovedValue! > controller.position.maxScrollExtent) {
          lastMovedValue = controller.position.maxScrollExtent;
        } else if (lastMovedValue! < controller.position.minScrollExtent) {
          lastMovedValue = controller.position.minScrollExtent;
        }
        controller.jumpTo(
          lastMovedValue!,
        );
      },
      onPointerUp: (pointerSignal) {
        if (!enableScrolling) return;

        // print('///////////////canceled');
        // print(pointerSignal.kind);
        // print(pointerSignal.timeStamp.inMilliseconds);
        // print(pointerSignal.timeStamp.inMilliseconds);
        // print(pointerSignal.down);
        // print(velocity);
        try {
          double realvel = 100000000 * velocity!;

          // print('realvel : $realvel');

          double sign = realvel.sign;

          var animateToWhere =
              lastMovedValue! - sign * math.pow(realvel, 2) * math.pow(10, 1);

          // print('animateToWhere Before : $animateToWhere');

          if (animateToWhere > controller.position.maxScrollExtent) {
            animateToWhere = controller.position.maxScrollExtent;
          } else if (animateToWhere < controller.position.minScrollExtent) {
            animateToWhere = controller.position.minScrollExtent;
          }

          var distance = (animateToWhere - lastMovedValue!).abs();

          int durationMilliseconds = (distance * 8 / (realvel.clamp(-10, 10)))
              .ceil()
              .abs()
              .clamp(1, 200);

          // print('maxScrollExtent : ${controller.position.maxScrollExtent}');
          // print('minScrollExtent : ${controller.position.minScrollExtent}');
          // print('animateToWhere : $animateToWhere');
          // print('distance : $distance');
          // print('duration : $durationMilliseconds');
          // print('last Moved Value : $lastMovedValue');

          controller.animateTo(
            animateToWhere,
            duration: Duration(milliseconds: durationMilliseconds),
            curve: Curves.easeOutQuad,
          );

          lastMovedValue = lastMovedTimeStamp = velocity = null;
          // controller.animateTo(offset, duration: duration, curve: curve)
        } catch (e) {}
      },
      child: child,
    );
  }
}
