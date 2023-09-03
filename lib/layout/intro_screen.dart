import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../intro_model.dart';
import 'home_page.dart';

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
        description:
            "Pre-workout supplements are designed to provide energy and aid endurance throughout a workout. They are typically taken 15-30 minutes before a workout,"
            " but can also be consumed during exercise. Below are common ingredients found in "
            "pre-workout supplements that the Academy of Nutrition and Dietetics, Dietitians of Canada, "
            "and the American College of Sports Medicine have highlighted as having evidence",
        image: AssetImage('images/woman.jpg')),
    IntroModel(
        title: " Creatine Supplement",
        description:
            "Creatine is a naturally occurring compound found in skeletal muscle "
            "that is synthesized in the body from amino acids and can be obtained from red meat and seafood. "
            "In the body, it helps produce adenosine triphosphate (ATP), which provides energy for muscles. Creatine is a popular workout supplement marketed to increase athletic performance, especially for weight training."
            " Research suggests that creatine supplementation increases muscle availability of creatine",
        image: AssetImage('images/mannn.jpg')),
    IntroModel(
        title: " Post-Workout Supplements",
        description:
            "A variety of post-workout supplements are marketed to consumers to increase muscle mass through enhanced muscle repair, recovery, and growth."
            " Below is a review of some of the most common ingredients in post-workout supplements",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Skip",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                _navigateToNextScreen(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 200.0,
        ),
        Text(
          title,
          style: const TextStyle(
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
          padding: const EdgeInsets.all(15.0),
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

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const HomePage()));
}
