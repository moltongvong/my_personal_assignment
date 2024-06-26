import 'package:flutter/material.dart';
class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Flutter is a cross-platform UI"
              " toolkit that is designed to allow code"
              " reuse across operating systems such as iOS and Android,"
              " while also allowing applications to interface directly with underlying platform services.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black.withOpacity(0.7),

            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
                "Course Length: ",
                style:TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ) ,
              ),

              Icon(
                Icons.timer,
                color: Color(0xFF674AEF),
              ),
              SizedBox(width: 5,),
              Text(
                "26 Hours",
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ) ,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Rating:",
                style:TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ) ,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(width: 5,),
              Text(
                "4.5",
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ) ,
              ),
            ],
          )

        ],
      ),
    );
  }
}
