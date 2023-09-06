import 'package:day6/movies.dart';
import 'package:day6/pages/information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var buildings = [
    building(
        name: 'أبراج الكويت',
        imgUrl:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        description:
            'براج الكويت تشير إلى مجموعة من الأبراج السكنية الفاخرة في منطقة الشرق الأوسط بمدينة الكويت.'),
    building(
      name: 'برج التحرير',
      imgUrl:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
      description:
          "برج التحرير هو أحد المعالم البارزة في مدينة الكويت. تم افتتاحه رسميًا في 10 مارس 1996. ",
    ),
    building(
        name: 'المسجد الكبير',
        imgUrl:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        description:
            "لمسجد الكبير هو أحد أبرز المعالم الدينية والثقافية في الكويت. تم افتتاحه في عام 1986 وهو أحد أكبر المساجد في العالم، "),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  itemCount: buildings.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              NetworkImage(buildings[index].imgUrl)),
                      title: Text(
                        buildings[index].name,
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        buildings[index].description,
                        style: TextStyle(fontSize: 10),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => informationpage(
                                        info: buildings[index],
                                      )),
                            );
                          },
                          icon: Icon(Icons.chevron_left)),
                    );
                  })),
        ),
      ),
    );
  }
}
