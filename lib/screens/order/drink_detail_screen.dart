import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DrinkDetailScreen extends StatefulWidget {
  const DrinkDetailScreen({super.key});

  @override
  State<DrinkDetailScreen> createState() => _DrinkDetailScreenState();
}

class _DrinkDetailScreenState extends State<DrinkDetailScreen> {
  int drinkCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Hero(
              tag: "order_details",
              
            child: CachedNetworkImage(
              imageUrl:
                  "https://www.shutterstock.com/image-photo/mojito-sangria-alcoholic-cocktail-drink-600nw-2332681655.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          // Black Overlay for Contrast
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back Button
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  const Spacer(),
                  // Drink Details
                  Text(
                    "Menta Cocktail",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Fresh Drink",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Percentages
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _percentageDetail("15%", "Alcohol"),
                      _percentageDetail("25%", "Fruit"),
                      _percentageDetail("60%", "Water"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Price and Stepper
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _priceDetail("\$8", "Price x Drink"),
                          const SizedBox(height: 10),
                          _priceDetail(
                              "\$${(8 * drinkCount).toStringAsFixed(0)}",
                              "Total Price"),
                        ],
                      ),
                      // Stepper
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (drinkCount > 1) {
                                  setState(() {
                                    drinkCount--;
                                  });
                                }
                              },
                              icon:
                                  const Icon(Icons.remove, color: Colors.white),
                            ),
                            Text(
                              "$drinkCount",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  drinkCount++;
                                });
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  // Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Order",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey.shade300,
                            ),
                          ),
                          Text(
                            "\$${(8 * drinkCount).toStringAsFixed(0)}",
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle payment action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        icon: const Icon(Icons.payment, color: Colors.white),
                        label: Text(
                          "Pay",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _percentageDetail(String percentage, String label) {
    return Column(
      children: [
        Text(
          percentage,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }

  Widget _priceDetail(String price, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          price,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
