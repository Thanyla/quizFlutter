import 'package:quizflutter/pergunta.dart';
class Quiz{
  List<Pergunta> _perguntas = [Pergunta('Durante o período colonial no Brasil, '
                                          'o Rio de Janeiro se tornou capital de Portugal', true),
                                Pergunta('O Brasil é o pais abriga a maior comunidade japonesa fora do Japão', true)];
  int _numeroDaPergunta = 0;

  //MÉTODOS
  //Retorna texto da pergunta
  String getTextoPergunta(){
    return _perguntas[_numeroDaPergunta].textoPergunta;
  }

  //Retorna resposta da pergunta
  bool getRespostaPergunta(){
    return _perguntas[_numeroDaPergunta].resposta;
  }

  //Retorna true se as questões acabaram e false se não
  bool verificaOrdem(){
    if(_numeroDaPergunta == _perguntas.length)
      return true;
    return false;
  }

  //Reiniciar quiz
  void reinicarQuiz(){
    _numeroDaPergunta = 0;
  }

  //Proxima pergunta
  void proximaPergunta(){
    _numeroDaPergunta++;
  }


  //GETS E SETS
  List<Pergunta> get perguntas => _perguntas;

  set perguntas(List<Pergunta> value) {
    _perguntas = value;
  }

  int get numeroDaPergunta => _numeroDaPergunta;

  set numeroDaPergunta(int value) {
    _numeroDaPergunta = value;
  }


}