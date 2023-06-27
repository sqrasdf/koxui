import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Widget koxUI = const Padding(
    padding: EdgeInsets.all(8.0),
    child: ListTile(
      title: Text("person"),
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 40,
      ),
    ),
  );

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg2.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 120,
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Text(
                            "Chats",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        child: Container(
                          color: Colors.grey.shade200,
                          child: Column(children: [
                            const SizedBox(height: 70),
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
              ),
            ]),
          ],
        ),
      );
}
