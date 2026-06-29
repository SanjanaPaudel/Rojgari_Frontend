import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 25),

              // LOGO (R + TEXT)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo_r.png", height: 60),
                  const SizedBox(width: 10),
                  Image.asset("assets/images/logo_text.png", height: 40),
                ],
              ),

              const SizedBox(height: 15),

              Container(
                width: 45,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                "Connecting skilled hands\nwith every home",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),

              const SizedBox(height: 25),

              // IMAGE SECTION
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/bg.png"),
                  Image.asset("assets/images/illustration.png", height: 280),
                ],
              ),

              const SizedBox(height: 10),

              // BOTTOM WHITE CONTAINER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [

                    const Text(
                      "Welcome to Rojgari",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [

                        // CUSTOMER CARD
                        Expanded(
                          child: Container(
                            height: 220,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF3EEFF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.person, size: 40),
                                SizedBox(height: 10),
                                Text("Customer"),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // TECHNICIAN CARD
                        Expanded(
                          child: Container(
                            height: 220,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF3EA),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.work, size: 40),
                                SizedBox(height: 10),
                                Text("Technician"),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}