import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Marks extends StatefulWidget {
  const Marks({super.key});

  @override
  State<Marks> createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();


  int p_marks = 10;
  int c_marks = 10;
  int b_marks = 10;
  int w_marks = 10;
  int e_marks = 10;
  int sum=50;

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

  void increase_e() {
    setState(() {
      e_marks = e_marks<20 ? e_marks+1 : e_marks+0;
    });
  }

  void decrease_e() {
    setState(() {
      e_marks = e_marks>0 ? e_marks-1 : e_marks-0;
    });
  }

  void total() {
    setState(() {
      sum = p_marks+c_marks+b_marks+w_marks+e_marks;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(seconds: 1),
        builder: (BuildContext context, double _val2, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('SUBJECTS 👇',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35
                ),),
              backgroundColor: Colors.greenAccent[200],
              centerTitle: true,
            ),

            body: Opacity(
                opacity: _val2,
                child : Column(
                  children: [
                    Container(
                      color: Colors.grey[350],
                      padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                      child: Row(
                        children: [
                          const Text('Physics : ',style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          Text('$p_marks', style: const TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
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
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.grey[350],
                      padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                      child: Row(
                        children: [
                          const Text('Chemistry : ',style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          Text('$c_marks', style: const TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          const Expanded(child: SizedBox()),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: decrease_c,
                            child: const Text('-',style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: increase_c,
                            child: const Text('+'),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.grey[350],
                        padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                      child: Row(
                        children: [
                          const Text('Biology : ',style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          Text('$b_marks', style: const TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
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
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.grey[350],
                      padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                      child: Row(
                        children: [
                          const Text('Mathematics : ',style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          Text('$w_marks', style: const TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          const Expanded(child: SizedBox()),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
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
                            ),
                            onPressed: increase_w,
                            child: const Text('+'),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      color: Colors.grey[350],
                      padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                      child: Row(
                        children: [
                          const Text('English : ',style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          Text('$e_marks', style: const TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),),
                          const Expanded(child: SizedBox()),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: decrease_e,
                            child: const Text('-',style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: increase_e,
                            child: const Text('+'),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        color: Colors.grey[350],
                        padding: EdgeInsets.fromLTRB(_val2*20, 20, 20, 20),
                        child: FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white
                            ),
                            onPressed: total ,
                            child: const Text('Calculate', style: TextStyle(
                              fontSize: 30,
                            ),)
                        )
                    ),
                    
                    Text('Total Marks : $sum', style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 50
                    ),),

                    const SizedBox(height: 40),

                    Form(
                        key: _key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            cursorColor: Colors.black,
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                            decoration: const InputDecoration(
                                hintText: 'Remarks',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                )
                            ),
                            validator: (String? value) {
                              if(value==null || value.isEmpty) {
                                return 'Please  Enter some text';
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_key.currentState!.validate()) {
                                    context.go("/submit");
                                  }
                                },
                                child: const Text('Submit')
                            ),
                          ),
                        ],
                      )
                    ),
                  ],
                ),)
          );
        });

  }
}