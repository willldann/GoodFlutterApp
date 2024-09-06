import 'package:flutter/material.dart';
import 'package:remedialflutter/page2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration:const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40), 
                bottomRight: Radius.circular(40), 
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    'Complete your\n grocery need\n easily',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));         
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Get Started',style: TextStyle(color: Colors.white),),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward,color: Colors.white,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
