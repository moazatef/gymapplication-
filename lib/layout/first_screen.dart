// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class FirstScreen extends StatelessWidget{
  final controller = PageController(viewportFraction: 0.8, keepPage: true);  FirstScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        2, (index) =>
    )

    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/man1.png',
            ),
            fit:BoxFit.cover,
          ),
        ),
        child: Column(
          children:  [

            Spacer(),
            Text(
              'SUPPLEMENTS',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan,
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(128, 128, 128, 128),
                  ),
                  Shadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(128, 128, 128, 128),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child:
                Text(
                '   Pre-workout supplements, which are powdered and mixed with water, '
                    'are said to improve athletic performance and energy levels'
                    'Fitness gurus and blogs touting these products as crucial '
                    'for peak performance, fat loss,',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),

                Spacer(),
            SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect:SlideEffect (
              dotColor: Colors.grey,
                activeDotColor: Colors.white,
                dotHeight: 9.0,
                dotWidth: 9.0,
              ),
            ),
                 Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        onSurface: Colors.grey,
                        elevation: 5.0,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                        child: Text('Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.cyan,
                          ),
                        ),
                    ),),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.cyan,
                        onSurface: Colors.grey,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                      ),
                      child: Text('SignUp',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
                 SizedBox(
              height: 40.0,
              width: 20.0,
            ),
          ],
        ),
      ),
    );
  }




}