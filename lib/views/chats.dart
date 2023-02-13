import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:okay/models/chat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<Chat> chats = [
    Chat(username: 'Victor', message: 'message', url: 'Europe/London'),
    Chat(username: 'Victor', message: 'message', url: 'Europe/London'),
    Chat(username: 'Victor', message: 'message', url: 'Europe/London'),
    Chat(username: 'Victor', message: 'message', url: 'Europe/London')
  ];

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 85.0,
            color: const Color.fromARGB(1, 22, 22, 22),
            child: Center(
              child: ListTile(
                tileColor: Colors.red,
                selectedTileColor: Colors.blue,
                hoverColor: const Color.fromARGB(255, 252, 248, 2),
                onTap: () {
                  print('John does want to seat');
                },
                leading: const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 4.0),
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage: AssetImage('assets/images/range1.jpg'),
                  ),
                ),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          chats[index].username,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 224, 224, 224),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          chats[index].time,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chats[index].message,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 160, 158, 158),
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: chats.length,
      ),
    );
  }
}
