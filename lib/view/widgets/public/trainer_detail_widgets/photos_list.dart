// ignore_for_file: unused_import, camel_case_types, must_be_immutable, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/fonts.dart';

class today_Workout_plan_list extends StatelessWidget {
  today_Workout_plan_list({super.key});
  List<Map<String, String>> photos = [
    {
      'url': "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AEo_circle_purple_white_checkmark.svg&psig=AOvVaw0RGl57QK3VWsrHWanEi506&ust=1685207371497000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKi4tJGYl_8CFQAAAAAdAAAAABAE",
      'title': 'Photo 1',
    },
    {
      'url': "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AEo_circle_purple_white_checkmark.svg&psig=AOvVaw0RGl57QK3VWsrHWanEi506&ust=1685207371497000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKi4tJGYl_8CFQAAAAAdAAAAABAE",
      'title': 'Photo 2',
    },
    // Add more photos here...
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // controller.position.move(details.delta.dx * -1);
      },
      child: Container(
         margin: const EdgeInsets.symmetric(vertical: 20.0),
         
         width: double.infinity, // or use a specific width value 
        child: ListView.builder(
          // controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: photos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.network(
                      photos[index]['url']!,
                      height: 104.0,
                      width: 77.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(height: 8.0),
                  Text(
                    photos[index]['title']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: Poppins,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Categories_list extends StatelessWidget {
  Categories_list({super.key});
  List<Map<String, String>> photos = [
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 1',
    },
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 2',
    },
    // Add more photos here...
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // controller.position.move(details.delta.dx * -1);
      },
      child: ListView.builder(
        // controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    photos[index]['url']!,
                    height: 148.0,
                    width: 169.0,
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8.0),
                Text(
                  photos[index]['title']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: Poppins,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Trending_list extends StatelessWidget {
  Trending_list({super.key});
  List<Map<String, String>> photos = [
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 1',
    },
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 2',
    },
    // Add more photos here...
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // controller.position.move(details.delta.dx * -1);
      },
      child: ListView.builder(
        // controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    photos[index]['url']!,
                    height: 148.0,
                    width: 169.0,
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8.0),
                Text(
                  photos[index]['title']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: Poppins,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Discover_list extends StatelessWidget {
  Discover_list({super.key});
  List<Map<String, String>> photos = [
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 1',
    },
    {
      'url': "assets/images/person5.png",
      'title': 'Photo 2',
    },
    // Add more photos here...
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // controller.position.move(details.delta.dx * -1);
      },
      child: ListView.builder(
        // controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    photos[index]['url']!,
                    height: 148.0,
                    width: 169.0,
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8.0),
                Text(
                  photos[index]['title']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: Poppins,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
