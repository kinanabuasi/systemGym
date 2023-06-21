// ignore_for_file: annotate_overrides, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, unused_import, unused_local_variable

import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;

  Future<void> onInit() async {
    super.onInit();
    videoPlayerController =
        VideoPlayerController.asset('assets/images/test.mp4');
    await videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}

class VideoSlider extends StatelessWidget {
  final VideoController videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Slider'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Chewie(
                  controller: ChewieController(
                    videoPlayerController:
                        videoController.videoPlayerController,
                    autoPlay: false,
                    looping: true,
                    showControls: true,
                    materialProgressColors: ChewieProgressColors(
                      playedColor: mainColor,
                      // handleColor: Colors.redAccent,
                      // backgroundColor: Colors.grey,
                      // bufferedColor: Colors.lightGreen,
                    ),
                    // customControls: CupertinoControlCenter(
                    //   backgroundColor: Colors.black.withOpacity(0.7),
                    //   barHeight: 50.0, // Set the height of the bottom bar here
                    //   iconColor: Colors.white,
                    //   children: [
                    //     CupertinoButton(
                    //       child: Icon(Icons.play_arrow),
                    //       onPressed: () {
                    //         // Play button logic
                    //       },
                    //     ),
                    //     CupertinoButton(
                    //       child: Icon(Icons.pause),
                    //       onPressed: () {
                    //         // Pause button logic
                    //       },
                    //     ),
                    //     // Add other control icons here
                    //   ],
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPlayerPage extends StatelessWidget {
  final String videoUrl;

  const VideoPlayerPage({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VideoPlayerController.network(videoUrl));
    final chewieController = Get.put(ChewieController(
      videoPlayerController: controller,
      autoPlay: false,
      looping: true,
      showControls: false,
    ));
    final isPlaying = RxBool(false);
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.7),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => IconButton(
                      icon: Icon(
                          isPlaying.value ? Icons.pause : Icons.play_arrow),
                      onPressed: () => isPlaying.toggle(),
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          playedColor: Colors.white,
                          bufferedColor: Colors.white.withOpacity(0.5),
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      '${controller.value.position.toString().split('.').first}/${controller.value.duration.toString().split('.').first}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
