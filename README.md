<p align="center">
  <img width="400" height="150" src="https://cdn.worldvectorlogo.com/logos/codingame-1.svg">
</p>
<h1 align="center">CodinGame</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-brightgreen.svg" />
  <img alt="Dart" src="https://img.shields.io/badge/Dart-027DFD?logo=dart&logoColor=white" />
  <img alt="Java" src="https://img.shields.io/badge/Java-ED8B00?logo=java&logoColor=white" />
  <img alt="Python" src="https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white" />
</p>

## Description
> <a href="https://www.codingame.com">CodinGame</a> is a challenge-based training platform for programmers where you can improve your coding skills with fun exercises. The code, used to solve puzzles, are added in this repository.

https://user-images.githubusercontent.com/47154593/204288881-865bba7c-17ba-4b73-93a1-be20ca783068.mp4

## Puzzles

### [Easy](https://github.com/rohan-bhautoo/Codingame/tree/main/Easy)

#### Onboarding
> Solving this puzzle helps you understand how the puzzles work on CodinGame.
> 
> Skill(s): Conditions

```dart
void main() {

    // game loop
    while (true) {
        String enemy1 = readLineSync(); // name of enemy 1
        int dist1 = int.parse(readLineSync()); // distance to enemy 1
        String enemy2 = readLineSync(); // name of enemy 2
        int dist2 = int.parse(readLineSync()); // distance to enemy 2

        if (dist1 < dist2) {
            print(enemy1);
        } else {
            print(enemy2);
        }
    }
}
```


#### Mars Lander - Episode 1
> This puzzle teaches you how to compare values using a simple condition.
> 
> Skill(s): Conditions

```dart
void main() {
    List inputs;
    int surfaceN = int.parse(readLineSync()); // the number of points used to draw the surface of Mars.
    for (int i = 0; i < surfaceN; i++) {
        inputs = readLineSync().split(' ');
        int landX = int.parse(inputs[0]); // X coordinate of a surface point. (0 to 6999)
        int landY = int.parse(inputs[1]); // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    }

    // game loop
    while (true) {
        inputs = readLineSync().split(' ');
        int X = int.parse(inputs[0]);
        int Y = int.parse(inputs[1]);
        int hSpeed = int.parse(inputs[2]); // the horizontal speed (in m/s), can be negative.
        int vSpeed = int.parse(inputs[3]); // the vertical speed (in m/s), can be negative.
        int fuel = int.parse(inputs[4]); // the quantity of remaining fuel in liters.
        int rotate = int.parse(inputs[5]); // the rotation angle in degrees (-90 to 90).
        int power = int.parse(inputs[6]); // the thrust power (0 to 4).

        // 2 integers: rotate power. rotate is the desired rotation angle (should be 0 for level 1), power is the desired thrust power (0 to 4).
        if(Y < 2500 && Y > 1825) {
          print('0 3');
        } else if(Y < 1825 && Y > 1250) {
          print('0 4');
        } else if(Y > 625 && Y < 1250) {
          print('0 4');
        } else if(Y < 625 && Y > 0) {
          print('0 4');
        } else {
          print('0 3');
        }
    }
}
```

#### Power of Thor - Episode 1
> In this puzzle, you need to compare different values. You have to correlate character variables and integer variables.
> 
> Skill(s): Conditions

```dart
void main() {
    List inputs;
    inputs = readLineSync().split(' ');
    int lightX = int.parse(inputs[0]); // the X position of the light of power
    int lightY = int.parse(inputs[1]); // the Y position of the light of power
    int initialTX = int.parse(inputs[2]); // Thor's starting X position
    int initialTY = int.parse(inputs[3]); // Thor's starting Y position

    // game loop
    while (true) {
        int remainingTurns = int.parse(readLineSync()); // The remaining amount of turns Thor can move. Do not remove this line.
        var directionX = "", directionY = "";

        if (initialTX > lightX) {
            directionX = "W";
            initialTX--;
        }
        else if (initialTX < lightX) {
            directionX = "E";
            initialTX++;
        }
        if (initialTY > lightY) {
            directionY = "N";
            initialTY--;
        }
        else if (initialTY < lightY) {
            directionY = "S";
            initialTY++;
        }
        print(directionY + directionX);
        
    }
}
```

#### Temperatures
> Solving this puzzle validates that the loop concept is understood and that you can compare a list of values.
> 
> Skill(s): Conditions, Loops, Arrays

```java
class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(); // the number of temperatures to analyse
        String TEMPS = in.nextLine(); // the N temperatures expressed as integers ranging from -273 to 5526
        
        if(n > 0 ) {
            String list[] = in.nextLine().split(" ");
       
            int res = 10000;
            int temp = 0;
            for ( int i=0; i<list.length; i++ ) {
                temp = Integer.parseInt(list[i]);
                if ( Math.abs(temp) < Math.abs(res)) {
                    res = temp;
                } else if ( Math.abs(temp) == Math.abs(res) && temp != res){
                    res = Math.abs(temp);
                }
            }
            System.out.println(res);
        } else {
            System.out.println(0);
        }  
        in.close();
    }
    
}
```

#### The Descent
> Solving this puzzle makes you understand the concept of loops and the ways of retrieving the maximum value from a list of integers.
> 
> Skill(s): Loops

```dart
void main() {
    // game loop
    while (true) {
        var max = 0, imax = 0;
        for (int i = 0; i < 8; i++) {
            int mountainH = int.parse(readLineSync());
            if (mountainH > max) {
                max = mountainH;
                imax = i;
            }
        }
        print(imax);
    }
}
```

### [Medium](https://github.com/rohan-bhautoo/Codingame/tree/main/Medium)

#### Death First Search - Episode 1
> This problem plays out on a graph where a “virus” moves from node to node, in search of an exit. There are several exits and you have to cut access to these exits by finding the best link to cut each turn.
> 
> Skill(s): Binary search, Intervals

```dart
WIP
```

#### Shadows of the Knight - Episode 1
> The goal of this puzzle is to guess the coordinate of a bomb (line and column of a 2 dimensional array). You will have to make a guess at each step of the puzzle and adjust it from given feedbacks. Of course, you have a limited number of guess.
> 
> Skill(s): Binary search, Intervals

```dart
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
```

#### There is no Spoon - Episode 1
> In this puzzle, you have to detect special characters from a string. You also have to store input values into a grid to explore it. You have to go through all elements from a grid (certainly using a double loop) and from those points, iterate again on some elements of the grid. Solving this puzzle make you learn the concept of nested loop.
> 
> Skill(s): Lists

```python
import sys
import math

# Don't let the machines win. You are humanity's last hope...

width = int(input())  # the number of cells on the X axis
height = int(input())  # the number of cells on the Y axis
lines = []
for i in range(height):
    line = input()  # width characters, each either 0 or .
    lines.append(list(line))
for y in range(height):
    for x in range(width):
       if lines[y][x]==".":
           continue
       rx = ry = bx = by = -1
       try:
           for tx in range(x+1,width):
               if(lines[y][tx]=='0'):
                   rx = tx
                   ry = y
                   break
       except Exception:
           pass
       try:
           for ty in range(y+1, height):
               if(lines[ty][x]=='0'):
                   bx = x
                   by =ty
                   break
       except Exception:
           pass
       print("{0} {1} {2} {3} {4} {5}".format(x, y, rx, ry, bx, by))
```

## Author

👤 **Rohan Bhautoo**

* Github: [@rohan-bhautoo](https://github.com/rohan-bhautoo)
* LinkedIn: [@rohan-bhautoo](https://linkedin.com/in/rohan-bhautoo)

## Show your support

Give a ⭐️ if this project helped you!
