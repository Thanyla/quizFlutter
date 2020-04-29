import 'package:flutter/material.dart';
//TODO:PASSO 11 - Importar a classe Quiz
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Text(
            "O Brasil é o pais abriga a maior comunidade japonesa fora do Japão",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
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
        ),
        Expanded(
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
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.check,
                color: Colors.green,
              )
            ],
          ),
        )
      ],
    );
  }
}

//TODO:PASSO 3 - Inserir os Widgets na classe _QuizPageState
//TODO:PASSO 9 - Criar as propriedades da classe Quiz
//TODO:PASSO 10- Criar os métodos da classe Quiz

//TODO:PASSO 12- Criar uma instancia de Quiz em _QuizPageState
//TODO:PASSO 13- Criar uma Lista de icones List<Icon>
//TODO:PASSO 14 - Fazer o texto da pergunta aparecer dentro do Widget text
//TODO:PASSO 15 - Criar um método que verifica se a resposta está certa ou não ( verificaResposta )
//TODO:PASSO 16 - OnPressed chamar o metodo verificaResposta
//TODO:PASSO 17 - Modificar verificaResposta para que ele insira os ícones Check ou Close, à medida em que as perguntas forem respondidas.
//TODO:PASSO 18 - Inserir o pacote rflutter_alert
//TODO:PASSO 19 - Inserir o rflutter_alert no pub spec.yalm
//TODO:PASSO 20 - Instalar o rflutter_alert
//TODO:PASSO 22 - Modificar verificaResposta para que quando o fim do quiz seja atingido, o rflutter_alert seja mostrado, e o quiz seja reiniciado