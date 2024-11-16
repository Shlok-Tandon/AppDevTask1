import 'package:flutter/material.dart';
import 'package:sutt_task1/cgpa.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar : AppBar(
        title : const Text('SUTT Task 1 ╰(*°▽°*)╯' , style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        backgroundColor : Colors.lightBlue[500],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.purpleAccent[200],
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: const Text('Welcome to My App', style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline
            )),

          ),

          Container(
            color: Colors.brown[400],
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('LAB MARKS 👇', style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(0.75), // Shadow color
                  offset: Offset(2, 3), // Position of the shadow
                  blurRadius: 8, // Blur effect of the shadow
                ),
              ],
            ),),
          ),
          Container(
            color: Colors.grey[400],
            padding: const EdgeInsets.all(20),
            child: const CGPA(),
          ),

          Expanded(
              child: Image.asset('assets/suttlogobig.png',
              fit: BoxFit.fitHeight,)
          ),
        ],
      )

    ) ;


  }
}