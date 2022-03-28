import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(demo());
}
class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:first() ,
    );
  }
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  _firstState createState() => _firstState();
}
List<String> names = ['AAA','BBB','CCC'];
List<String> status = ['yesterday','today','now'];
List<String> imagelist = ["picture/aaa.png","picture/bbb.jpg","picture/ccc.jpg"];
class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WHATSAPP",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: status.length,
        itemBuilder: (context, index) {
        return ListTile(
          title:Text(names[index]),
          subtitle: Text(status[index]),
          trailing: Icon(Icons.close),
          leading: Image.asset(imagelist[index],height: 50,width: 50,),
          );
      },),
    );
  }
}

