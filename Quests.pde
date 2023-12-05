class Quests
{
  int reward;
  int fishAmount;
  int fishType;
  int fishCaught;
  
  float xPos, yPos;
  
  String fishKind[] = { ""," fish", " yellow fish", " blue fish"," striped fish", " blobFish" };
  
  boolean redeemed = false;
  
  boolean completed()
  {
    return false;
  }
  
  public Quests( int x, int y)
  {
    fishAmount = int(random(5,25));
    fishType = int(random(1,6));
    reward = (fishAmount * fishType)*10;
    xPos = x;
    yPos = y;
  }
  void createNewQuest()
  {
    if( redeemed )
    {
      for (Fish f : fishs)
      {
        reward = fishAmount * f.fishValue;
        fishAmount = int(random(5,25));
        fishType = int(random(0,4));
        redeemed = false;
      }
    }
  }
  void finishQuest()
  {
    if( completed() && dist(mouseX,mouseY,xPos,yPos) < 25 )
    {
       redeemed = true;
       money += reward;
    }
  }
  void drawQuest()
  {
    push();
    fill(0);
    text("catch "+fishAmount+fishKind[fishType],xPos,yPos-75);
    image(fishPic[fishType-1],xPos,yPos);
    text(fishCaught+"/"+fishAmount,xPos,yPos+50);
    text("reward: $"+reward,xPos,yPos+75);
    pop();
  }
  
}
