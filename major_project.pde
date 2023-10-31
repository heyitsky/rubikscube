// SETUP:

// Visuals:
// - 2D array for each face
// - each value represents a colour (Red, Green, Blue, Yellow, Orange, Pink)
// - when a movement is made (e.g. L), shift the values in the corresponding arrays to match
// - using universal rubiks cube notation for program logic
// - The cube is shown from a perspective where 3 sides can be seen (left, right and top)
// - Once the moves have been set, the cube is then animated to show the movements from the user
// - Once this has completed, the animation will then reverse itself and bring it back to the 
// original state, which will then loop over until the user wants to make a new combination or end.

// Audio:
// - When a movement is made, a corresponding sound is played to it
// - The sound is played when the animation is played, forwards or backwards


// MOVES:
// - U (move the top layer clockwise)
// - UA (move the top layer anticlockwise)
// - D (move the bottom layer clockwise)
// - DA (move the bottom layer anticlockwise
// - R (move the right layer clockwise)
// - RA (move the right layer anticlockwise)
// - L (move the left layer clockwise)
// - LA (move the left layer anticlockwise)
// - F (move the front face clockwise)
// - FA (move the front face anticlockwise)
// - B (move the back face clockwise)
// - BA (move the back face anticlockwise)
// ------------------------

int[][] faceOne = { {1, 1, 1}, {1, 1, 1}, {1, 1, 1} }; //front left
int[][] faceTwo = { {2, 2, 2}, {2, 2, 2}, {2, 2, 2} }; //front right
int[][] faceThree = { {3, 3, 3}, {3, 3, 3}, {3, 3, 3} }; //back right
int[][] faceFour = { {4, 4, 4}, {4, 4, 4}, {4, 4, 4} }; //back left
int[][] faceFive = { {5, 5, 5}, {5, 5, 5}, {5, 5, 5} }; //top
int[][] faceSix = { {6, 6, 6}, {6, 6, 6}, {6, 6, 6} }; //bottom

int rCubeX = 200;
int rCubeY = 200;
int distance = 150;
int offset = distance*4/7;

void U() {
  // Save a copy of the top row of each face
  int[] tempTopRowFaceOne = faceOne[0].clone();
  int[] tempTopRowFaceTwo = faceTwo[0].clone();
  int[] tempTopRowFaceThree = faceThree[0].clone();
  int[] tempTopRowFaceFour = faceFour[0].clone();

  // Rotate the top row of each face clockwise
  faceOne[0][0] = tempTopRowFaceFour[0];
  faceOne[0][1] = tempTopRowFaceFour[1];
  faceOne[0][2] = tempTopRowFaceFour[2];

  faceTwo[0][0] = tempTopRowFaceOne[0];
  faceTwo[0][1] = tempTopRowFaceOne[1];
  faceTwo[0][2] = tempTopRowFaceOne[2];

  faceThree[0][0] = tempTopRowFaceTwo[0];
  faceThree[0][1] = tempTopRowFaceTwo[1];
  faceThree[0][2] = tempTopRowFaceTwo[2];

  faceFour[0][0] = tempTopRowFaceThree[0];
  faceFour[0][1] = tempTopRowFaceThree[1];
  faceFour[0][2] = tempTopRowFaceThree[2];

  // Ensure you play the corresponding sound here.
}

void UA() {
  // Save a copy of the top row of each face
  int[] tempTopRowFaceOne = faceOne[0].clone();
  int[] tempTopRowFaceTwo = faceTwo[0].clone();
  int[] tempTopRowFaceThree = faceThree[0].clone();
  int[] tempTopRowFaceFour = faceFour[0].clone();

  // Rotate the top row of each face anticlockwise
  faceOne[0][0] = tempTopRowFaceTwo[0];
  faceOne[0][1] = tempTopRowFaceTwo[1];
  faceOne[0][2] = tempTopRowFaceTwo[2];

  faceTwo[0][0] = tempTopRowFaceThree[0];
  faceTwo[0][1] = tempTopRowFaceThree[1];
  faceTwo[0][2] = tempTopRowFaceThree[2];

  faceThree[0][0] = tempTopRowFaceFour[0];
  faceThree[0][1] = tempTopRowFaceFour[1];
  faceThree[0][2] = tempTopRowFaceFour[2];

  faceFour[0][0] = tempTopRowFaceOne[0];
  faceFour[0][1] = tempTopRowFaceOne[1];
  faceFour[0][2] = tempTopRowFaceOne[2];

  // Ensure you play the corresponding sound here.
}

void D() {
  // Save a copy of the bottom row of each face
  int[] tempBottomRowFaceOne = faceOne[2].clone();
  int[] tempBottomRowFaceTwo = faceTwo[2].clone();
  int[] tempBottomRowFaceThree = faceThree[2].clone();
  int[] tempBottomRowFaceFour = faceFour[2].clone();

  // Rotate the bottom row of each face clockwise
  faceOne[2][0] = tempBottomRowFaceFour[0];
  faceOne[2][1] = tempBottomRowFaceFour[1];
  faceOne[2][2] = tempBottomRowFaceFour[2];

  faceTwo[2][0] = tempBottomRowFaceOne[0];
  faceTwo[2][1] = tempBottomRowFaceOne[1];
  faceTwo[2][2] = tempBottomRowFaceOne[2];

  faceThree[2][0] = tempBottomRowFaceTwo[0];
  faceThree[2][1] = tempBottomRowFaceTwo[1];
  faceThree[2][2] = tempBottomRowFaceTwo[2];

  faceFour[2][0] = tempBottomRowFaceThree[0];
  faceFour[2][1] = tempBottomRowFaceThree[1];
  faceFour[2][2] = tempBottomRowFaceThree[2];

  // Ensure you play the corresponding sound here.
}

void DA() {
  // Save a copy of the bottom row of each face
  int[] tempBottomRowFaceOne = faceOne[2].clone();
  int[] tempBottomRowFaceTwo = faceTwo[2].clone();
  int[] tempBottomRowFaceThree = faceThree[2].clone();
  int[] tempBottomRowFaceFour = faceFour[2].clone();

  // Rotate the bottom row of each face counterclockwise
  faceOne[2][0] = tempBottomRowFaceTwo[0];
  faceOne[2][1] = tempBottomRowFaceTwo[1];
  faceOne[2][2] = tempBottomRowFaceTwo[2];

  faceTwo[2][0] = tempBottomRowFaceThree[0];
  faceTwo[2][1] = tempBottomRowFaceThree[1];
  faceTwo[2][2] = tempBottomRowFaceThree[2];

  faceThree[2][0] = tempBottomRowFaceFour[0];
  faceThree[2][1] = tempBottomRowFaceFour[1];
  faceThree[2][2] = tempBottomRowFaceFour[2];

  faceFour[2][0] = tempBottomRowFaceOne[0];
  faceFour[2][1] = tempBottomRowFaceOne[1];
  faceFour[2][2] = tempBottomRowFaceOne[2];

  // Ensure you play the corresponding sound here.
}

void R() {
  // Save a copy of the right column of each face
  int[] tempRightColumnFaceOne = new int[3];
  int[] tempRightColumnFaceTwo = new int[3];
  int[] tempRightColumnFaceThree = new int[3];
  int[] tempRightColumnFaceFour = new int[3];

  for (int i = 0; i < 3; i++) {
    tempRightColumnFaceOne[i] = faceOne[i][2];
    tempRightColumnFaceTwo[i] = faceTwo[i][2];
    tempRightColumnFaceThree[i] = faceThree[i][2];
    tempRightColumnFaceFour[i] = faceFour[i][2];
  }

  // Rotate the right column of each face clockwise
  for (int i = 0; i < 3; i++) {
    faceOne[i][2] = tempRightColumnFaceFour[(i + 2) % 3];
    faceTwo[i][2] = tempRightColumnFaceOne[i];
    faceThree[i][2] = tempRightColumnFaceTwo[i];
    faceFour[i][2] = tempRightColumnFaceThree[i];
  }

  // Ensure you play the corresponding sound here.
}

void RA() {
  // Save a copy of the right column of each face
  int[] tempRightColumnFaceOne = new int[3];
  int[] tempRightColumnFaceTwo = new int[3];
  int[] tempRightColumnFaceThree = new int[3];
  int[] tempRightColumnFaceFour = new int[3];

  for (int i = 0; i < 3; i++) {
    tempRightColumnFaceOne[i] = faceOne[i][2];
    tempRightColumnFaceTwo[i] = faceTwo[i][2];
    tempRightColumnFaceThree[i] = faceThree[i][2];
    tempRightColumnFaceFour[i] = faceFour[i][2];
  }

  // Rotate the right column of each face counterclockwise
  for (int i = 0; i < 3; i++) {
    faceOne[i][2] = tempRightColumnFaceTwo[i];
    faceTwo[i][2] = tempRightColumnFaceThree[i];
    faceThree[i][2] = tempRightColumnFaceFour[i];
    faceFour[i][2] = tempRightColumnFaceOne[(i + 2) % 3];
  }

  // Ensure you play the corresponding sound here.
}

void L() {
  // Save a copy of the left column of each face
  int[] tempLeftColumnFaceOne = new int[3];
  int[] tempLeftColumnFaceTwo = new int[3];
  int[] tempLeftColumnFaceThree = new int[3];
  int[] tempLeftColumnFaceFour = new int[3];

  for (int i = 0; i < 3; i++) {
    tempLeftColumnFaceOne[i] = faceOne[i][0];
    tempLeftColumnFaceTwo[i] = faceTwo[i][0];
    tempLeftColumnFaceThree[i] = faceThree[i][0];
    tempLeftColumnFaceFour[i] = faceFour[i][0];
  }

  // Rotate the left column of each face clockwise
  for (int i = 0; i < 3; i++) {
    faceOne[i][0] = tempLeftColumnFaceTwo[i];
    faceTwo[i][0] = tempLeftColumnFaceThree[i];
    faceThree[i][0] = tempLeftColumnFaceFour[i];
    faceFour[i][0] = tempLeftColumnFaceOne[(i + 2) % 3];
  }

  // Ensure you play the corresponding sound here.
}

void LA() {
  // Save a copy of the left column of each face
  int[] tempLeftColumnFaceOne = new int[3];
  int[] tempLeftColumnFaceTwo = new int[3];
  int[] tempLeftColumnFaceThree = new int[3];
  int[] tempLeftColumnFaceFour = new int[3];

  for (int i = 0; i < 3; i++) {
    tempLeftColumnFaceOne[i] = faceOne[i][0];
    tempLeftColumnFaceTwo[i] = faceTwo[i][0];
    tempLeftColumnFaceThree[i] = faceThree[i][0];
    tempLeftColumnFaceFour[i] = faceFour[i][0];
  }

  // Rotate the left column of each face counterclockwise
  for (int i = 0; i < 3; i++) {
    faceOne[i][0] = tempLeftColumnFaceFour[(i + 2) % 3];
    faceTwo[i][0] = tempLeftColumnFaceOne[i];
    faceThree[i][0] = tempLeftColumnFaceTwo[i];
    faceFour[i][0] = tempLeftColumnFaceThree[i];
  }

  // Ensure you play the corresponding sound here.
}


void F() {
  // Save a copy of the front face
  int[][] tempFrontFace = new int[3][3];
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempFrontFace[i][j] = faceOne[i][j];
    }
  }

  // Rotate the front face clockwise
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      faceOne[i][j] = tempFrontFace[2 - j][i]; // Rotate clockwise
    }
  }

  // Update the adjacent faces (top, bottom, right, and left) accordingly
  int[] tempTopRowFaceTwo = faceTwo[0].clone();
  int[] tempRightColumnFaceThree = new int[3];
  int[] tempBottomRowFaceFour = new int[3];
  int[] tempLeftColumnFaceOne = new int[3];

  // Rotate the top row of faceTwo clockwise
  for (int i = 0; i < 3; i++) {
    faceTwo[0][i] = tempLeftColumnFaceOne[2 - i];
  }

  // Rotate the right column of faceThree clockwise
  for (int i = 0; i < 3; i++) {
    tempRightColumnFaceThree[i] = faceThree[i][2];
    faceThree[i][2] = tempTopRowFaceTwo[i];
  }

  // Rotate the bottom row of faceFour clockwise
  for (int i = 0; i < 3; i++) {
    tempBottomRowFaceFour[i] = faceFour[2][2 - i];
    faceFour[2][2 - i] = tempRightColumnFaceThree[i];
  }

  // Rotate the left column of faceOne clockwise
  for (int i = 0; i < 3; i++) {
    tempLeftColumnFaceOne[i] = faceOne[i][0];
    faceOne[i][0] = tempBottomRowFaceFour[i];
  }

  // Ensure you play the corresponding sound here.
}

void FA() {
  // Save a copy of the front face
  int[][] tempFrontFace = new int[3][3];
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempFrontFace[i][j] = faceOne[i][j];
    }
  }

  // Rotate the front face counterclockwise
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      faceOne[i][j] = tempFrontFace[j][2 - i]; // Rotate counterclockwise
    }
  }

  // Update the adjacent faces (top, bottom, right, and left) accordingly
  int[] tempTopRowFaceTwo = faceTwo[0].clone();
  int[] tempRightColumnFaceThree = new int[3];
  int[] tempBottomRowFaceFour = new int[3];
  int[] tempLeftColumnFaceOne = new int[3];

  // Rotate the top row of faceTwo counterclockwise
  for (int i = 0; i < 3; i++) {
    faceTwo[0][i] = tempRightColumnFaceThree[2 - i];
  }

  // Rotate the right column of faceThree counterclockwise
  for (int i = 0; i < 3; i++) {
    tempRightColumnFaceThree[i] = faceThree[i][2];
    faceThree[i][2] = tempBottomRowFaceFour[i];
  }

  // Rotate the bottom row of faceFour counterclockwise
  for (int i = 0; i < 3; i++) {
    tempBottomRowFaceFour[i] = faceFour[2][i];
    faceFour[2][i] = tempLeftColumnFaceOne[2 - i];
  }

  // Rotate the left column of faceOne counterclockwise
  for (int i = 0; i < 3; i++) {
    faceOne[i][0] = tempTopRowFaceTwo[i];
  }

  // Ensure you play the corresponding sound here.
}


void setup() {
  size(800,800);
}

void draw() {
  
  fill(getColor(faceOne[0][0]));
  quad(rCubeX, rCubeY, rCubeX+distance, rCubeY+offset,  rCubeX+distance, rCubeY+offset+distance, rCubeX, rCubeY+distance);
  fill(getColor(faceTwo[0][0]));
  quad(rCubeX+distance, rCubeY+offset, rCubeX+(2*distance), rCubeY, rCubeX+(2*distance), rCubeY+distance, rCubeX+distance, rCubeY+offset+distance);
  fill(getColor(faceThree[0][0]));
  quad(rCubeX, rCubeY, rCubeX+distance, rCubeY-offset, rCubeX+(2*distance), rCubeY, rCubeX+distance, rCubeY+offset);
  noFill();
  line(rCubeX+distance/3, rCubeY+offset/3, rCubeX+distance/3, rCubeY+offset/3+distance);
  line(rCubeX+distance*2/3, rCubeY+offset*2/3, rCubeX+distance*2/3, rCubeY+offset*2/3+distance);
  
  line(rCubeX, rCubeY+distance/3, rCubeX+distance, rCubeY+(distance/3)+offset);
  line(rCubeX, rCubeY+distance*2/3, rCubeX+distance, rCubeY+(distance*2/3)+offset);
  
  line(rCubeX+distance, rCubeY+offset+ distance/3, rCubeX+distance*2, rCubeY+offset+distance/3-offset);
  line(rCubeX+distance, rCubeY+offset+distance*2/3, rCubeX+distance*2, rCubeY+offset+distance*2/3-offset);
  
  line(rCubeX+distance+distance/3, rCubeY+offset-offset/3, rCubeX+distance+distance/3, rCubeX+offset-offset/3+distance);
  line(rCubeX+distance+distance*2/3, rCubeY+offset-offset*2/3, rCubeX+distance+distance*2/3, rCubeX+offset-offset*2/3+distance);
  
  line(rCubeX+distance/3, rCubeY+offset/3, rCubeX+distance+distance/3, rCubeY-offset+offset/3);
  line(rCubeX+distance*2/3, rCubeY+offset*2/3, rCubeX+distance+distance*2/3, rCubeY-offset+offset*2/3);
  
  line(rCubeX+distance/3, rCubeY-offset/3, rCubeX+distance+distance/3, rCubeY+offset-offset/3);
  line(rCubeX+distance*2/3, rCubeY-offset*2/3, rCubeX+distance+distance*2/3, rCubeY+offset-offset*2/3);

  displayRubiksCube();
  textSize(18);
  fill(0);
  text("Click on this side to rotate left", width/12, height*6/8);
  text("Click on this side to rotate right", width*3/5, height*6/8);
  
}

void displayRubiksCube() {
  int tileSize = 25; // Adjust the size of each tile as needed

  // Loop through each face and draw the tiles
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      // Draw faceOne
      fill(getColor(faceOne[i][j]));
      rect(i * tileSize, j * tileSize, tileSize, tileSize);

      // Draw faceTwo
      fill(getColor(faceTwo[i][j]));
      rect((i + 3) * tileSize, j * tileSize, tileSize, tileSize);
      
      // Draw faceThree
      fill(getColor(faceThree[i][j]));
      rect((i + 6) * tileSize, j * tileSize, tileSize, tileSize);
      
      // Draw faceFour
      fill(getColor(faceFour[i][j]));
      rect(i * tileSize, (j+3) * tileSize, tileSize, tileSize);
      
      // Draw faceFive
      fill(getColor(faceFive[i][j]));
      rect((i+3) * tileSize, (j+3) * tileSize, tileSize, tileSize);
      
      // Draw faceSix
      fill(getColor(faceSix[i][j]));
      rect((i + 6) * tileSize, (j+3) * tileSize, tileSize, tileSize);
    }
  }
}

color getColor(int value) {
  // Define color mappings for your values (e.g., Red, Green, Blue, Yellow, Orange, Pink)
  switch (value) {
    case 1:
      return color(255, 0, 0); // Red
    case 2:
      return color(0, 255, 0); // Green
    case 3:
      return color(0, 0, 255); // Blue
    case 4:
      return color(255, 255, 0); // Yellow
    case 5:
      return color(255, 165, 0); // Orange
    case 6:
      return color(255, 192, 203); // Pink
    default:
      return color(255); // Default color (white)
  }
}

void mouseClicked() {
  if (mouseX > width/2) {
    L();
  } else { LA(); }
}
