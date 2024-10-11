import 'package:flutter/material.dart';
import 'package:tvsas/lab_activities.dart';
import 'package:tvsas/learning_approaches.dart';
import 'package:tvsas/meeting_details.dart';
import 'package:tvsas/mind_spark.dart';
import 'package:tvsas/observation_consolidation.dart';
import 'package:tvsas/observation_format.dart';

void main() => runApp(MaterialApp(
  home: homepage(),
));
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: const Color.fromARGB(255, 3, 63, 113),
        title: Text(
            'TTS-DMS',
            style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w700)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>lab_activities())
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Lab Activities and Register Maintenance ',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>learning_approaches()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Learning Approaches',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>meeting_details()),
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Meetings Details',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>mind_spark())
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Mind Spark',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>observation_consolidation())
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Observation Consolidation',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>observation_format())
                      );
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Observation Format',
                          style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
