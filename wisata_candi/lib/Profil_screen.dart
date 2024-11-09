import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = "";
  String username = "";
  String Love = '';
  int favouriteCandiCount = 0;

  // TODO : 5. Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // TODO : 6. Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // TODO: 2. Buat bagian ProfileHeader yang berisi gambar profil
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  padding: const EdgeInsets.all(6), // Ruang sekitar avatar
                  decoration: BoxDecoration(
                    color: Colors.deepPurple, // Background ungu
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/placeholder_image.png'),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // TODO: 3. Buat bagian profileInfo yang berisi info profil
            Divider(color: Colors.deepPurple[100]),
            SizedBox(height: 4),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.amber),
                      SizedBox(width: 8),
                      Text(
                        'Pengguna',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    ': $username',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),
            Divider(color: Colors.deepPurple[100]),
            SizedBox(height: 4),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Nama',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    ': $fullName',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),
            Divider(color: Colors.deepPurple[100]),
            SizedBox(height: 4),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        'Favorit',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    ': $Love',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                if (isSignedIn) Icon(Icons.edit),
              ],
            ),

            // TODO: 4. Buat ProfilActions yang berisi TextButton sign in/out
            SizedBox(height: 4),
            Divider(color: Colors.deepPurple[100]),
            SizedBox(height: 20),

            isSignedIn
                ? TextButton(onPressed: signOut, child: Text("Sign Out"))
                : TextButton(onPressed: signIn, child: Text('Sign in')),
          ],
        ),
      ),
    );
  }
}
