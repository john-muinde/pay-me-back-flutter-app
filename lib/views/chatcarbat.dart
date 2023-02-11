import 'package:flutter/material.dart';
import 'package:okay/views/calls.dart';
import 'package:okay/views/status.dart';
import 'package:okay/views/chats.dart';
import 'package:okay/views/groups.dart';
class ChatCarbat extends StatefulWidget {
  const ChatCarbat({super.key});

  @override
  State<ChatCarbat> createState() => _ChatCarbatState();
}

class _ChatCarbatState extends State<ChatCarbat> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.grey[400],
              fontSize: 22.0,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.wifi),
            color: Colors.grey[400],
            iconSize: 28.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.wb_sunny_rounded),
            color: Colors.grey[400],
            iconSize: 28.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.grey[400],
            iconSize: 28.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.grey[400],
            iconSize: 28.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color: Colors.grey[400],
            iconSize: 28.0,
          ),
        ],
        backgroundColor: Color.fromARGB(255, 36, 36, 36),
      ),
      body: Container(
        color: Color.fromARGB(255, 31, 30, 37),
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 36, 36, 36),
              child: TabBar(
                  labelStyle: TextStyle(fontSize: 18),
                  controller: _tabController,
                  labelColor: Color.fromARGB(255, 65, 172, 88),
                  unselectedLabelColor: Colors.grey[400],
                  labelPadding: EdgeInsets.all(2.0),
                  indicatorColor: Color.fromARGB(255, 65, 172, 88),
                  tabs: [
                    Tab(text: "Chats"),
                    Tab(text: "Groups"),
                    Tab(text: "Status"),
                    Tab(text: "Calls"),
                  ]),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
          child:TabBarView(
                    controller: _tabController,
                    children: [
                     Chats(),
                      Groups(),
                      Status(),
                      Calls(),
                    ],
                  ),
                ),
            ),
            
          ],
        ),
      ),
    );
  }
}
