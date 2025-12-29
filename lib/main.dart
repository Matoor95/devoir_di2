import 'package:devoir_di2/pages/home.dart';
import 'package:devoir_di2/pages/profile.dart';
import 'package:devoir_di2/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _selectedIndex=0;
 final List<Widget> _pages=[
  HomePage(),
  Profile(),
  Setting()

 ];
 void _onTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
 }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:'Setting'
          ),
        ]
        ),
    );
  }
}
