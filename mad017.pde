float rr=128;
float gg=128;
float bb=128;
float dColor=2;
float j=0;
float pasos=512;
void setup() {
  size(512, 256);
  background(255);
}
void draw() {
  background(255);
  for (int i=0; i<=width; i++) {
    rr+=random(-dColor, dColor);
    gg+=random(-dColor, dColor);
    bb+=random(-dColor, dColor);
    if (rr<0) {
      rr+=2*dColor;
    }
    if (rr>256) {
      rr-=2*dColor;
    }
    if (gg<0) {
      gg+=2*dColor;
    }
    if (gg>256) {
      gg-=2*dColor;
    }
    if (bb<0) {
      bb+=2*dColor;
    }
    if (bb>256) {
      bb-=2*dColor;
    }
    stroke(rr, gg, bb);
    line(i, 0, i, height);
  }
  noStroke();
  fill(255);
  rect(0, 0, width, height*0.3);
  rect(0, height*0.7, width, height*0.3);
  if (j<=pasos) {
    rect(map(j, 0, pasos, 0, width), height*0.29, map(j, 0, pasos, width, 0), height*0.42);
    j+=map(j, 0, width, 4, 1);
  } else {
    j+=4;
  }
  if (j>=pasos*2) {
    rect(0, height*0.29, map(j, pasos*2, pasos*3, 0, width), height*0.42);
    j+=map(j, pasos*2, pasos*3, 4, 1);
  }
  if (j>=pasos*3) {
    j=0;
  }
  if (j<=pasos*3) {
    saveFrame("gif/mad017-######.png");
  }
}
