import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Launcher().launch('https://www.google.com', context);
            },
            child: const Text(
              "Go to Google",
            ),
          ),

          const SizedBox(height: 10,),

          ElevatedButton(
            onPressed: () {
              Launcher().launch('https://www.facebook.com', context);
            },
            child: const Text(
              "Go to facebook",
            ),
          ),

          const SizedBox(height: 10,),

          ElevatedButton(
            onPressed: () {
              Launcher().launch('tel:34598356', context);
            },
            child: const Text(
              "Call",
            ),
          ),

          const SizedBox(height: 10,),

          ElevatedButton(
            onPressed: () {
              Launcher().launch('https://www.google.com/maps/@28.2034176,83.984384,14z?entry=ttu&g_ep=EgoyMDI0MTIwMi4wIKXMDSoASAFQAw%3D%3D', context);
            },
            child: const Text(
              "Go to map",
            ),
          ),

          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class Launcher {
  void launch(String url, BuildContext context) async {
    if (await canLaunchUrlString(url)) {
      launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not launch '),
        ),
      );
    }
  }
}
