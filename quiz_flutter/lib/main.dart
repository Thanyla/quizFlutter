import 'package:flutter/material.dart';
import 'package:quizflutter/quiz.dart';
//TODO:PASSO 21 - Importar o rflutter_alert

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
  List<Icon> icones;

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
              onPressed: (){},
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
              onPressed: (){},
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
              children: <Widget>[
                const Icon(
                  Icons.check,
                  color: Colors.green,
                )
              ],
            ),
          )
        )
      ],
    );
  }
}

//TODO:PASSO 14 - Fazer o texto da pergunta aparecer dentro do Widget text
//TODO:PASSO 15 - Criar um método que verifica se a resposta está certa ou não ( verificaResposta )
//TODO:PASSO 16 - OnPressed chamar o metodo verificaResposta
//TODO:PASSO 17 - Modificar verificaResposta para que ele insira os ícones Check ou Close, à medida em que as perguntas forem respondidas.
//TODO:PASSO 18 - Inserir o pacote rflutter_alert
//TODO:PASSO 19 - Inserir o rflutter_alert no pub spec.yalm
//TODO:PASSO 20 - Instalar o rflutter_alert
//TODO:PASSO 22 - Modificar verificaResposta para que quando o fim do quiz seja atingido, o rflutter_alert seja mostrado, e o quiz seja reiniciado