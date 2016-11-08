class Star {
 float Hab;
 String Name;
 float distance;
 float Xg, Yg, Zg;
 float AbsMag;
 
 
 Star(float thab, String tName, float tdistance, float txg, float tyg, float tzg, float tAbsMag)
  {
    Hab = thab;
    Name = tName;
    distance = tdistance;
    Xg = txg;
    Yg = tyg;
    Zg = tzg;
    AbsMag = tAbsMag;
  }
  
  String toString()
  {
    return Hab + "\t" + Name + "\t" + distance + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }
}