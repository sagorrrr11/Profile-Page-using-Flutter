import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101828), // Set background color
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "My Profile" Header
            Center(
              child: Text(
                'My Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Profile Information with Profile Image
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://placekitten.com/200/200'), // Replace with your profile image URL
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ferdous Mondol',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '@mferdous12',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),

            // Post, Following, Followers Sections
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '59',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '125',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '850',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 16),

            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('All Posts'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Streaming'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Saved'),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Image Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 30, // Assuming you have 30 images in your list
                itemBuilder: (context, index) {
                  return Image.network(
                    'https://placekitten.com/200/200', // Replace with your image URLs
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
