import 'package:calculator_by_badar/buttons.dart';
import 'package:calculator_by_badar/screen2.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class MyHomePage extends StatefulWidget {
  static const String id= 'MyHomePage';
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userinput = '';
  var results = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Center(child: Text('Calculator')),
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/badar.jpg'),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: TextButton(onPressed:(){
                      Navigator.pushNamed(context, Screen_2.id);

                    } ,
                        child: const Text('Developed By')

                    )

                ),
              ]
          
          ),
        ],

      ),
       
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(userinput.toString(),style: const TextStyle(
                          color: Colors.white,fontSize: 30
                        ),),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(results.toString(),style: const TextStyle(
                        color: Colors.white,fontSize: 30
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(title: 'C', onPress: (){
                            userinput = '';
                            results= '';
                            setState(() {

                            });
                          },),
                          MyButton(title: '+/-',onPress: (){
                            userinput += '+/-';
                            setState(() {

                            });
                          }),
                          MyButton(title: '%',onPress: (){
                            userinput += '%';
                            setState(() {

                            });
                          }),
                          MyButton(title: '/', onPress: (){
                            userinput += '/';
                            setState(() {

                            });
                          },color: Colors.orange,),
                        ],
                      ),Row(
                        children: [
                          MyButton(title: '7', onPress: (){
                            userinput += '7';
                            setState(() {

                            });
                          },),
                          MyButton(title: '8',onPress: (){
                            userinput += '8';
                            setState(() {

                            });
                          }),
                          MyButton(title: '0',onPress: (){
                            userinput += '0';
                            setState(() {

                            });
                          }),
                          MyButton(title: '*', onPress: (){
                            userinput += '*';
                            setState(() {

                            });
                          },color: Colors.orange,),
                        ],
                      ),Row(
                        children: [
                          MyButton(title: '4', onPress: (){
                            userinput += '4';
                            setState(() {

                            });
                          },),
                          MyButton(title: '5',onPress: (){
                            userinput += '5';
                            setState(() {

                            });
                          }),
                          MyButton(title: '6',onPress: (){
                            userinput += '6';
                            setState(() {

                            });
                          }),
                          MyButton(title: '-', onPress: (){
                            userinput += '-';
                            setState(() {

                            });
                          },color: Colors.orange,),
                        ],
                      ),Row(
                        children: [
                          MyButton(title: '1', onPress: (){
                            userinput += '1';
                            setState(() {

                            });
                          },),
                          MyButton(title: '2',onPress: (){
                            userinput += '2';
                            setState(() {

                            });
                          }),
                          MyButton(title: '3',onPress: (){
                            userinput += '3';
                            setState(() {

                            });
                          }),
                          MyButton(title: '+', onPress: (){
                            userinput += '+';
                            setState(() {

                            });
                          },color: Colors.orange,),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '0', onPress: (){
                            userinput += '0';
                            setState(() {

                            });
                          },),
                          MyButton(title: '.',onPress: (){
                            userinput += '.';
                            setState(() {

                            });
                          }),
                          MyButton(title: 'Dell',onPress: (){
                            userinput = userinput.substring(0, userinput.length -1);
                            setState(() {

                            });

                          }),
                          MyButton(title: '=', onPress: (){
                            equalpress();
                            setState(() {

                            });

                          },color: Colors.orange,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )

      );

  }
  void equalpress(){
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
     double evl = expression.evaluate(EvaluationType.REAL, ContextModel());
      results= evl.toString();
  }
}

