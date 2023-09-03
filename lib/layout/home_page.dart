import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedtindex = 0;

  void _onitemtapped(int index) {
    setState(() {
      _selectedtindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          ' Store',
          style: TextStyle(
              fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.person,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.notification_add,
            color: Colors.black,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/woman2.png'),
                      fit: BoxFit.cover),
                ),
                child: const Text(
                  'Training Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/build-your-own-body.jpg'),
                      fit: BoxFit.cover),
                ),
                child: const Text(
                  'Meal Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/person-surrounded.png'),
                      fit: BoxFit.cover),
                ),
                child: const Text(
                  'Supplememnts Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/afroamerican-boxer-.png'),
                      fit: BoxFit.cover),
                ),
                child: const Text(
                  'Supplememnts Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/arm.png'), fit: BoxFit.cover),
                ),
                child: const Text(
                  'Supplememnts Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 170.0,
                alignment: Alignment.bottomLeft,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15.0),
                  image: const DecorationImage(
                      image: AssetImage('images/mannn.jpg'), fit: BoxFit.cover),
                ),
                child: const Text(
                  'Supplememnts Plan',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.sports_gymnastics,
            ),
            label: "Plane",
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.sports_esports,
            ),
            label: "Store",
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.local_grocery_store,
              size: 30.0,
            ),
            label: "Store",
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.no_meals),
            label: "Plane Meal ",
            backgroundColor: Colors.pink[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.sports_soccer_outlined),
            label: "Store",
            backgroundColor: Colors.pink[100],
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedtindex,
        selectedItemColor: Colors.white,
        iconSize: 20.0,
        onTap: _onitemtapped,
        elevation: 5,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
