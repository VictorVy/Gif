ArrayList<PImage> nyan;
int counter;

void setup()
{
  size(320, 240);
  frameRate(10);
  
  nyan = new ArrayList<PImage>();
  counter = 0;
  
  for(int i = 0; i < 12; i++)
  {
    nyan.add(loadImage(i + ".jpg"));
  }
}

void draw()
{
  PImage frame = nyan.get(counter);
  
  image(frame, 0, 0);
  
  counter++;
  if(counter >= nyan.size())
  {
    counter = 0;
  }
}
