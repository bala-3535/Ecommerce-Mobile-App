import 'package:flutter/material.dart';

class ButtonsGrp extends StatefulWidget {
  const ButtonsGrp({super.key});

  @override
  State<ButtonsGrp> createState() => _ButtonsGrpState();
}

class _ButtonsGrpState extends State<ButtonsGrp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.favorite_border),
              label: Text("Favorites", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.history),
              label: Text("History", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.person_add),
              label: Text("Following", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.note),
              label: Text("Add Note", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.favorite),
              label: Text("Favorites", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.favorite),
              label: Text("Favorites", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
            SizedBox(width: 5),
            OutlinedButton.icon(
              onPressed: () {
                // Your action here
              },
              icon: Icon(Icons.favorite),
              label: Text("Favorites", style: TextStyle(color: Colors.black)),

              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                iconColor: WidgetStateProperty.all(Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
