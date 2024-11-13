import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Vegetable> vegetables = [
      Vegetable(
        name: "Tomato",
        color: "Red",
        price: 15,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),
      Vegetable(
        name: "Carrot",
        color: "Orange",
        price: 120,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),
      Vegetable(
        name: "Spinach",
        color: "Green",
        price: 200,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),
      Vegetable(
        name: "Potato",
        color: "Brown",
        price: 80,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),
      Vegetable(
        name: "Cabbage",
        color: "Green",
        price: 50,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),
      Vegetable(
        name: "Cauliflower",
        color: "Green",
        price: 100,
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",
      ),  
      Vegetable(
        name: "Ginger", 
        color: "Brown", 
        price: 70, 
        image: "https://onlinetarkaripasal.com/wp-content/uploads/2021/05/Buy-Carrot-Online-in-Nepal-.jpg",),  
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetables Grid"),
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: vegetables.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          Vegetable vegetable = vegetables[index];

          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Banner(
              location: BannerLocation.topStart,
              message: "50% OFF", 
              color: Colors.red,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.2,
                  ),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const SizedBox(height: 6),

                    CircleAvatar(
                      radius: 20,
                      backgroundImage: CachedNetworkImageProvider(
                        vegetable.image,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      vegetable.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      vegetable.color,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Price: Rs ${vegetable.price}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Vegetable {
  final String name;
  final String color;
  final double price;
  final String image;

  Vegetable({
    required this.name,
    required this.color,
    required this.price,
    required this.image,
  });
}

