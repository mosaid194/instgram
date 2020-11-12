import 'package:flutter/material.dart';
import 'SecPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      child: index == 4 ?  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Profile()),) : null;
      //Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        elevation: 5,
        leading: Icon(Icons.camera_alt_outlined),
        title: Text("Instgram"),
        actions: [
          Icon(Icons.send),
        ],
      ),
      body: new Center(
        child: new ListView(
          children: [
            Container(
              height: 80.0,
              color: Colors.blue[500],
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(10, (int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new CircleAvatar(
                      backgroundColor: Colors.red[index * 100],
                      radius: 30,
                    ),
                  );
                }),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.blue[900],
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //// hanaaaaaaaaaa
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(

                            child: Align(
                              alignment: Alignment.center,
                              child:  CircleAvatar(
                                backgroundColor: Colors.red,
                              ),
                            )



                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "mohamed said ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("images/said.jpg"),
                        decoration:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.grey,
                          // border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.chat_bubble_outline,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.fiber_manual_record_outlined,
                                size: 10,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.fiber_manual_record_outlined,
                                size: 10,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.fiber_manual_record_outlined,
                                size: 10,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 8),
                    child:Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("2100 Likes",style: TextStyle(color: Colors.white),),
                          Text("View all 676 Comment",style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                          Text("1 hr ago",style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                        ]
                    ),
                  ),
                  /////////////////////////


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "mohamed said ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        child: Image.asset("images/said.jpg"),
                        decoration:
                        BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.grey,
                          // border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.fiber_manual_record_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.fiber_manual_record_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.fiber_manual_record_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text("2100 Likes",style: TextStyle(color: Colors.white),),
                  Text("View all 676 Comment",style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                  Text("1 hr ago",style: TextStyle(color: Colors.white.withOpacity(0.5)),),









                  //////////////////////////////////////////////

                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        //selectedItemColor: ,
        //fixedColor:Colors.red ,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue[500],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

    );

  }
}

