// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyWidget(),
      );
}

class MyWidget extends StatelessWidget {
  final String link =
      "https://img.freepik.com/darmowe-wektory/niebieskie-tlo-z-falistych-linii_1164-771.jpg?w=740&t=st=1687891345~exp=1687891945~hmac=347ed659d5ce9038f5d3a11c2e48db777638ec2d122306baa79e9ae7bf9bf100";

  final Widget koxUI = Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      title: Text("person"),
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 40,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(link),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 100),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        child: Container(
                          color: Colors.grey.shade200,
                          child: Column(children: [
                            SizedBox(height: 70),
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                            koxUI,
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      );
}



// import 'package:flutter/material.dart';
// import 'package:koxui/hidden_drawer.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue,
//         primaryColor: Colors.lightBlue,
//         splashColor: Colors.lightBlue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const Scaffold(
//         body: HiddenDrawer(),
//       ),
//     );
//   }
// }
