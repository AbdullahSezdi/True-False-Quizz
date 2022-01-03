import 'package:flutter/material.dart';

void main() =>runApp(Quizzler());


class Quizzler extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey.shade900,
        body:SafeArea(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          )
        )
      )
    );
  }
}

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List questions=[
    "There are 219 episodes of Friends",
    "Cinderella was the first Disney princess",
    "Fish cannot blink",
    "Thomas Edison discovered gravity",
    "There are five different blood groups",
    "50 Cent and Charlie Chaplin were alive at the same time",

  ];

  List<bool> answers=[
    false,false,true,false,false,true
  ];
  int questionNumber=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child:Padding(
            padding: EdgeInsets.all(10),
            child:Center(
              child: Text(questions[questionNumber],
                textAlign:TextAlign.center,style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),),
            )


    )

        ),
        Expanded(
          child:Padding(
          padding: EdgeInsets.all(15.0),
              child:TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: Text('True',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
                onPressed: (){
                  bool correctAnswer=answers[questionNumber];
                  if(correctAnswer==true){
                    print('user got it right!');
                  }else{
                    print('user got it wrong.');
                  }
                  setState(() {
                    questionNumber++;
                  });

                },
              )
        )


        ),
        Expanded(
            child:Padding(
            padding:EdgeInsets.all(15.0),
                child:TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('False',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                  onPressed: (){
                    bool correctAnswer=answers[questionNumber];
                    if(correctAnswer==false){
                      print('user got it right!');
                    }else{
                      print('user got it wrong.');
                    }
                    setState(() {
                      questionNumber++;
                    });
                  },
                )
    )



        )
      ],
    );
  }
}
