import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sutt_task1/home.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 800),
        builder: (BuildContext context, double _val3, Widget? child){
          return Scaffold(
            body: Column(
              children: [
                const SizedBox(height: 300),

              Padding(
                padding: EdgeInsets.only(left: _val3*20),
                child:  Text('Your Response is \nSuccessfully Submitted',style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple[300],
                ),),),

                const SizedBox(height: 40),

                Image.asset(
                  'assets/tick.png',
                  height: 50,
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                    onPressed: (){
                      context.go("/");
                    },
                    child: const Text('Submit another Response',
                    textAlign: TextAlign.center)
                )
              ],
            ),
          );
        }
    );
  }
}