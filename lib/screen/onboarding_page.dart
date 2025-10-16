import 'package:flutter/material.dart';
// import 'package:coffee_shop_mobile_app_design_community_3971357995_f2f/bendis_widget.dart';
// import 'package:coffee_shop_mobile_app_design_community_3971357995_f2f/figma_to_flutter.dart'
//     as f2f;

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    // When the user taps 'Get Started' inside the Widget_421_1221,
    // we navigate to the main part of the app.

    //     }

    // @override
    // void dispose() {
    //   // f2f has no unsubscribe method, so we can't unsubscribe from the event.
    //   // This will lead to a memory leak.
    //   super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            // THE FIX: Use fit: StackFit.expand to make the Stack fill the entire screen.
            fit: StackFit.expand,
            children: [
              // 1. Background Image
              // This image is now the first child of the Stack and is not positioned.
              // It will act as the background layer and fill the available space.
              Image.asset(
                'assets/Coffee-shop/bg.png',
                height: size.height / 1.3,
                // BoxFit.cover ensures the image scales to fill the screen without distortion.
                fit: BoxFit.cover,
                // Aligning to the top center seems to match the design best.
                alignment: Alignment.topCenter,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[900],
                    child: const Center(
                        child: Text('Image Asset Failed to Load',
                            style: TextStyle(color: Colors.white))),
                  );
                },
              ),

              // 2. Content Area with Gradient
              // This is positioned at the bottom and will now correctly
              // render ON TOP of the background image.
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  // The gradient creates the fade-to-black effect over the image.
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.8),
                        Colors.black,
                      ],
                      stops: const [0.0, 0.4, 0.6],
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(30, 80, 30, 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // Crucial for positioning
                    children: [
                      // Title Text
                      const Text(
                        'Fall in Love With\n Coffee in Blissful\n Delight!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Sora',
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Subtitle Text
                      const Text(
                        'Welcome to our cazy caffee corner, where every cup is a delightful for you.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFA9A9A9),
                          fontSize: 16,
                          fontFamily: 'Sora',
                        ),
                      ),
                      const SizedBox(height: 40),

                      // "Get Started" Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC67C4E),
                          minimumSize: const Size(double.infinity, 62),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Sora',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
