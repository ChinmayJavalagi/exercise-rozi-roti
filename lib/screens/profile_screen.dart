import "package:flutter/material.dart";

import '../components/profite_settings_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 4; // Index for the Profile screen

    void _onItemTapped(int index) {
      // Handle navigation to different screens here
      // You can use if-else or switch-case for different index values
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Profile"),
                  Icon(Icons.menu),
                ],
              ),
            ),
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("images/Chinmay.jpg"),
            ),
            Text(
              "Chinmay Javalagi",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontFamily: "DMSans",
              ),
            ),
            Text(
              "+91 8431309851",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
                fontFamily:"DMSans",
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.brown.shade200,
              ),
            ),
            SettingsTile(fieldName: 'Edit Profile', iconData: Icons.edit, ),
            SettingsTile(fieldName: 'Address', iconData: Icons.location_on, ),
            SettingsTile(fieldName: 'Notification', iconData: Icons.notifications, ),
            SettingsTile(fieldName: 'Payment', iconData: Icons.wallet, ),
            SettingsTile(fieldName: 'Security', iconData: Icons.security, ),
            SettingsTile(fieldName: 'Language', iconData: Icons.language, ),
            SettingsTile(fieldName: 'Dark Mode', iconData: Icons.edit, ),
            SettingsTile(fieldName: 'Privacy Policy', iconData: Icons.lock, ),
            SettingsTile(fieldName: 'Help Center', iconData: Icons.help, ),
            SettingsTile(fieldName: 'Invite Friends', iconData: Icons.people, ),
            SettingsTile(fieldName: 'Logout', iconData: Icons.logout, ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
