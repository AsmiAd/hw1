import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, George',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications, color: Colors.grey),
                    onPressed: () {
                      debugPrint("Notification button clicked");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '\$4,570.80',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add, color: Colors.black, size: 30),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.send, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text('Send', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 150,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(Icons.credit_card, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text('Card', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 150,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.more_horiz, color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text('More', style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.search_outlined, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Search', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          //backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/3135/3135823.png)",
                        ),
                        const SizedBox(height: 4),  
                        const Text('Fandit', style: TextStyle(fontSize: 12)),
                      ],
                    ),const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Mamad', style: TextStyle(fontSize: 12)),
                      ],
                    ),const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Krisha', style: TextStyle(fontSize: 12)),
                      ],
                    ),const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Amisha', style: TextStyle(fontSize: 12)),
                      ],
                    ),const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Amisha', style: TextStyle(fontSize: 12)),
                      ],
                    ),const SizedBox(width: 10),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, color: Colors.black),
                        ),
                        const SizedBox(height: 4),
                        const Text('Amisha', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text(
                'Recent Activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 10),
              ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.shopping_cart, color: Colors.black),
                      ),
                      title: const Text('Amazon Bill'),
                      subtitle: const Text('10 Jan 2023'),
                      trailing: const Text('\$299.0', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.video_call, color: Colors.black),
                      ),
                      title: const Text('TikTok Product'),
                      subtitle: const Text('15 Jan 2023'),
                      trailing: const Text('\$42.99', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.code, color: Colors.black),
                      ),
                      title: const Text('GitHub Premium'),
                      subtitle: const Text('20 Jan 2023'),
                      trailing: const Text('\$378.2', style: TextStyle(fontWeight: FontWeight.bold)),
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
