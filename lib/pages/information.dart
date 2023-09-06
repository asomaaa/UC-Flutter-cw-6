import 'package:day6/movies.dart';
import 'package:flutter/material.dart';

class informationpage extends StatelessWidget {
  informationpage({super.key, required this.info});

  final building info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("More Information"),
        ),
        body: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 90,
                    backgroundImage: NetworkImage(info.imgUrl),
                  ),
                  Text(
                    info.name,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    info.description,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
