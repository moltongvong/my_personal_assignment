import 'package:elearning_app/widgets/description_section.dart';
import 'package:elearning_app/widgets/video_section.dart';
import 'package:flutter/material.dart';
class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection= true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
            widget.img,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,

            ),
        ),
        actions: [
          Padding(padding:EdgeInsets.only(right:10),
            child: Icon(
              Icons.notifications,
              size: 28,
                color: Color(0xFF674AEF),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("images/${widget.img}.png"),

                )
              ),
              child:Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xFF674AEF),
                    size: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text("${widget.img} Complete Course",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
            ),
            SizedBox(height: 5),
            Text(
              "55 Videos",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // if video section is true
                    color: isVideoSection ? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        //change value of  isVideosSection
                        setState(() {
                          isVideoSection=true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(

                    color: isVideoSection? Color(0xFF674AEF).withOpacity(0.6): Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection=false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Desciption",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // we will create two difference section for video section and description
            SizedBox(height: 10,),
            // if isVideoSection condition is true then VideoSection will be shown and if
            // condition is false it means DescriptionSection will be shown
            isVideoSection? VideoSection(): DescriptionSection(),


          ],
        ),
      )
    );
  }
}

