import 'package:flutter/material.dart';
import 'package:sample_app/home/home_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop(
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Icon(Icons.arrow_back_ios),
                      ),

                      SizedBox(
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            "BA",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Balachander A",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Active 11m ago",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.local_phone_outlined, size: 30),
                      SizedBox(width: 15),
                      Icon(Icons.videocam_outlined, size: 30),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SafeArea(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            _textMessageRight("okay"),
                            _textMessageRight("no worrys"),
                            _textMessageRight(
                              "A concise message, also known as a short and simple statement, ",
                            ),
                            _textMessageLeft("hmmm"),
                            _textMessageLeft("i think i get it"),
                            _textMessageLeft(
                              "will head to the help center if i have more questions on ",
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIconColor: Colors.grey.shade600,
                          hintText: "Message...",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.message),
                              SizedBox(width: 10),
                              Icon(Icons.emoji_emotions_outlined),
                              SizedBox(width: 10),
                              Icon(Icons.image_outlined),
                              SizedBox(width: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
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

Widget _textMessageLeft(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15, right: 10),
          width: 30,
          height: 30,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              'BA',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        SizedBox(
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(text),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _textMessageRight(String text) {
  return Align(
    alignment: Alignment.centerRight,
    child: SizedBox(
      width: 280,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ),
  );
}
