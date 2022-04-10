
int h=0, s=0;
float horas, segundos;

void setup(){
  size(300,300);
}
void fondo(){
  noFill();
  circle(width/2, height/2, 300);
  fill(255,0,0);
  for(int i=-2; i<10; i++){
    float angX = cos((i*2*PI)/12);
    float angY = sin((i*2*PI)/12);
    line(width/2 + 150*angX,height/2 + 150*angY, width/2 + 140*angX,height/2 + 140*angY);
    text(""+(i+3), width/2 + 130*angX,height/2 + 130*angY);
  }
  for(int i=-2; i<58; i++){
    float angX = cos((i*2*PI)/60);
    float angY = sin((i*2*PI)/60);
    line(width/2 + 150*angX,height/2 + 150*angY, width/2 + 147*angX,height/2 + 147*angY);
  }
}
void manecillas(){
  segundos = ((s-15)*2*PI)/60;
  horas = ((h-3)*2*PI)/12;
  if(s == 59){
    h = (h+1)%12;
  }
  fill(0);
  // Cosa de las horas
  line(width/2,height/2,width/2 + 75*cos(horas),height/2 + 75*sin(horas));
  // Cosa de los minutos
  line(width/2,height/2,width/2 + 150*cos(segundos),height/2 + 150*sin(segundos));
  s = (s+1)%60;
}
void draw(){
  background(255);
  frameRate(1);
  fondo();
  manecillas();
  println(h, ":", s);
}
