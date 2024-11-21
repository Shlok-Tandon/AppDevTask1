import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      builder: (BuildContext context, double _val, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w300
              ),
            ),
            backgroundColor: Colors.purple[900],
          ),
          body: Opacity(
            opacity: _val,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: _val*20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: _val*10),
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Total Marks Calculator',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.75),
                          offset: const Offset(2, 3),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  children: [
                    Image.asset(
                      'assets/calculator.png',
                      height: 200,
                      filterQuality: FilterQuality.high,
                    ),
                    const Expanded(child: SizedBox()),
                    FilledButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.tealAccent[200],
                        shape: const OvalBorder(side: BorderSide(
                          color: Colors.black,
                          width: 2,
                        )
                        ),
                      ),
                      child: const Text(
                        'LETs \nCALCULATE !!',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        context.go("/marks");
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    'assets/suttlogobig.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
