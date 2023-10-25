import 'package:flutter/material.dart';

class MainScene extends StatefulWidget {
  const MainScene({super.key});

  @override
  State<MainScene> createState() => _MainSceneState();
}

class _MainSceneState extends State<MainScene> {
  var loginController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(27),
                          hintText: "login",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        controller: loginController,
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: const Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(27),
                          hintText: "password",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        controller: passwordController,
                      ),
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                  }),
              FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
