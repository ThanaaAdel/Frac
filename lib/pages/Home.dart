import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frac/pages/Chat.dart';
import 'package:frac/pages/Groups.dart';
import 'package:frac/pages/Login.dart';
import 'package:frac/pages/Notifications.dart';
import 'package:frac/pages/Profile.dart';
import 'package:frac/pages/Search.dart';
import 'package:frac/pages/add_post.dart';
import 'package:frac/shared/colors.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: appbarGreen,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AddPost(),
              ),
            );
          },
      child: Icon(Icons.add,
        color: Colors.white,
      )),
      drawer: Drawer(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/background.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("Sanaa Adel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("sanaaadel123@yahoo.com"),
                  currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("images/sanaa.jpg")),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("My groups"),
                    leading: const Icon(Icons.group),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Groups(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {

                    }),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    }),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by sanaa adel © 2022",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar  (
        backgroundColor: appbarGreen,
        actions:  [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Notifications(),
                ),
              );
            },
            icon: Icon(Icons.notifications),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Chat(),
                ),
              );
            },
            icon: Icon(Icons.message),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
            icon: Icon(Icons.search),
          ),
        ],
        title:Text("FCI Community"),

      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.symmetric(
              vertical: 11, horizontal: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width / 6 : 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(
                            // widget.snap["profileImg"],
                              "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Sanaa Adel",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  ],
                ),
              ),
              Image.network(
                // widget.snap["postUrl"],
                "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_outlined,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_outline),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  width: double.infinity,
                  child: const Text(
                    "10 Likes",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                  )),
              Row(
                children: const [
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    // "${widget.snap["username"]}",
                    "Sanaa Adel ",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                  ),
                  Text(
                    // " ${widget.snap["description"]}",
                    " Sidi Bou Said ♥",
                    //textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    margin: const EdgeInsets.fromLTRB(10, 13, 9, 10),
                    width: double.infinity,
                    child: const Text(
                      "view all 100 comments",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                      //textAlign: TextAlign.start,
                    )),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
                  width: double.infinity,
                  child: const Text(
                    "10June 2022",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                    // textAlign: TextAlign.start,
                  )),
            ],
          ),
        ),
      ),



    );
  }
}

