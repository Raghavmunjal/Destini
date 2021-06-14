import 'package:flutter/material.dart';

void main() {
  runApp(Destini());
}

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {

  String str='';


  Expanded choiceButton(String str,Color color){
    return Expanded(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: (){

            },
            child: Text('$str',style: TextStyle(color: Colors.white,fontSize: 20),),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color)
            ),

          ),
        )

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                  child: Center(child: Text('Question Text will Go here',style: TextStyle(fontSize: 25),))

              ),
              choiceButton('Choice 1', Colors.red),
              choiceButton('Choice 2', Colors.blue),

            ],
          ),
        ),
    ),
    );
  }
}




