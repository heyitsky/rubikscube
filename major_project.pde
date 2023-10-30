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

void setup() {
  size(800,800);
}

void draw() {
  displayRubiksCube();
}

void displayRubiksCube() {
  int tileSize = 25; // Adjust the size of each tile as needed

  background(255); // Set the background to white

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
    U();
  } else { UA(); }
}
