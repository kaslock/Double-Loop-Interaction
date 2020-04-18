int x = 0, y = 0;
int k = 0, t = 0;
int p = 0, q = 0;

void setup() {
  size(1000,1000);
  background(0);
}

void draw() {
  
  while(x < width) {
    x += 20;
    y += 20;
    fill(255-k,15);
    ellipse(500,500,x,y);   
  }
  
  for(int b = 200; b<height; b+=200) {
    for(int a = 0; a<width; a+=10){
      if (mousePressed) {
        t = 1;
        stroke((5*a)%255, (5*a + p)%255, (5*a + q)%255);
        x = 0;
        y = 0;
        k = 255;
        
        p = mouseX - 500;
        q = mouseY - 500;
      }
      
      else {
        
        if (t == 1) {
        background(0);
        x = 0;
        y = 0;
        }
        
        stroke(0);                
        k = 0;
        t = 0;
        
        p = 0;
        q = 0;
      }
      
      fill(255,8);
      strokeWeight(3);
      triangle(b,a,333+p,500+q,666+p,500+q);
      triangle(a,b,500+p,333+q,500+p,666+q);
    }
  }
}
