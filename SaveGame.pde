//this is all the code for saving the game
class SaveGame
{
  
void saveGame()
{
  try
  {
    PrintWriter pw = createWriter("save.txt");
    pw.println(money);
    pw.println(r.hookLevel);
    pw.println(r.rodLevel);
    pw.println(a.unlocked[0]);
    pw.println(a.unlocked[1]);
    pw.println(a.unlocked[2]);
    pw.println(a.unlocked[3]);
    pw.println(a.unlocked[4]);
    pw.println(s.hookBought[0]);
    pw.println(s.hookBought[1]);
    pw.println(s.hookBought[2]);
    pw.println(s.hookBought[3]);
    pw.println(s.hookBought[4]);
    pw.println(s.rodBought[0]);
    pw.println(s.rodBought[1]);
    pw.println(s.rodBought[2]);
    pw.println(s.rodBought[3]);
    pw.println(s.rodBought[4]);
    pw.println(s.boatBought[0]);
    pw.println(s.boatBought[1]);
    pw.println(s.boatBought[2]);
    

    println("game saved");
    pw.flush();
    pw.close();
  }
  catch( Exception e )
  {
    println("error saving");
  }
}
void loadGame()
{
   try
  {
    String [] data = loadStrings("save.txt");
    
     money = Integer.parseInt(data[0]);
     r.hookLevel = Integer.parseInt(data[1]);
     r.rodLevel = Integer.parseInt(data[2]);
     a.unlocked[0] = Boolean.parseBoolean(data[3]);
     a.unlocked[1] = Boolean.parseBoolean(data[4]);
     a.unlocked[2] = Boolean.parseBoolean(data[5]);
     a.unlocked[3] = Boolean.parseBoolean(data[6]);
     a.unlocked[4] = Boolean.parseBoolean(data[7]);
     s.hookBought[0] = Boolean.parseBoolean(data[8]);
     s.hookBought[1] = Boolean.parseBoolean(data[9]);
     s.hookBought[2] = Boolean.parseBoolean(data[10]);
     s.hookBought[3] = Boolean.parseBoolean(data[11]);
     s.hookBought[4] = Boolean.parseBoolean(data[12]);
     s.rodBought[0] = Boolean.parseBoolean(data[13]);
     s.rodBought[1] = Boolean.parseBoolean(data[14]);
     s.rodBought[2] = Boolean.parseBoolean(data[15]);
     s.rodBought[3] = Boolean.parseBoolean(data[16]);
     s.rodBought[4] = Boolean.parseBoolean(data[17]);
     s.boatBought[0] = Boolean.parseBoolean(data[18]);
     s.boatBought[1] = Boolean.parseBoolean(data[19]);
     s.boatBought[2] = Boolean.parseBoolean(data[20]);
  }
  catch(Exception e)
  {
    println("error load file");
    
  }
}
}
