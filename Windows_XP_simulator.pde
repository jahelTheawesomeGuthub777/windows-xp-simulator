/**************************************************************************************

Made by Ville kujala

project finished at 2.10.2017

***************************************************************************************/

PImage error1;
PImage error2;
PImage error3;
PImage error4;
PImage taustakuva;
PImage bsod;
int bsodOnOf = 1;
int timesPressed = 0;
boolean isMouseMoved = false;

ArrayList<PImage> errors;

void setup(){
  //size(960, 1000);
  fullScreen();
  error1 = loadImage("Error_Message_Example.png");
  error2 = loadImage("Error Message nuked.png");
  error3 = loadImage("Error Message.png");
  error4 = loadImage("mountai_error.png");
  bsod = loadImage("Windows_BSOD.png");
  taustakuva = loadImage("windows_xp.jpg");

  image(taustakuva ,0 ,0, width, height);
  errors = new ArrayList();
  errors.add(error1);
  errors.add(error2);
  errors.add(error3);
  errors.add(error4);
}

void draw(){
    if (bsodOnOf == 1 && isMouseMoved) {
        int numero = int(random(4));
        PImage image = errors.get(numero);
        image(image, mouseX-image.width/2, mouseY-image.height/2);
        delay(100);
        isMouseMoved = false;
    }
  }

void keyPressed(){
  if (timesPressed == 0) {
    bsodOnOf = 0;
    image(bsod ,0 ,0 ,width, height);
    timesPressed = 1;
  }
  else{
    exit();
  }
}
  void mouseMoved(){
    isMouseMoved = true;

  }