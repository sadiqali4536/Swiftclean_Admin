// File: lib/MVVM/utils/notification.dart

import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final int count;

  const NotificationBadge({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(icon, color: const Color.fromARGB(255, 92, 92, 92),size: 30,),
          onPressed: onTap,
        ),
        if (count > 0)
          Positioned(
            bottom: 19,
            right: 5,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(
                minWidth: 15,
                minHeight: 15,
              ),
              child: Center(
                child: Text(
                  '$count',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
