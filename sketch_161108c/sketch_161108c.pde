//Raul Alvarez
//C14722441

ArrayList<Star> stars = new ArrayList<Star>();
Table table;

void setup()
{
  size(800, 800);
  loaddata();
  printStars();
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
void draw()
{
  
}