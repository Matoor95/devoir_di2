import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlueAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome back',
                    style: TextStyle(fontSize: 32.0, color: Colors.white)),
                SizedBox(height: 20.0),
                Text('here is some introductory text about the app.',
                    style: TextStyle(fontSize: 18.0, color: Colors.white70)),
                SizedBox(height: 20.0),
                Card(
                  color:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  elevation: 5.0,
                  child: Padding(padding: EdgeInsets.all(16.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Tasks', style: TextStyle(fontSize: 15.0, color: Colors.blue, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0),
                      ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.green,),
                        title:Text('Task 1', style: TextStyle(fontSize: 16.0, color: Colors.black),)

                      ),
                       ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.orange,),
                        title:Text('Task 2', style: TextStyle(fontSize: 16.0, color: Colors.black),)

                      ),
                       ListTile(
                        leading: Icon(Icons.check_circle, color: Colors.red,),
                        title:Text('Task 3', style: TextStyle(fontSize: 16.0, color: Colors.black),)

                      )

                    ],
                  )
                  ),

                ),
                SizedBox(height: 20.0),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Progress', style: TextStyle(fontSize: 15.0, color: Colors.blue, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0),
                            Text('You have completed 70% .', style: TextStyle(fontSize: 16.0, color: Colors.blue),),
                          ],
                        ),
                        CircularProgressIndicator(
                          value: 0.7,
                          backgroundColor: Colors.grey[200],
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                        )
                      ],
                    ),

                  )
    
                ),
                SizedBox(height: 20.0),
                ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: (){},
                 child: Text('View more details', style: TextStyle(color: Colors.deepPurple),),)
              ],
            ),
          ),
        ));
  }
}
