class PowerUps
{
  int powerCount[] = {0, 0, 0, 0, 0};
  int extraFishCap = 10;
  int frenzyFish;
  int rangelevel = 0;

  boolean usingPower[] = {false, false, false, false, false};

  float moneyBonus;
  float speedBonus;

  public PowerUps()
  {
    
  }

  void moneyPower()
  {
    
  }

  void fishCapPower()
  {
    
  }

  void speedPower()
  {
    
  }

  void fishFrenzy()
  {
    
  }

  void rangePower()
  {
    if (usingPower[4])
    {
      println("powering");
      fill(255);
      text(powerTime[4], 50, 50);
      println(powerTime[4]);
      r.hookRange = 500;
      //circle(50,50,50);
      if (millis() - powerTime[4] >= powerWait)
      {
        usingPower[4] = false;
        r.hookRange = 50;
        powerTime[4] = millis()+5000;
        
        println("done");
      }
    }
  }
}
