void setup()
{
  size(720, 720);
}

void draw()
{
  background(239);
  strokeWeight(2);
  
  for(int i = 0; i < 10; i++)
  {
    stroke(39, map(i, 0, 10, 0, 255));
    fill(39, map(i, 0, 10, 0, 255));
    
    beginShape();
    for(int x = width / 10; x < width; x += width / 10)
    {
      float y = noise(x + i * 0.05 + frameCount * 0.005) * height;
      vertex(x, y);
      
      circle(x, y, 10);
    }
    
    vertex(width * 0.9, height * 0.9);
    vertex(width * 0.1, height * 0.9);
    
    noFill();
    endShape(CLOSE);
  }
}
