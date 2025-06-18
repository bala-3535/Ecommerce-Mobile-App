import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
           child:    Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img1.jpg"),
                  ),
                ),
            SizedBox(
              height: 5,
            ),
               Text("Title")
              ],
            ),
            ),SizedBox(
              width: 20,
            ),
            Container(
           child:    Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img2.jpg"),
                  ),
                ),
            SizedBox(
              height: 20,
            ),
               Text("Title")
              ],
            ),
            ),SizedBox(
              width: 5,
            ),
            Container(
           child:    Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img3.jpg"),
                  ),
                ),
            SizedBox(
              height: 20,
            ),
               Text("Title")
              ],
            ),
            ),SizedBox(
              width: 5,
            ),
            Container(
           child:    Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img4.jpg"),
                  ),
                ),
            SizedBox(
              height: 20,
            ),
               Text("Title")
              ],
            ),
            ),SizedBox(
              width: 5,
            ),
            Container(
           child:    Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img5.jpg"),
                  ),
                ),
            SizedBox(
              height: 20,
            ),
               Text("Title")
              ],
            ),
            ),SizedBox(
              width: 5,
            ),
           
          ],
        ),
      ),
    );
  }
}
