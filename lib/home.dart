import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portifolio_app/about.dart';
import 'package:portifolio_app/project.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget myAchievement(String number, String type) {
      return Row(
        children: [
          Text(
            number,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              type,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      );
    }

    Widget mySpec(IconData icon, String name) {
      return Container(
        width: 100,
        height: 100,
        child: Card(
          color: Colors.grey[900],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget rowSpec({
      required IconData icon1,
      required String name1,
      required IconData icon2,
      required String name2,
      required IconData icon3,
      required String name3,
    }) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          mySpec(icon1, name1),
          mySpec(icon2, name2),
          mySpec(icon3, name3),
        ],
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
          icon: Icon(Icons.menu),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 1,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ProjectPage(),
                    //     ));
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ProjectPage();
                        },
                      ),
                    );
                  },
                  child: Text('Project'),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return AboutPage();
                      },
                    ));
                  },
                  child: Text('About'),
                ),
              ),
            ];
          },
        ),
      ),
      body: SlidingSheet(
        elevation: 0,
        cornerRadius: 30,
        snapSpec: SnapSpec(
          snap: true,
          snappings: [0.4, 1.0],
          positioning: SnapPositioning.relativeToSheetHeight,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/me update.png'),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    myAchievement('80', 'Projects'),
                    SizedBox(
                      width: 20,
                    ),
                    myAchievement('1000', 'Followers'),
                    SizedBox(
                      width: 20,
                    ),
                    myAchievement('10', 'Hobbies'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                    rowSpec(
                        icon1: FontAwesomeIcons.android,
                        name1: "Android",
                        icon2: FontAwesomeIcons.java,
                        name2: "Java",
                        icon3: FontAwesomeIcons.unity,
                        name3: "Unity"),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
