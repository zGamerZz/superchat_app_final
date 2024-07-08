import 'package:chatter/pages/calls_page.dart';
import 'package:chatter/pages/contacts_page.dart';
import 'package:chatter/pages/messages_page.dart';
import 'package:chatter/pages/notification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final pages = const [
    MessagesPage(),
    NotificationPage(),
    CallsPage(),
    ContactsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex.value],
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelceted: (index) {
          print(index);
        },
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({Key? key, required this.onItemSelceted})
      : super(key: key);

  final ValueChanged<int> onItemSelceted;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(
            index: 0,
            lable: 'Messages',
            icon: CupertinoIcons.bubble_left_bubble_right_fill,
            onTap: onItemSelceted,
          ),
          _NavigationBarItem(
            index: 1,
            lable: 'Notifications',
            icon: CupertinoIcons.bell_solid,
            onTap: onItemSelceted,
          ),
          _NavigationBarItem(
            index: 2,
            lable: 'Calls',
            icon: CupertinoIcons.phone_fill,
            onTap: onItemSelceted,
          ),
          _NavigationBarItem(
            index: 3,
            lable: 'Contacts',
            icon: CupertinoIcons.person_2_fill,
            onTap: onItemSelceted,
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.lable,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String lable;
  final IconData icon;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(height: 8),
            Text(lable, style: const TextStyle(fontSize: 11)),
          ],
        ),
      ),
    );
  }
}
