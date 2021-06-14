import 'package:flutter/material.dart';
import 'story_brain.dart';

StoryBrain sb=StoryBrain();

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

  Expanded choiceButton(String str,Color color,int c){
    return Expanded(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 8),
          child: TextButton(
            onPressed: (){
                setState(() {
                  sb.nextStory(c);
                });
            },
            child: Text('$str',textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
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
                  child: Center(child: Text(sb.getStory(),style: TextStyle(fontSize: 25),))

              ),
              choiceButton(sb.getChoice1(), Colors.red,1),

              sb.isButtonVisible() ? choiceButton(sb.getChoice2(), Colors.blue,2) : Text(''),
              

            ],
          ),
        ),
    ),
    );
  }
}




