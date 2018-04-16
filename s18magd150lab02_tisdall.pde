void setup(){
  size(700,700);
  background(219,217,217);
}
void draw(){
//streamers
  fill(#2021B2);
  beginShape();
vertex(600,300);
vertex(590,340);
vertex(550,350);
vertex(590,360);
vertex(600,400);
vertex(610,360);
vertex(650,350);
vertex(610,340);
vertex(600,300);
endShape();
bezier(424,395,480,554,500,500,538,621);
bezier(124,95,180,254,200,200,238,321);
fill(174,74,91);
bezier(224,195,280,354,300,300,338,421);
  //first balloon
stroke(0,0,0);
fill(255,0,0);
ellipse(300,210,110,125);
triangle(300,273,290,285,310,285);
line(300,285,300,600);
//second balloon
stroke(0,0,0);
fill(0,0,255);
ellipse(370,280,110,125);
triangle(370,343,360,355,380,355);
line(370,355,300,600);
//third balloon
stroke(0,0,0);
fill(0,255,0);
ellipse(230,280,110,125);
triangle(230,343,220,355,240,355);
line(230,355,300,600);
//fourth balloon
stroke(0,0,0);
fill(195,0,255);
ellipse(300,310,110,125);
triangle(300,373,290,385,310,385);
line(230,355,300,600);
//base
stroke(0,0,0);
fill(55);
arc(300,600, 80, 80, 0,PI, OPEN);

}