//Raul Alvarez
//C14722441

ArrayList<Star> stars = new ArrayList<Star>();

void setup()
{
  size(800, 800);
}

void loadExpenses() {
  
  //Create an array of lines
  String[] lines = loadStrings("expenses.txt");
  
  for(int i = 0; i < lines.length; i++)
  {
    // transform line into class.
    Star star = new Star(lines[i]);
    
    //Add class into arraylist;
    stars.add(star);
  }
}
void draw()
{
  
}