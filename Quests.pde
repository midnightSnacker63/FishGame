class Quests
{
  int reward;
  int fishAmount;
  int fishType;
  int fishCaught;
  
  float xPos, yPos;
  
  String fishKind[] = { " fish", " yellow fish", " blue fish"," striped fish", " blobFish" };
  
  boolean redeemed = false;
  
  boolean completed()
  {
    if(fishCaught >= fishAmount)
    {
      
      return true;
    }
    return false;
  }
  
  public Quests( int x, int y)
  {
    fishAmount = int(random(5,25));
    fishType = int(random(0,5));
    reward = (fishAmount * (fishType+1))*15;
    xPos = x;
    yPos = y;
  }
  void createNewQuest()
  {
    if( redeemed )
    {
        reward = (fishAmount * fishType+1)*15;
        fishCaught = 0;
        fishAmount = int(random(5,25));
        fishType = int(random(0,4));
        redeemed = false;
    }
  }
  void finishQuest()
  {
    if( completed() && dist(mouseX,mouseY,xPos,yPos) < 50 )
    {
       redeemed = true;
       money += reward;
       println("done");
    }
  }
  void drawQuest()
  {
    push();
    fill(0);
    text("catch "+fishAmount+fishKind[fishType],xPos,yPos-75);
    image(fishPic[fishType],xPos,yPos);
    text(fishCaught+"/"+fishAmount,xPos,yPos+50);
    text("reward: $"+reward,xPos,yPos+75);
    if(completed())
    {
      push();
      fill(0);
      text("COMPLETED",xPos,yPos);
      pop();
    }
    pop();
  }
  
}
