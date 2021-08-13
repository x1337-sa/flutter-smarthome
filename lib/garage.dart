import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:smarthome3/model/raduis.dart';

class garage extends StatelessWidget {
  const garage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Garage door"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0,left: 20),
            child: Text(
              // "Where are you \ngoing?",
              "You can close or open the garage from this page",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          SizedBox(height: 10,),

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

                //SizedBox(height: 10,),

                Image.asset('assets/2.jpg'),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: LiteRollingSwitch(
                      value: true,
                      textOn: 'ON',
                      textOff: 'OFF',
                      colorOn: Colors.green[400],
                      colorOff: Colors.red[400],
                      iconOn: Icons.check,
                      iconOff: Icons.power_settings_new,
                      animationDuration: Duration(milliseconds: 800),
                      onChanged: (bool state) {
                        //RedisMQ().main();
                        Redis1().door();
                        print('turned ${(state) ? 'yes' : 'no'}');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
