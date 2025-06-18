import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

int selectedIndex = 1;

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    final List<String> tabs = ["Following", "For you", "Favorites"];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(tabs.length, (index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        // print("clicked");
                      });
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                              color:
                                  isSelected
                                      ? Colors.black
                                      : Colors.grey.shade400,
                            ),
                          ),
                        ),
                        if (isSelected)
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 2,
                            width: 60,
                            color: Colors.black,
                          )
                        else
                          const SizedBox(height: 2, width: 60),
                      ],
                    ),
                  );
                }),
              ),

              Expanded(
                child: IndexedStack(
                  index: selectedIndex,
                  children: [
                    Container(child: Center(child: Text("Following Page"))),
                    ListView(
                      children: [
                        commentBox(
                          "BA",
                          "Balachander A",
                          "3 min ago",
                          "assets/images/title1.jpg",
                          "post description",
                        ),
                        commentBox(
                          "BA",
                          "Balachander A",
                          "3 min ago",
                          "assets/images/title2.jpg",
                          "post description",
                        ),
                        commentBox(
                          "BA",
                          "Balachander A",
                          "3 min ago",
                          "assets/images/title3.jpg",
                          "post description",
                        ),
                        commentBox(
                          "BA",
                          "Balachander A",
                          "3 min ago",
                          "assets/images/title4.jpg",
                          "post description",
                        ),
                        commentBox(
                          "BA",
                          "Balachander A",
                          "3 min ago",
                          "assets/images/title5.jpg",
                          "post description",
                        ),
                      ],
                    ),

                    Container(child: Center(child: Text("Fav Page"))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget commentBox(ca, personName, actTime, img, Postdes) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10, right: 10),
          width: 30,
          height: 30,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              ca,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        SizedBox(width: 5),
        SizedBox(
          width: 300,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Text(
                actTime,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 03,
                  vertical: 3,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage(img), height: 200, width: 350),
                ),
              ),
              Text(
                Postdes,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text(" 21 likes"),
                  SizedBox(width: 20),
                  Icon(Icons.messenger_outline),
                  Text(" 10 comments"),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        Icon(Icons.more_horiz),
      ],
    ),
  );
}
