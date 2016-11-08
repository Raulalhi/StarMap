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
}

void drawStars()
{
  float x;
  float y;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  
   for(Star star:stars)
  {
    if(star.Xg > maxX)
    {
      maxX = star.Xg;
    }
    
    if(star.Yg > maxY)
    {
      maxY = star.Yg;
    }

  }
  for(int i 0; i < stars.size(); i++)
  {
    Star star = stars.get(i);
    stroke(255,255,0);
    line(star.Xg - 10, star.Yg - 10, star.Xg + 10, star.Yg + 10);
    
    stroke(255,0,0);
    noFill();
    ellipse(star.Xg, star.Yg, star.AbsMag,star.AbsMag);
  }
}
void draw()
{
}