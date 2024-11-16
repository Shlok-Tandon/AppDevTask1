import 'package:flutter/material.dart';

class CGPA extends StatefulWidget {
  const CGPA({super.key});

  @override
  State<CGPA> createState() => _CGPAState();
}

class _CGPAState extends State<CGPA> {

  int p_marks = 10;
  int c_marks = 10;
  int b_marks = 10;
  int w_marks = 10;

  void increase_p() {
    setState(() {
     p_marks = p_marks<20 ? p_marks+1 : p_marks+0;
    });
  }

  void decrease_p() {
    setState(() {
      p_marks = p_marks>0 ? p_marks-1 : p_marks-0;
    });
  }

  void increase_c() {
    setState(() {
      c_marks = c_marks<20 ? c_marks+1 : c_marks+0;
    });
  }

  void decrease_c() {
    setState(() {
      c_marks = c_marks>0 ? c_marks-1 : c_marks-0;
    });
  }

  void increase_b() {
    setState(() {
      b_marks = b_marks<20 ? b_marks+1 : b_marks+0;
    });
  }

  void decrease_b() {
    setState(() {
      b_marks = b_marks>0 ? b_marks-1 : b_marks-0;
    });
  }

  void increase_w() {
    setState(() {
      w_marks = w_marks<20 ? w_marks+1 : w_marks+0;
    });
  }

  void decrease_w() {
    setState(() {
      w_marks = w_marks>0 ? w_marks-1 : w_marks-0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          children: [
             const Text('Physics Lab : ', style: TextStyle(
              fontSize: 20
            ),),
            Text('$p_marks', style: const TextStyle(
              fontSize: 20
            ),),
             const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: decrease_p,
              child: const Text('-',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: increase_p,
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            const Text('Chemistry Lab : ', style: TextStyle(
                fontSize: 20
            ),),
            Text('$c_marks', style: const TextStyle(
                fontSize: 20
            ),),
            const Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: decrease_c,
              child: const Text('-',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: increase_c,
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            const Text('Biology Lab : ', style: TextStyle(
                fontSize: 20
            ),),
            Text('$b_marks', style: const TextStyle(
                fontSize: 20
            ),),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: decrease_b,
              child: const Text('-',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              onPressed: increase_b,
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            const Text('Workshop Practice : ', style: TextStyle(
                fontSize: 20
            ),),
            Text('$w_marks', style: const TextStyle(
                fontSize: 20
            ),),
            const Expanded(child: SizedBox()),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 3,
                  )
              ),
              onPressed: decrease_w,
              child: const Text('-',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: const BorderSide(
                  color: Colors.black,
                  width: 3,
                )
              ),
              onPressed: increase_w,
              child: const Text('+'),
            )
          ],
        )
      ],
    );

  }
}