import 'dart:io';
import 'dart:math';

String readLineSync() {
  String? s = stdin.readLineSync();
  return s == null ? '' : s;
}

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
    List inputs;
    inputs = readLineSync().split(' ');
    int W = int.parse(inputs[0]); // width of the building.
    int H = int.parse(inputs[1]); // height of the building.
    int N = int.parse(readLineSync()); // maximum number of turns before game over.
    inputs = readLineSync().split(' ');
    int X0 = int.parse(inputs[0]);
    int Y0 = int.parse(inputs[1]);

    int x1 = 0;
    int y1 = 0;
    int x2 = W - 1;
    int y2 = H - 1;

    // game loop
    while (true) {
        String bombDir = readLineSync(); // the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)

        if(bombDir.contains('U')) {
          y2 = Y0 - 1;
        } else if(bombDir.contains('D')) {
          y1 = Y0 + 1;
        }

        if(bombDir.contains('L')) {
          x2 = X0 - 1;
        } else if(bombDir.contains('R')) {
          x1 = X0 + 1;
        }

        X0 = (x1 + (x2 - x1) / 2).floor();
        Y0 = (y1 + (y2 - y1) / 2).floor();

        print('${X0} ${Y0}');
    }
}
