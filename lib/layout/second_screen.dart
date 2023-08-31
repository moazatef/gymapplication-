import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SecondScreen extends StatelessWidget{
  final controller = PageController(viewportFraction: 0.8, keepPage: true);  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/woman.jpg',
              ),
              fit:BoxFit.cover,
            ),
          ),
          child: Column(
            children:  [

              const Spacer(),
              const Text(
                'TRAINING',
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
              const Padding(
                padding: EdgeInsets.all(15.0),
                child:
                Text(
                  'Training is teaching, or developing in oneself or others,'
                      ' any skills and knowledge or fitness that relate to specific '
                      'useful competencies. Training has specific goals of improving'
                      'ones capability, capacity, productivity and performance.'
                ,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),

              const Spacer(),
              SmoothPageIndicator(
                controller: controller,
                count: 2,
                effect:const SlideEffect (
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
                          backgroundColor: Colors.white.withOpacity(0.0),
                          disabledForegroundColor: Colors.grey.withOpacity(0.38),
                          elevation: 0.0,
                          side: const BorderSide(color: Colors.white,width: 1.0),
                          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        ),
                        child: const Text('Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),),
                    const SizedBox(
                      width: 40.0,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: (){},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.white, disabledForegroundColor: Colors.grey.withOpacity(0.38),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                        ),
                        child: const Text('SignUp',
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
        )
    );
  }



}