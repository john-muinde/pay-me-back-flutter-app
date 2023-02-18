import 'package:flutter/material.dart';
import '../../../routes.dart' as route;

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Language',
          style: TextStyle(fontSize: 25),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(7),
        child: ListView(
          children: [
            'English',
            'Francais',
            'Spanish',
            'Portugeese',
            'Swahili',
            'Mandarin'
          ]
              .map(
                (e) => Container(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    elevation: 6,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(e == 'Swahili' ? 'Sw' : e[0]),
                      ),
                      title: Text(e),
                      onTap: () =>
                          Navigator.pushNamed(context, route.detailsPhone),
                      contentPadding: const EdgeInsets.all(10),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
