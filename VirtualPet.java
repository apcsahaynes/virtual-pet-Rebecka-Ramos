
public class VirtualPet {
  private String name;
  private int energy;
  private int weight;
  private int happiness; 
  private int ageMonths;
  private int ageYears;

  public VirtualPet(String name){
    this.name = name;
    this.energy = 10;
    this.weight = 5;
    this.happiness = 5;
    this.ageMonths = 0;
    this.ageYears = 0;
  }

  public String getName(){
    return name;
  }
  
  public int getEnergyLevel(){
    return energy;
  }

  public int getHappinessLevel(){
    return happiness;
  }
  
  public int getWeight(){
  return weight;
}

  public void feed(Food food){
      energy+=food.getEnergyIncrease();
      weight+=food.getWeightGain();
      happiness+=food.getHappinessIncrease();
    
  }

  public boolean play(Game game){
    if (happiness < 10){
      happiness+=game.getHappinessIncr();
    }
    if (weight > 5){
      weight-=game.getWeightDecr();
    }
    return game.isWinner();
  }
  
  public void pet(Pet p){
    happiness+=p.getHappyIncrease();
  }
  

  public void updateStatus(){
    if (happiness > 0){
      happiness--;
    }
    if (energy > 0){
      energy--;
    }
    ageMonths++;
    ageConverter();
  }

  private void ageConverter(){
    if (ageMonths >= 12){
      ageYears++;
      ageMonths = 0;
    }
  } 
  


  public String toString(){
    return name + "'s information: \nEnergy: " + energy 
    + "\nweight: " + weight + "\nHappiness: " + happiness
    + "\nAge: " + ageYears + " years and " + ageMonths + " months.";
  }
}
