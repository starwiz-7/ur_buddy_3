import 'package:flutter/material.dart';
import 'package:ur_buddy_3/profile/widgets/profile_detail_widget.dart';
import '../../profile/widgets/profile_avatar.dart';

class ProfilePage extends StatelessWidget {
  String name = "Ackwickson";
  String about = "This is the about section of profile page here you can write in brief about yourself";
  String email = "ackwickson169@hotmail.com";
  String hostel = "Boys Hostel 1, BAB114";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        leading: TextButton(
          onPressed: null,
          child: Text(
            "Edit",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Theme.of(context).appBarTheme.iconTheme.color,
              size: 24,
            ),
            onPressed: null,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileAvatar(),
              SizedBox(height: 50),
              ProfileDetailWidget(
                field: "Name",
                value: name,
                icon: Icons.person_outline_outlined,
              ),
              SizedBox(height: 20),
              ProfileDetailWidget(
                field: "About",
                value: about,
                icon: Icons.info_outline,
              ),
              SizedBox(height: 20),
              ProfileDetailWidget(
                field: "Email",
                value: email,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              ProfileDetailWidget(
                  field: "Hostel",
                  value: hostel,
                  icon: Icons.home_work_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
