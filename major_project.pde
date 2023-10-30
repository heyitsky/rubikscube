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
  // move faceOne[0][0]...faceOne[0][2] to faceTwo[0][0]...faceOne[0][2]
  // 
}
