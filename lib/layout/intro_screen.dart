import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../intro_model.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final _controller = PageController();
  static const list = <IntroModel>[
    IntroModel(
        title: "Supplements",
        description: "this is supplements for power",
        image: AssetImage('images/woman.jpg')),
    IntroModel(
        title: "Supplements porten",
        description: "this is supplements for power",
        image: AssetImage('images/mannn.jpg')),
    IntroModel(
        title: " craeten",
        description: "this is supplements for power",
        image: AssetImage('images/arm.png')),
  ];
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: list.elementAt(_index).image,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: list.length,
              controller: _controller,
              itemBuilder: (context, index) {
                final introModel = list.elementAt(index);
                return Center(
                  child: TitleAndDescriptionWidget(
                      title: introModel.title,
                      description: introModel.description),
                );
              },
              onPageChanged: (value) {
                setState(() {
                  _index = value;
                });
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: list.length,
            effect: const SlideEffect(
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
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.0),
                      disabledForegroundColor: Colors.grey.withOpacity(0.38),
                      elevation: 0.0,
                      side: const BorderSide(color: Colors.white, width: 1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40.0,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      disabledForegroundColor: Colors.grey.withOpacity(0.38),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
            width: 20.0,
          ),
        ],
      ),
    ));
  }
}

class TitleAndDescriptionWidget extends StatelessWidget {
  const TitleAndDescriptionWidget(
      {super.key, required this.title, required this.description});
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: <Shadow>[
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
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
