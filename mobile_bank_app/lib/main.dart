import 'package:flutter/material.dart';

import 'package:flutter/services.dart'
    show DeviceOrientation, SystemChrome, SystemUiMode;
import 'package:mobile_bank_app/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildItem(
      {required IconData iconData, required String label}) {
    const double iconSize = 30;

    return BottomNavigationBarItem(
      icon: Icon(
        iconData,
        size: iconSize,
        color: Colors.black26,
      ),
      activeIcon: Icon(
        iconData,
        size: iconSize,
        color: Colors.blue,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 125,
        child: BottomNavigationBar(
          elevation: 0,
          showUnselectedLabels: true,
          backgroundColor: const Color(0xFFF7F9FC),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            _buildItem(
              iconData: Icons.home,
              label: 'Home',
            ),
            _buildItem(
              iconData: Icons.credit_card,
              label: 'Cards',
            ),
            _buildItem(
              iconData: Icons.map_outlined,
              label: 'Map',
            ),
            _buildItem(
              iconData: Icons.person_outline,
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
