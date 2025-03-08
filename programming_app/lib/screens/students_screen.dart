
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  final List<String> students = [
    "إسراء مدحت ممدوح عبد المجيد",
    "كريمة ماجد عباس عبد التواب القارب",
    "أحمد محمد إبراهيم إبراهيم إبراهيم القلفاط",
    "دعاء علاء محمد محمد علي",
    "عمرو إبراهيم محمد إبراهيم علي عطية",
    "محمد عبد العظيم سمير محمد عبد الرحيم",
    "يمنى سماح مختار إبراهيم علي عمر",
    "بلال عبد الرؤوف محمد أبو حطب",
    "محمد سعيد سعيد محمد إسماعيل",
    "عبد الرحمن محمد حسن محمد إبراهيم",
    "محمود عصام محمد أبو الفتوح حمادة",
  ];


  @override
  Widget build(BuildContext context)

  {
    return Scaffold(backgroundColor: Colors.white, appBar: AppBar(title: Text('أسماء الطلاب'),centerTitle: true,),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    students[index],
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  ".${index + 1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black,),
                ),
              ],
            ),
          );
        },
      ),
    );

  }
}
