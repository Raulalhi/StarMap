class Star {
 float hab;
 String name;
 float distance;
 float Xg, Yg, Zg;
 float AbsMag;
 
 
 Star(String TableRow)
  {
    String[] parts = line.split(",");
    hab = Float.parseFloat(parts[2]);
    name = parts[3];
    distance = Float.parseFloat(parts[12]);
    Xg = Float.parseFloat(parts[13]);
    Yg = Float.parseFloat(parts[14]);
    Zg = Float.parseFloat(parts[15]);
    AbsMag = Float.parseFloat(parts[16]);
  }
}