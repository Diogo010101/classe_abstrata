void main(){

  Jogador jogador1 = Jogador(15,15,"Tidos");
  Inimigo inimigo1 = Inimigo(15, 15, "Calamidade");
  jogador1.apresentar();
  inimigo1.apresentar();

  if(jogador1.posicaoX == inimigo1.posicaoX){
    print("Lutar!\n");

    print("${jogador1.nome} utilizou...");
    jogador1.ataqueEspecial();

    print("\n${inimigo1.nome} utilizou...");
    inimigo1.ataqueEspecial();

  }else{
    print("A luta ainda não comecou...");
  }

}

abstract class Personagem{
  int posicaoX;
  int posicaoY;
  String nome;

  Personagem(this.posicaoX, this.posicaoY, this.nome);

  void apresentar(){
    print("Olá meu nome é $nome, estou na pocisao $posicaoX/$posicaoY");
  }

  void ataqueEspecial(){
    print("Gastou pontos de magia");
  }
}

class Jogador extends Personagem{
  Jogador(int pocisaoX, int posicaoY, String nome) : super (pocisaoX, posicaoY,nome);

  int andarFrente(posicaoX, posicaoY){
    posicaoX = posicaoX + 1;
    return posicaoX;
  }

  @override void ataqueEspecial(){
    print("Corte perfeito!");
    super.ataqueEspecial();
  }

}

class Inimigo extends Personagem{
  Inimigo(int pocisaoX, int posicaoY, String nome) : super(pocisaoX, posicaoY,nome);

  @override void ataqueEspecial() {
    print("Meteoro da destruicao!");
    super.ataqueEspecial();
  }
}