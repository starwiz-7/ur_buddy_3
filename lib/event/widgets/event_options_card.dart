import 'package:flutter/material.dart';
import 'package:ur_buddy_3/event/screens/organise_event.dart';
import 'package:ur_buddy_3/event/widgets/event_option.dart';

class EventOptionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(37, 36, 44, 1),
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          EventOptionTile(
            label: 'Your Events',
            icon: Icons.event_note,
            avatarColor: Color.fromRGBO(255, 111, 90, 1),
            onTap: () {},
          ),
          EventOptionTile(
            label: 'Interested Events',
            icon: Icons.event_available_sharp,
            avatarColor: Color.fromRGBO(112, 300, 248, 1),
            onTap: () {},
          ),
          EventOptionTile(
            label: 'Organise Event',
            icon: Icons.add,
            avatarColor: Color.fromRGBO(255, 165, 0, 1),
            onTap: () => Navigator.of(context).pushNamed(
              OrganiseEvent.routeName,
            ),
          )
        ],
      ),
    );
  }
}
