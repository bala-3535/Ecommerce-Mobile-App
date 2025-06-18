import 'package:flutter/material.dart';
// import 'package:sample_app/home/notification.dart';

class Compass extends StatelessWidget {
  const Compass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Activity",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 10),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Topbutton("Category", true),
                      Topbutton("Category", false),
                      Topbutton("Category", false),
                      Topbutton("Category", false),
                      Topbutton("Category", false),
                    ],
                  ),
                ),
                CommentInfo(true, "BA", "assets/images/img1.jpg"),
                CommentInfo(false, "BA", "assets/images/img2.jpg"),
                CommentInfo(false, "BA", "assets/images/img3.jpg"),
                CommentInfo(false, "BA", "assets/images/img4.jpg"),
                CommentInfo(true, "BA", "assets/images/img5.jpg"),
                CommentInfo(true, "BA", "assets/images/room1.jpg"),
                CommentInfo(true, "BA", "assets/images/room2.jpg"),
                CommentInfo(false, "BA", "assets/images/room3.jpg"),
                CommentInfo(false, "BA", "assets/images/title1.jpg"),
                CommentInfo(true, "BA", "assets/images/title2.jpg"),
                CommentInfo(true, "BA", "assets/images/title3.jpg"),
                CommentInfo(true, "BA", "assets/images/title4.jpg"),
                CommentInfo(true, "BA", "assets/images/title5.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Topbutton(btnname, bool status) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    child: MaterialButton(
      onPressed: () {},
      color: status ? Colors.black : Colors.grey.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

      child: Text(
        btnname,
        style: TextStyle(
          color: status ? Colors.white : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget CommentInfo(isbool, CA, img) {
  return Container(
    margin: EdgeInsets.only(top: 15, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isbool)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 5,
                width: 5,
              )
            else
              SizedBox(width: 5),

            SizedBox(width: 5),
            Container(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(CA, style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Balachander",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "1d",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Started Following you",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                ),

                // Text("Started Following you",style: TextStyle(color: Colors.grey.shade400,fontSize: 14),),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 70,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage(img), fit: BoxFit.cover),
          ),
        ),
      ],
    ),
  );
}
