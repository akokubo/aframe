int side = 32;

String hexString = "0123456789ABCDEF";
char[] hexArray = hexString.toCharArray();

PFont font = createFont("MS Gothic", side - 4);
textFont(font);
textAlign(CENTER);

size(512, 512);

for (int y = 0; y < height; y += side) {
  for (int x = 0; x < width; x += side) {
    fill(255);
    rect(x, y, side, side);
    fill(0);
    String str = String.format("%c%c", hexArray[x / side], hexArray[y / side]);
    text(str, x + side / 2, y + 0.85 * side);
    println(str);
  }
}
save("texture.png");