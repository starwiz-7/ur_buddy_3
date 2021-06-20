import 'package:flutter/material.dart';

class EventOptionTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  final Color avatarColor;

  const EventOptionTile({
    @required this.label,
    @required this.icon,
    this.onTap,
    @required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: avatarColor,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
      ),
      trailing: Icon(
        Icons.chevron_right_sharp,
        color: Theme.of(context).accentColor,
        size: 30,
      ),
    );
  }
}
