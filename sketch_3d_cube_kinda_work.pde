PVector[][][] cubes = new PVector[3][3][3];
color[][][] cubeColors = new color[3][3][3]; // Initialize the cubeColors array
float angleX = 0;
float angleY = 0;

void setup() {
  size(400, 400, P3D);

  for (int x = 0; x < 3; x++) {
    for (int y = 0; y < 3; y++) {
      for (int z = 0; z < 3; z++) {
        if (x == 0) {
          cubeColors[x][y][z] = color(255, 0, 0);  // Red face
        } else if (x == 2) {
          cubeColors[x][y][z] = color(0, 255, 0);  // Green face
        } else if (y == 0) {
          cubeColors[x][y][z] = color(0, 0, 255);  // Blue face
        } else if (y == 2) {
          cubeColors[x][y][z] = color(255, 255, 0);  // Yellow face
        } else if (z == 0) {
          cubeColors[x][y][z] = color(255);  // White face
        } else {
          cubeColors[x][y][z] = color(255, 165, 0);  // Orange face
        }
      }
    }
  }

  for (int x = 0; x < 3; x++) {
    for (int y = 0; y < 3; y++) {
      for (int z = 0; z < 3; z++) {
        cubes[x][y][z] = new PVector(x * 100 - 100, y * 100 - 100, z * 100 - 100);
      }
    }
  }
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  rotateX(angleX);
  rotateY(angleY);

  for (int x = 0; x < 3; x++) {
    for (int y = 0; y < 3; y++) {
      for (int z = 0; z < 3; z++) {
        pushMatrix();
        translate(cubes[x][y][z].x, cubes[x][y][z].y, cubes[x][y][z].z);
        fill(cubeColors[x][y][z]);
        box(80);
        popMatrix();
      }
    }
  }
}

void mouseDragged() {
  float dx = radians((pmouseY - mouseY) * 1.0);
  float dy = radians((pmouseX - mouseX) * 1.0);
  angleX += dx;
  angleY -= dy;
}
