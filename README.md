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
>

#### Shadows of the Knight - Episode 1
>

#### There is no Spoon - Episode 1
>

## Author

👤 **Rohan Bhautoo**

* Github: [@rohan-bhautoo](https://github.com/rohan-bhautoo)
* LinkedIn: [@rohan-bhautoo](https://linkedin.com/in/rohan-bhautoo)

## Show your support

Give a ⭐️ if this project helped you!
