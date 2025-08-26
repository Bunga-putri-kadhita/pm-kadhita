import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        title: const Text("Profile"),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // kembali ke homepage
          },
        ),
      ),
      body: Column(
        children: [
          // Header Profile
          Container(
            width: double.infinity,
            color: Colors.pink.shade200,
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purpleAccent,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                SizedBox(height: 12),
                Text(
                  "Kadhita",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "kadhita@example.com",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),

          // List Menu
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                buildMenuItem(
                  icon: Icons.account_circle,
                  title: "Account",
                  subtitle: "Edit your personal information",
                  onTap: () {},
                ),
                buildMenuItem(
                  icon: Icons.settings,
                  title: "Settings",
                  subtitle: "Privacy, security, language",
                  onTap: () {},
                ),
                buildMenuItem(
                  icon: Icons.notifications,
                  title: "Notifications",
                  subtitle: "Manage push notifications",
                  onTap: () {},
                ),
                buildMenuItem(
                  icon: Icons.help,
                  title: "Help & Support",
                  subtitle: "FAQ and customer service",
                  onTap: () {},
                ),
                buildMenuItem(
                  icon: Icons.logout,
                  title: "Logout",
                  subtitle: "Sign out of your account",
                  onTap: () {
                    // Contoh: logout -> balik ke login page
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  isLogout: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget helper untuk menu
  Widget buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: isLogout ? Colors.red : Colors.pink),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isLogout ? Colors.red : Colors.black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: isLogout ? Colors.red.shade300 : Colors.black54,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
