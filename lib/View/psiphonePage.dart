import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PsiphonePage extends StatelessWidget {
  const PsiphonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.09),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              width: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerButton(
                      icon: Icon(
                        Icons.adobe_rounded,
                        color: Colors.red,
                      ),
                      text: "PSICASH"),
                  ContainerButton(
                      icon: Icon(Icons.settings, color: Colors.yellow),
                      text: "SETTINGS"),
                  ContainerButton(icon: Icon(Icons.feedback), text: "FEEDBACK"),
                  ContainerButton(icon: Icon(Icons.info), text: "ABOUT"),
                  ContainerButton(icon: Icon(Icons.list), text: "LOGS"),
                  ContainerButton(icon: Icon(Icons.language), text: "LANGUAGE"),

                  // Text(
                  //   "Psiphone3",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 30, left: 35),
                  //   child: FlutterLogo(
                  //     size: 50,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   decoration: BoxDecoration(color: Colors.blue),
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "DISCONNECTED",
                  //         style: TextStyle(color: Colors.white),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text("PSICASH"),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "SETTINGS",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "FEEDBACK",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "ABOUT",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "LOGS",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 40,
                  //   child: Row(
                  //     children: [
                  //       FlutterLogo(),
                  //       Text(
                  //         "LANGUAGE",
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   width: 200,
                  //   height: 50,
                  //   child: Column(
                  //     children: [
                  //       Text(
                  //         "زبان",
                  //       ),
                  //       FlutterLogo()
                  //     ],
                  //   ),
                  // ),

                  SizedBox(
                    height: 110,
                  ),
                  Container(
                    height: 5,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  Row(
                    children: [
                      FlutterLogo(
                        size: 25,
                      ),
                      Text("90"),
                      SizedBox(
                        width: 80,
                      ),
                      FlutterLogo(
                        size: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.black87),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "PSIPHON\n SPEED",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                FlutterLogo(
                                  textColor: Colors.green,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(color: Colors.blue),
                            child: Column(
                              children: [
                                Text(
                                  " SPEED BOOST",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                Text(
                                  " 1   hour   100",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.lightBlue),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " Buy PsiCash",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                                FlutterLogo(size: 25)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 1194,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sponsord by",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      FlutterLogo(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(Icons.warning_amber_rounded,
                            size: 80, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "PSIPHON IS",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "DISCONNECT",
                            style: TextStyle(color: Colors.red, fontSize: 25),
                          ),
                        ],
                      ),
                      Text(
                        ". . . . . . . . . . . . . . . . . . . . . . ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "CONNECT",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  "select server region",
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlutterLogo(),
                      Text(
                        "Best Berformance",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  ContainerButton({super.key, required this.icon, required this.text});
  final Widget icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListTile(
        onTap: () {},
        mouseCursor: SystemMouseCursors.click,
        hoverColor: Colors.blue.shade900,
        leading: IconButton(onPressed: () {}, icon: icon),
        title: Text(
          text,
          style: TextStyle(fontSize: 12),
          maxLines: 1,
        ),
      ),
    );
  }
}
