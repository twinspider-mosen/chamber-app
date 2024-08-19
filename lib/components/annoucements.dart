import 'package:chamber_app/Utils/constants.dart';
import 'package:flutter/material.dart';

class AnnoucementCard extends StatelessWidget {
  final String title, subtitle;
  const AnnoucementCard(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(32)),
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade100,
              child: Icon(
                Icons.celebration,
                color: mainColor,
                size: 36,
              ),
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              maxLines: 2,
              subtitle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
