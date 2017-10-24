
Figura Romina;
Figura Jazz;
Figura Alberto;
Figura Canche;
Figura Jackie;
Figura Francisco;
Figura Green;
Figura Benja;

void setup(){
  Romina = new Triangulo(0,90);
  Jazz = new Cuadrado(80);
  Alberto = new Rectangulo(90,50);
  Canche = new Circulo(70);
  Jackie = new Pentagono(90,0);
  Francisco = new Hexagono(90,0);
  Green = new Heptagono(90,0);
  Benja = new Octagono(90,0);
  
  
  size(1280,720);
}

void draw(){
  
  background(0);
  
  seleccion();
}


interface Figura {
 float perimetro();
 float area();
 void display();
}

class Triangulo implements Figura{
  float h,l;
  
  Triangulo(float h_, float l_){
    h=h_;
    l=l_;
  }
  
 float perimetro(){
   return l*3;
 }
 
 float area(){
    h= (sqrt(3)*l)/2;
    return (l*h)/(2);
 }
 
 void display(){
   pushMatrix();
   noStroke();
   translate((width/3),(height/1.8));
   scale(3);
   triangle(0,0,l,0,l/2,-h);
   popMatrix();
 }
}

class Cuadrado implements Figura{
  float l;
  
  Cuadrado(float l_){
    l=l_;
  }
  
  float perimetro(){
    return l*4;
  }
  
  float area(){
    return l*l;
  }
  
  void display(){
    
    pushMatrix();
    noStroke();
    translate((width/3),(height/4));
    scale(3);
    rect(0,0,l,l);
    popMatrix();
    
    
  }
}


class Rectangulo implements Figura{
  float l1,l2;
  
  Rectangulo(float l1_,float l2_){
    l1=l1_;
    l2=l2_;
  }
  
  float perimetro(){
    return (l1*2)+(l2*2);
  }
  
  float area(){
    return l1*l2;
  }
  
  void display(){
    pushMatrix();
    noStroke();
    translate((width/3),(height/3));
    scale(3);
    rect(0,0,l1,l2);
    popMatrix();
  }
}

class Circulo implements Figura{
  float r;
  
  Circulo(float r_){
    r=r_;
  }
  
  float perimetro(){
    return ((2*PI)*r);
  }
  
  float area(){
    return ((r*r)*PI);
  }
  
  void display(){
    pushMatrix();
    noStroke();
    translate((width/2.3),(height/2.4));
    scale(3);
    ellipse(0,0,r,r);
    popMatrix();
    
  }
}

class Pentagono implements Figura{
  float l, a;
  
  Pentagono(float l_,float a_){
    l=l_;
    a=a_;
  }
  
  float perimetro(){
    return l*5;
  }
  
  float area(){
    float t;
    t=tan(0.628319);
    a=l/(2*t);
    return (Jackie.perimetro()*a)/(2);
  }
  
  void display(){
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-1.25664);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-1.25664);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-2.51327);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-2.51327);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-3.76991);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-3.76991);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-5.02655);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    rotate(-5.02655);
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
  }
}

class Hexagono implements Figura{
  float l, a;
  
  Hexagono(float l_,float a_){
    l=l_;
    a=a_;
  }
  
  float perimetro(){
    return l*6;
  }
  
  float area(){
    float t;
    t=tan(0.523599);
    a=l/(2*t);
    return (Francisco.perimetro()*a)/(2);
  }
  
  void display(){
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
     pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.0472);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.0472);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
     pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.0944);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.0944);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    
     pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    rotate(3.14159);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.14159);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    
     pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.18879);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.18879);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    
    
     pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.23599);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.23599);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
  }
}

class Heptagono implements Figura{
  float l, a;
  
  Heptagono(float l_,float a_){
    l=l_;
    a=a_;
  }
  
  float perimetro(){
    return l*7;
  }
  
  float area(){
    float t;
    t=tan(0.44879895043691);
    a=l/(2*t);
    return (Green.perimetro()*a)/(2);
  }
  
  void display(){
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(0.89759790104836);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(0.89759790104836);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.7951958027949);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.7951958027949);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.6927937050649);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.6927937050649);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.5903916055897);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.5903916055897);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.4879895078598);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.4879895078598);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.3855874083846);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.3855874083846);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
  }
}

class Octagono implements Figura{
  float l, a;
  
  Octagono(float l_,float a_){
    l=l_;
    a=a_;
  }
  
  float perimetro(){
    return l*8;
  }
  
  float area(){
    float t;
    t=tan(0.3926991);
    a=l/(2*t);
    return (Benja.perimetro()*a)/(2);
  }
  
  void display(){
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(0.785398);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(0.785398);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.5708);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(1.5708);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.35619);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(2.35619);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.14159);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.14159);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.92699);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(3.92699);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.71239);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(4.71239);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.49779);
    stroke(255);
    triangle(0,0,0,a,l/2,a);
    popMatrix();
    
    pushMatrix();
    translate((width/2.3),(height/2.4));
    scale(1.5);
    rotate(5.49779);
    stroke(255);
    triangle(0,0,0,a,-l/2,a);
    popMatrix();
    
  }
}


void keyPressed (){
  seleccion();
}

void seleccion(){
  if (keyPressed==true){
    if(key=='q'){
      text("Perimetro = "+Romina.perimetro(),510,600);
      text("Area = "+Romina.area(),510,620);
      Romina.display();
    }
    if(key=='w'){
      text("Perimetro = "+Jazz.perimetro(),510,600);
      text("Area = "+Jazz.area(),510,620);
      Jazz.display();
    }
    if(key=='e'){
      text("Perimetro = "+Alberto.perimetro(),510,600);
      text("Area = "+Alberto.area(),510,620);
      Alberto.display();
    }
    if(key=='r'){
      text("Perimetro = "+Canche.perimetro(),510,600);
      text("Area = "+Canche.area(),510,620);
      Canche.display();
    }
    if(key=='t'){
      text("Perimetro = "+Jackie.perimetro(),510,600);
      text("Area = "+Jackie.area(),510,620);
      Jackie.display();
    }
    if(key=='y'){
      text("Perimetro = "+Francisco.perimetro(),510,600);
      text("Area = "+Francisco.area(),510,620);
      Francisco.display();
    }
    if(key=='u'){
      text("Perimetro = "+Green.perimetro(),510,600);
      text("Area = "+Green.area(),510,620);
      Green.display();
    }
    if(key=='i'){
      text("Perimetro = "+Benja.perimetro(),510,600);
      text("Area = "+Benja.area(),510,620);
      Benja.display();
    }
  }
}