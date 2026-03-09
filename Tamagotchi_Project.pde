VirtualPet myPet;

Button feedButton;
Button playButton;
Button petButton;

// How many milliseconds between each status update
// (increase to slow down, decrease to speed up)
final int UPDATE_INTERVAL = 1000; //original speed was 10000
int lastUpdateTime = 0;

// ---- Action message ----
String actionMessage = "";
int messageTime = 0;
final int MESSAGE_DURATION = 2000; // milliseconds to show the message

void setup() {
  size(600, 500);
  textFont(createFont("Arial", 16, true));

  myPet = new VirtualPet("Beelzebub");

  // Buttons sit along the bottom of the screen
  // Button(label, x, y, width, height)
  feedButton = new Button("Feed", 150, 430, 120, 45);
  playButton = new Button("Play", 330, 430, 120, 45);
  petButton = new Button("Pet", 450, 300,120, 45);
  
}

void draw() {
  background(#FFEDFD);

  // ---- Timed status update ----
  if (millis() - lastUpdateTime >= UPDATE_INTERVAL) {
    myPet.updateStatus();
    lastUpdateTime = millis();
  }

  // ---- Draw sections ----
  drawPetArea();
  drawStats(myPet);
  feedButton.display();
  playButton.display();
  petButton.display();
  drawMessage();
 
  
  if (myPet.getHappinessLevel() > 10){
    drawPetHappy();
  } 
  else if (myPet.getHappinessLevel() < 5){
  drawPetSad();
  } 
 
  
  
 
}

String foodName;

void mousePressed() {
  if (feedButton.isClicked(mouseX, mouseY)) {
    //random(1,5);
    
    
    if((int) random(1,4)==1){
      foodName = "Popeyes";
    }
    else if((int) random(1,4)==2){
   foodName = "Strawberry";
  }
   else if((int) random(1,4)==3){
   foodName = "Chocolate";
  }
  else{
    foodName = "Milk";
  }
    Food f = new Food(foodName, 3, 2, 2);
    myPet.feed(f);
    showMessage(f.getName() + " eaten!");
  }

  if (playButton.isClicked(mouseX, mouseY)) {
    String gameName;
    if((int) random(1,4)==1){
      gameName = "Uno";
    }
    else if((int) random(1,4)==2){
   gameName = "Go Fish";
  }
  else if((int) random(1,4)==3){
   gameName = "Roulette";
  }
  else{
    gameName = "Poker";
  }
    
    Game g = new Game(gameName, 2, 1);
    String result;
    if(g.isWinner() == true){
    result = " has won! :D";
 //   drawPetHappy();
    }
    else {
    result = " has lost! :(";
  //  drawPetSad();
    }
    myPet.play(g);
    showMessage(g.getName() + " played!" +" "+ myPet.getName() + result);
   
  }
  
  if (petButton.isClicked(mouseX, mouseY)) {
    Pet p = new Pet("petting",2,2);
    myPet.pet(p);
    showMessage(myPet.getName() + " was pet!");
  }
  
}

// Call this to set a new message
void showMessage(String msg) {
  actionMessage = msg;
  messageTime = millis();
}
