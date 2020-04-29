import 'package:flutter/material.dart';
import 'package:quizflutter/quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizz());

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizPage(),
            )
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Quiz quiz = new Quiz();
  List<Icon> icones = List<Icon>();
  int acertos = 0;

  void verificaResposta(bool opcao){
    setState(() {
      if(quiz.getRespostaPergunta() == opcao){
        icones.add(new Icon(
            Icons.check,
            color: Colors.green
        ));
        acertos++;
      }else{
        icones.add(new Icon(
            Icons.close,
            color: Colors.red
        ));
      }

      if(quiz.verificaOrdem()){
        quiz.proximaPergunta();
      }
      else{
          Alert(
              context: context,
              title: "Você finalizou o quiz",
              desc: "Parabens você acertou $acertos perguntas.",
              buttons: [
                DialogButton(
                  child: Text("Reiniciar Quiz", style: TextStyle(color: Colors.white, fontSize: 20),),
                  onPressed: () => Navigator.pop(context),
                ),
              ]
          )
              .show();
          acertos=0;
          quiz.reinicarQuiz();
          icones.clear();
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quiz.getTextoPergunta(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                color: Colors.green,
                onPressed: (){
                  verificaResposta(true);
                },
                padding:EdgeInsets.symmetric(vertical: 10.0) ,
                child: Text("Verdadeiro",
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.green
                  ),
                ),
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                color: Colors.red,
                onPressed: (){
                  verificaResposta(false);
                },
                padding:EdgeInsets.symmetric(vertical: 10.0) ,
                child: Text("Falso",
                  style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.red
                  ),
                ),
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [ for( var i in icones ) Icon(i.icon, color: i.color)],
              ),
            )
        ),
      ],
    );
  }
}

