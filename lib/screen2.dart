import 'package:calculator_by_badar/home.dart';
import 'package:flutter/material.dart';
class Screen_2 extends StatefulWidget {
  static const String id = 'Screen_2';
  const Screen_2({Key? key}) : super(key: key);

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Developer')),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/badar.jpg'),
              ),
                accountName: Text('Badar'),
                accountEmail: Text('badarkhalil12345@gmail.com')),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Calculator'),
              onTap: (){
                Navigator.pushNamed(context, MyHomePage.id);
              },
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const Text('Developed by \n        Badar khalil...',style: TextStyle(
            color: Colors.teal,
            fontSize: 30,

          ),),
          const SizedBox(
            height: 60,
          ),
          SingleChildScrollView(
            child: Container(

              child: const Image(image: AssetImage('assets/badar.jpg')),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
              child: const Text('<- Back',style: TextStyle(
                fontSize: 25,
              ),))
        ],
      ),
    );
  }
}
