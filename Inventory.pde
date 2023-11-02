class Inventory
{
  public Inventory()
  {
  
  }
  void selectBoat()
  {
    //if ( dist(mouseX, mouseY, width-50, 50) < 25 && started && inInventory)//close inventory
    if( dist(mouseX, mouseY, 400, 300) < 100)
    {
      boats = 1;
    }
    if(s.boatBought[0] && dist(mouseX, mouseY, 650, 300) < 100)
    {
      boats = 2;
    }
    if(s.boatBought[1] && dist(mouseX, mouseY, width-650, 300) < 100)
    {
      boats = 3;
    }
    if(s.boatBought[2] && dist(mouseX, mouseY, width-400, 300) < 100)
    {
      boats = 4;
    }
  }
  void selectHook()
  {
  
  }
}
