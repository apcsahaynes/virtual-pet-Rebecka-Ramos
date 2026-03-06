// =============================================
//
// OPTION A: Use Processing graphics
//   - Write your drawing code inside drawPetGraphic()
//   - You can make multiple versions (happy, sad, etc.)
//     and call the right one based on pet state
//
// OPTION B: Use images (PImage)
//   - Add image files to your sketch's /data folder
//   - Load them in loadPetImages() below
//   - Add them to the petImages ArrayList
//   - Display the right one in drawPetGraphic()
// =============================================


// =============================================
// OPTION B SETUP  (comment out if using Option A)
// =============================================

// ArrayList<PImage> petImages;   // one image per mood/state

// void loadPetImages() {
//   petImages = new ArrayList<PImage>();
//   petImages.add(loadImage("neutral.png"));  // index 0 - neutral
//   petImages.add(loadImage("happy.png"));    // index 1 - happy
//   petImages.add(loadImage("sad.png"));      // index 2 - sad
//   // add more as needed!
// }
//
// Call loadPetImages() at the end of setup() in VirtualPet.pde


// =============================================
// Pet area background + border
// (shared by both options - leave this)
// =============================================
color bodyColor = color(170, 210, 255);

void drawPetArea() {
  // Background for the pet zone
  fill(#FCE5F9);
  stroke(#F53ED7);
  strokeWeight(2);
  rect(20, 20, 380, 390, 16);

  // Draw whichever graphic option you're using
  drawPetGraphic();
}


// =============================================
// OPTION A: Drawing with Processing shapes
// Replace or add to the placeholder below!
// =============================================

void drawPetGraphic() {

  // ---- Placeholder shape ----
  // Replace this with your own drawing,
  // or swap it for an image (see Option B below).
  
  //body color
  

  // Body
  fill(bodyColor);
  noStroke();
  ellipse(200, 220, 140, 120);

  // Head
  fill(bodyColor);
  ellipse(200, 145, 100, 90);

  // Eyes
  fill(50);
  ellipse(180, 138, 14, 14);
  ellipse(220, 138, 14, 14);

  // Eye shine
  fill(255);
  ellipse(185, 134, 5, 5);
  ellipse(225, 134, 5, 5);

  // Nose
  fill(255, 160, 180);
  ellipse(200, 152, 10, 7);

  // Mouth
  noFill();
  stroke(80);
  strokeWeight(2);
  arc(200, 160, 24, 14, 0, PI);

  // Ears
  fill(bodyColor);
  noStroke();
  triangle(168, 108, 158, 75, 185, 100);
  triangle(232, 108, 242, 75, 215, 100);

  // Inner ears
  fill(255, 180, 200);
  triangle(170, 105, 162, 82, 183, 100);
  triangle(230, 105, 238, 82, 217, 100);

  // ---- END placeholder ----


  // =============================================
  // OPTION B: Display a PImage instead
  // Uncomment and adjust once images are loaded.
  // =============================================

  // Choose which image based on pet state:
  // int index = 0; // neutral default
  // if (myPet.getEnergyLevel() >= 5 && myPet.getHappinessLevel() >= 5) {
  //   index = 1; // happy
  // } else if (myPet.getHappinessLevel() == 0) {
  //   index = 2; // sad
  // }
  // image(petImages.get(index), 60, 60, 300, 300);
}

void drawPetHappy(){
  //head
   fill(170, 210, 255);
  ellipse(200, 145, 100, 90);
//eyes
fill(50);
  arc(180, 138, 14, 14, PI, PI+PI, CHORD);
  arc(220, 138, 14, 14, PI, PI+PI, CHORD);
  
  fill(255);
  ellipse(185, 134, 5, 5);
  ellipse(225, 134, 5, 5);
  
  fill(255, 180, 200);
  arc(200, 160, 20, 20, 0, PI, CHORD);
  //nose
   fill(255, 160, 180);
  ellipse(200, 152, 10, 7);
  
  
}

void drawPetSad(){
//head
fill(bodyColor);
  ellipse(200, 145, 100, 90);
  // eyes
  fill(50);
  arc(180,138,14,14,0,PI, CHORD);
  arc(220,138,14,14,0,PI, CHORD);
  
  //nose
  fill(255, 160, 180);
  ellipse(200, 152, 10, 7);
 
  //mouth
  noFill();
  stroke(80);
  strokeWeight(2);
  arc(200, 170, 24, 14, PI, PI*2);  

}


