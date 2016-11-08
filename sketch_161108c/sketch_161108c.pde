//Raul Alvarez
//C14722441

ArrayList<Star> stars = new ArrayList<Star>();
Table table;

void setup()
{
  size(800, 800);
  background(0);
  loaddata();
  printStars();
  drawgrid();
  drawStars();
}

void loaddata() {
  
  //Create an array of lines
  table = loadTable("stars.csv", "header");
  
  println(table.getRowCount() + " total rows in table"); 

  for(TableRow row : table.rows())
  {
    // transform line into class.
    Star star =   new Star(row.getFloat("Hab?"),row.getString("Display Name"), row.getFloat("Distance"),
                  row.getFloat("Xg"), row.getFloat("Yg"),row.getFloat("Zg"),row.getFloat("AbsMag"));
    
    //Add class into arraylist;
    stars.add(star);
  }
}

void printStars()
{
  for (Star star:stars)
  {
    println(star);
  }
}

void drawgrid()
{
  float sx =  50;
  float sy =  50;
  float rectw = (width - 100) /  10;
  
  for (int i = 0; i < 100; i++)
  {
    stroke(255,0,255);
    noFill();
    rect(sx,sy,rectw,rectw);
    sx += rectw;
    if(sx >= width-50)
    {
      sx = 50;
      sy += rectw;
    }
  }
  
  for(int j = -5;  j < 6; j++)
  {
    text(j, sx, 20);
    text(j, 20, sy);
    
    sy += rectw;
    sx += rectw;
  }
    
}

void drawStars()
{
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  
  float minX = Float.MIN_VALUE;
  float minY = Float.MIN_VALUE;
   for(Star star:stars)
  {
    if(star.Xg > maxX)
    {
      maxX = star.Xg;
    }
    
    if(star.Xg < minX)
    {
      minX = star.Xg;
    }
    
    if(star.Yg > maxY)
    {
      maxY = star.Yg;
    }
    
    if(star.Yg < minY)
    {
      minY = star.Yg;
    }
  }
  for(int i  = 0; i < stars.size(); i++)
  {
    Star star = stars.get(i);
    
    float x = map(star.Xg, minX, maxX, 50, width-50);
    float y = map(star.Yg, minY, maxY, 50, width-50);
    
    stroke(255,255,0);
    textAlign(LEFT, CENTER);
    text(star.Name, x + 2, y - 8);
    line(x, y - 3, x, y + 3);
    line(x + 3, y, x - 3, y);
    
    stroke(255,0,0);
    noFill();
    ellipse(x, y, star.AbsMag,star.AbsMag);
  }
}

//void drawline()
//{
//  line(mousePressed(x)
//}

void mousePressed()
{
  float x = mouseX;      
  float y = mouseY;
}
void draw()
{
}