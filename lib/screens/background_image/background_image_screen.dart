import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundImageScreen extends StatelessWidget {
  const BackgroundImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), 
                BlendMode.darken,  
              ),
              child: CachedNetworkImage(
                imageUrl:
                    "https://t3.ftcdn.net/jpg/05/51/95/14/360_F_551951439_oQ55ZSW2HYoiDgL20awm4lRQFPD1njx8.jpg", 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(58.0),
                  child: Text(
                    "Venture into the Cosmos",
                    style: GoogleFonts.poppins(
                      fontSize: 40,  // Larger font size for prominence
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.5,
                      color: Colors.white, // Bright white text to stand out
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ],  // Adding shadow to make the text stand out more on the background
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.star, color: Colors.white), // Star icon for cosmic theme
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.flight_takeoff, color: Colors.white), // Rocket icon for adventure theme
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.nights_stay, color: Colors.white), // Night sky icon to complement the theme
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.radio, color: Colors.white), // Icon resembling radio waves or signals in space
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromARGB(255, 231, 108, 253), Colors.indigo],
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      "Explore the Unknown",
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        color: Colors.white, // White text for better readability
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            offset: const Offset(2, 2),
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ], // Adding shadow effect for the text to pop more
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
