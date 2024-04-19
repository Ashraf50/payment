import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const Positioned(
                top: -40,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xffd9d9d9),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                right: -20,
                bottom: MediaQuery.sizeOf(context).height * .2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
