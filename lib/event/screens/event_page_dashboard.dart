import 'package:flutter/material.dart';
import 'package:ur_buddy_3/event/widgets/event_card.dart';
import 'package:ur_buddy_3/event/widgets/event_options_card.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class EventPageDashboard extends StatefulWidget {
  @override
  _EventPageDashboardState createState() => _EventPageDashboardState();
}

class _EventPageDashboardState extends State<EventPageDashboard> {
  SwiperController _pageViewController = SwiperController();
  int _index = 0;

  String greetingsGenerator() {
    final hour = DateTime.now().hour;
    if (hour >= 4 && hour < 12) {
      return "Good Morning";
    } else if (hour >= 12 && hour < 17) {
      return "Good Afternoon";
    } else if (hour >= 17 && hour < 23) {
      return "Good Evening";
    } else {
      return "Go Sleep";
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(greetingsGenerator(),
                      style: theme.appBarTheme.titleTextStyle),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      size: 30,
                      color: theme.appBarTheme.titleTextStyle.color,
                    ),
                    onPressed: null,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 200,
              width: width < 600 ? width : 500,
              child: EventOptionsCard(),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text("Events", style: theme.appBarTheme.titleTextStyle),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 375,
              child: new Swiper(
                autoplay: true,
                controller: _pageViewController,
                onIndexChanged: (index) {
                  setState(() {
                    _index = index;
                  });
                },
                outer: true,
                duration: 200,
                itemBuilder: (BuildContext context, int index) {
                  return EventCard();
                },
                itemCount: 10,
                viewportFraction: 0.6,
                scale: 0.9,
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              "${_index + 1} of 10",
              style: TextStyle(color: Colors.white),
            )),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
