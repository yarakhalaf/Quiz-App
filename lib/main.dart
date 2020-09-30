import 'package:flutter/material.dart';
import './Quiz.dart';
import './Result.dart';

class MyApp extends StatefulWidget{
  State<StatefulWidget>createState(){
    return MyAppState();
  }

}
class MyAppState extends State<MyApp>{
  int _questionIndex =0 ;
  var _totalScore =0 ;

  void _resetQuz(){
    setState(() {
      _questionIndex =0 ;
      _totalScore =0 ;
    });
  }
  void answerQuestion(int score) {
    _totalScore += score ;
    setState(() {
      _questionIndex = _questionIndex+1 ;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
      print ('we have more questions !') ;}
    else {print('No more questions !') ;
    }
  }

  final _questions =const [
    {'questionText':"what's the biggest animal ?" ,
      'answers':[
        {'text':'The Ant', 'score': 0},
        {'text':'The Elephant','score':10},
        {'text': 'The Rabbit','score':0},
        {'text': 'zebra','score':0},
      ],
    },
    {'questionText':"what's the most dangerous animal ?" ,
      'answers':[
        {'text':'Horse','score': 0},
        {'text':'Monkey','score': 0},
        {'text':'Bird','score': 0},
        {'text':'Lion','score': 10},
      ],
    },
    {'questionText':"what's the animal can live underwater ?" ,
      'answers':[
        {'text':'Whale','score': 10},
        {'text':'Dog','score': 0},
        {'text':'Butterfly','score': 0},
        {'text':'cat','score': 0},
      ],
    },
    {'questionText':"what's the animal can fly ?" ,
      'answers':[
        {'text':'Turtle','score': 0},
        {'text':'Snake','score': 0},
        {'text':'Butterfly','score': 10},
        {'text':'Crocodile','score': 0},
      ],
    },
    {'questionText':"what's the tallest animal ?" ,
      'answers':[
        {'text':'Duck','score': 0},
        {'text':'Fish','score': 0},
        {'text':'Giraffe','score': 10},
        {'text':'Tiger','score': 0},
      ],
    },
  ] ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home:Scaffold(
        backgroundColor: Colors.black,
        appBar:AppBar(
          title:Text('My First App'),
          backgroundColor:Colors.purple,
          shadowColor: Colors.white,
        ),
        body: _questionIndex < _questions.length ?
        Quiz(
          answerQuestion : answerQuestion ,
          questionIndex : _questionIndex ,
          questions : _questions ,
        )

            :Result(_totalScore , _resetQuz),
      ),
    );
  }
}
void main() {
  runApp(MyApp());
}
