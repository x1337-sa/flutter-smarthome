import 'package:flutter/material.dart';
import 'package:smarthome3/backyard.dart';
import 'package:smarthome3/garage.dart';
import 'package:smarthome3/livingroom.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Smart home IoT"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "What do you want to \ndo?",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),


          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Living Room Lights'),
                  subtitle: Text(
                    'Floor, 1',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                Image.asset('assets/11.jpg'),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: Colors.green.shade700,
                      onPressed: () {

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return livingRoom();
                            },
                          ),
                        );
                      },
                      child: const Text('Take Action'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Divider(indent: 16),

          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Garage door'),
                  subtitle: Text(
                    'Outside the house',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                Image.asset('assets/2.jpg'),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: Colors.green.shade700,
                      onPressed: () {

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return garage();
                            },
                          ),
                        );
                      },
                      child: const Text('Take Action'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Divider(indent: 16),

          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Backyard Lights'),
                  subtitle: Text(
                    'Outside the house',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),

                Image.asset('assets/3.jpg'),

                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: Colors.green.shade700,
                      onPressed: () {

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return backyard();
                            },
                          ),
                        );
                      },
                      child: const Text('Take Action'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Card(
          //   clipBehavior: Clip.antiAlias,
          //   child: Column(
          //     children: [
          //       ListTile(
          //         leading: Icon(Icons.arrow_drop_down_circle),
          //         title: const Text('Card title 1'),
          //         subtitle: Text(
          //           'Secondary Text',
          //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(16.0),
          //         child: Text(
          //           'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
          //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
          //         ),
          //       ),
          //       ButtonBar(
          //         alignment: MainAxisAlignment.start,
          //         children: [
          //           FlatButton(
          //             textColor: const Color(0xFF6200EE),
          //             onPressed: () {
          //               // Perform some action
          //             },
          //             child: const Text('ACTION 1'),
          //           ),
          //           FlatButton(
          //             textColor: const Color(0xFF6200EE),
          //             onPressed: () {
          //               // Perform some action
          //             },
          //             child: const Text('ACTION 2'),
          //           ),
          //         ],
          //       ),
          //       Image.asset('assets/1.jpg'),
          //       // Image.asset('assets/card-sample-image-2.jpg'),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
