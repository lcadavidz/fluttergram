import 'package:flutter/material.dart';
import 'package:fluttergram/ui_shared/size_config.dart';
import 'package:fluttergram/ui_shared/behavior.dart';
import 'package:fluttergram/widgets/bottom_navbar.dart';
import 'package:fluttergram/widgets/input/input.dart';
import 'package:fluttergram/ui_shared/theme.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  static String route = "/message";

  _ChatState createState() => _ChatState();
}

class _ChatState extends State<ChatScreen> {
  TextEditingController search = TextEditingController();
  String now = new DateFormat('MMMM d').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: Key('chat_view'),
      appBar: AppBar(
        title: Text(
          "Chat",
          textAlign: TextAlign.center,
        ),
        leading: SizedBox(),
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.message),
      body: ScrollConfiguration(
        behavior: NeverGrowthScroll(),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Input(
                placeholder: 'Search',
                controller: search,
                icon: Icons.search,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Row(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(120),
                    width: getProportionateScreenWidth(80),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(80),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/r1.png'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        Text(
                          'Anna',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: getProportionateScreenHeight(120),
                    width: getProportionateScreenWidth(80),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(80),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/r2.png'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        Text(
                          'Christina',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: getProportionateScreenHeight(120),
                    width: getProportionateScreenWidth(80),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(80),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/r3.png'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        Text(
                          'Mary',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: getProportionateScreenHeight(120),
                    width: getProportionateScreenWidth(80),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(80),
                          width: getProportionateScreenWidth(80),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('assets/images/r4.png'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(color: Colors.blue, width: 2),
                              //borderRadius: Border.all(color: Colors.blue, width: 2),
                            ),
                          ),
                        ),
                        Text(
                          'Ariana',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(80),
                              width: getProportionateScreenWidth(80),
                              child: chatDecoratedBox('assets/images/c1.png'),
                            ),
                            chatPositioned(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.05),
                  chatInfo("Jessica Park", "That's hilarious, really ‧ $now"),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(80),
                              width: getProportionateScreenWidth(80),
                              child: chatDecoratedBox('assets/images/c2.png'),
                            ),
                            chatPositioned(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.05),
                  chatInfo("Daniel Lee", "Why? ‧ $now"),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            chatGroupPositioned('assets/images/c2.png', 0, 0),
                            chatGroupPositioned('assets/images/c1.png', 25, 25),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.05),
                  chatInfo("The Gang", "Hello, party people! ‧ $now"),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(80),
                              width: getProportionateScreenWidth(80),
                              child: chatDecoratedBox('assets/images/c3.png'),
                            ),
                            chatPositioned(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.05),
                  chatInfo("Josh Yoo", "Nice photo! Where are you? ‧ $now"),
                ],
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(80),
                              width: getProportionateScreenWidth(80),
                              child: chatDecoratedBox('assets/images/c4.png'),
                            ),
                            chatPositioned(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: SizeConfig.screenWidth * 0.05),
                  chatInfo("Charlie Brown", "Hey dude! How's going? ‧ $now"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
