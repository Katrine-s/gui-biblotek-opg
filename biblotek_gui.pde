interface Action {
  void execute();
}

class Button {
  PApplet p;
  Action a;
  int x,y,w,h;
  String navn;
  
  Button(int x, int y, int w, int h, String navn, PApplet p){
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.navn=navn;
    this.p=p;
  }
  void addAction(Action a){ //henter fra Action
    this.a=a;
  }
  void display(){
    p.fill(255); //farver boksene
    p.rect(x,y,w,h); //laver de to bokse
    p.fill(100); //farver teksten
    p.text(navn,x+w/2,y+h/2); //bestemmer hvad der skal stå og hvor det skal stå
  }
  void click(float mx, float my){ //mx/my er navne som refere til gui_ting
    if(mx>x && mx<x+w && my>y && my<y+h){ //bestemmer hvor boksen er
    a.execute(); //gør at der sker noget når man trykker på boksene
    }
  }
}
