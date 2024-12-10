import 'package:flutter/material.dart';
import 'package:hw1/screens/apis/api_photo_sample_screen.dart';
import 'package:hw1/screens/apis/api_sample_screen.dart';
import 'package:hw1/screens/background_image/background_image_screen.dart';
import 'package:hw1/screens/calculator/calculator_screen.dart';
import 'package:hw1/screens/courses/course_screen.dart';
import 'package:hw1/screens/login_form/login_screen.dart';
import 'package:hw1/screens/marksheets/marksheet_screen.dart';
import 'package:hw1/screens/miscellaneous/miscellaneous_screen.dart';
import 'package:hw1/screens/morphism/glassmorphism_screen.dart';
import 'package:hw1/screens/morphism/morphism_screen.dart';
import 'package:hw1/screens/morphism/neumorphism_screen.dart';
import 'package:hw1/screens/on_tap/on_tap_screen.dart';
import 'package:hw1/screens/order/order_app_screen.dart';
import 'package:hw1/screens/page_builder/page_builder_screen.dart';
import 'package:hw1/screens/product_page/product_page_screen.dart';
import 'package:hw1/screens/tabbar/tabbar_screen.dart';
import 'package:hw1/screens/url_launcher/url_launcher_screen.dart';
import '../animation/animation_screen.dart';
import '../grid/grid_screen.dart';
import '../registration_form/register_screen.dart';
import '../state_management/state_mgmt_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              child: const Text("Registration Form"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text("Login"),
            ),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridScreen(),
                  ),
                );
              },
              child: const Text("Grid"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductPageScreen(),
                  ),
                );
              },
              child: const Text("Product Page"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const MarksheetScreen(),
                  ),
                );
              },
              child: const Text("Marksheet"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const ApiSampleScreen(),
                  ),
                );
              },
              child: const Text("Api 1 sample"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const ApiPhotoSampleScreen(),
                  ),
                );
              },
              child: const Text("Api photo"),
            ),
        
            const SizedBox(height: 10),
        
            ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StateMgmtScreen(),
                ),
              );
            },
            child: const Text("State Management with GetX"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnTapScreen(),
                ),
              );
            },
            child: const Text("On Tap"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CalculatorScreen(),
                ),
              );
            },
            child: const Text("Basic Calculator"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MiscellaneousScreen(),
                ),
              );
            },
            child: const Text("Miscellaneous"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabbarScreen(),
                ),
              );
            },
            child: const Text("Tabbar"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AnimationScreen(),
                ),
              );
            },
            child: const Text("Animation"),
          ),
        
          const SizedBox(height: 10),
        
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageBuilderScreen(),
                ),
              );
            },
            child: const Text("Pagebuilder"),
          ),
        
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CourseScreen(),
                ),
              );
            },
            child: const Text("Courses"),
          ),
        
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderAppScreen(),
                ),
              );
            },
            child: const Text("Order App"),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BackgroundImageScreen(),
                ),
              );
            },
            child: const Text("Background Screen"),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UrlLauncherScreen(),
                ),
              );
            },
            child: const Text("Url Launcher"),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MorphismScreen(),
                ),
              );
            },
            child: const Text("Morphism"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  NeumorphismScreen(),
                ),
              );
            },
            child: const Text("Glassmorphism"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GlassmorphismScreen(),
                ),
              );
            },
            child: const Text("Neumorphism"),
          ),


        
        
          ],
        ),
      ),
    );
  }
}

