import 'package:flutter/material.dart';
import 'package:spendwise_tracker_app/screens/analysis_page.dart';
import 'package:spendwise_tracker_app/screens/dashboard.dart';
import 'package:spendwise_tracker_app/screens/debt_page.dart';
import 'package:spendwise_tracker_app/screens/expense_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spendise Trcker',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  void _onTabTapped(int index) {
    onTabTapped(index); // Call the onTabTapped function passed as a parameter
  }

  MyHomePage({required this.currentIndex, required this.onTabTapped});

  final List<Widget> _pages = [
    Dashboard(),
    DebtPage(),
    ExpensePage(),
    AnalysisPage(),
  ];

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.white),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.attach_money_outlined, color: Colors.white),
      label: "Debt",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.auto_graph, color: Colors.white),
      label: "Expenses",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.bar_chart, color: Colors.white),
      label: "Analysis",
    ),
  ];

  String _getAppBarTitle(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return 'Home'.toUpperCase();
      case 1:
        return 'Debt'.toUpperCase();
      case 2:
        return 'Expenses'.toUpperCase();
      case 3:
        return 'Analysis'.toUpperCase();
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 0) {
          // Direct back button to switch to the blue screen
          _onTabTapped(0);
          return false; // Prevent default back behavior
        } else {
          return true; // Allow default back behavior (exit app)
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.blue,

          title: Text(_getAppBarTitle(currentIndex),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
          leading:
          currentIndex == 0
              ? null



              : IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => _onTabTapped(0), // Simplified back button press
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {},
              color: Colors.white,
            ),

            PopupMenuButton(
              icon: Icon(Icons.menu,color: Colors.white), // Menu icon
              color: Colors.white,
              onSelected: (value) {
                // Handle menu item selection here
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Option 2'),
                  ),
                ];
              },
            ),
          ],
        ),


        body: IndexedStack(
          index: currentIndex,
          children: _pages,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton( // Moved outside IndexedStack
          backgroundColor:Colors.lightBlueAccent,

          mini: true,
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white, size: 25),
        ),


        bottomNavigationBar: BottomNavigationBar(

          backgroundColor: Colors.blue,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: _bottomNavigationBarItems,
          onTap: (index) {
            onTabTapped(index);
          },
        ),
      ),
    );
  }
}
