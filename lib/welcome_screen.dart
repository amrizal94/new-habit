import 'package:flutter/material.dart';
import 'package:new_habbit/habbit_screen_list.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 177, 239, 1),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const Column(children: [
                  Text(
                    'Welcome to Growing',
                    style: TextStyle(
                      fontFamily: 'Staatliches',
                      fontSize: 34,
                    ),
                  ),
                  Text(
                    'Become the best version of yourself',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
                Expanded(
                  flex: 2,
                  child: Image.asset('icons/hero.png'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HabbitScreenList();
                          }));
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                MediaQuery.of(context).size.width >= 800
                    ? Expanded(flex: 1, child: Container())
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
