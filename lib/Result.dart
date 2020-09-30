import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore ;
  final Function resetHandler ;
  Result (this.resultScore, this.resetHandler) ;

  String get resultPhase {
    var resultText = 'you did it';
    if (resultScore <= 10) {
      resultText = 'you are so bad! ';
    } else if (resultScore <= 20){
      resultText ='acceptable but needs more exercise!' ;
    }else if (resultScore <= 30){
      resultText =' Good!';
    }
    else if (resultScore <= 40){
      resultText ='Very Good!';}
    else {
      resultText ='Exellent ';
    }
    return resultText ;
  }
  Widget build(BuildContext context){
    return Center(
      child:Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold ,color: Colors.white),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.purple,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}