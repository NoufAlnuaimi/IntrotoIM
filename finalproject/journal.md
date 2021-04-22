# Game Galore
### My Idea:
#### For this assignment, I decided to improve on week three's assignment and create a similar page on processing but this time with 3 different buttons that lead to three different game pages.
#### The three different games explained:
##### - The first one will have 2 or 3 levels where there are buttons and those buttons correspond to different patterns on the arduino LEDs and then you'll have options of the right pattern answer and once you get the right answers; the RGB LED on the arduino will light different colors.
##### - The second game will be a fruit catching game where the player controls the x-position of the basket using the potentiometer.
##### - I haven't decided on the third game yet but I know that the player will be using an LDR to control something on arduino.
## April 15th:
#### Today I put my circuit together, drew my schematic, and planned the rough sketch of the way I wanted my processing page to look like.

#### Schematic sketch:
![](IMG_0625.JPG)
#### My circuit:
![](IMG_2003.jpg)
#### Rough idea of my Processing page:
![](IMG_0626.JPG)
#### For tomorrow and next week I'll probably try to be done with everything that has to do with processing and test that everything works fine then I will move to the arduino and make sure they're both communicating correctly and doing the things I want them to do.
## April 15th:
#### Finished the processing page and made sure the buttons are working by printing "button is clicked" when the player clicks on the button.
#### Processing page:
![](processingpage.png)
#### Sketched out the way I wanted my first game to be and came up with the patterns.
##### First game idea:
#### - The player goes through the map to the door, once the door is clicked it'll result in a LED pattern on the arduino and the player with have choices to choose the right answer from. When the right answer is picked, colorful light will go on and the second part of the map will open and the player repeats the same steps to the third door and win! (Picking the wrong answer will make the player lose)
#### Rough sketch of the first game:
![](Roughsketch1.JPG)
## April 15th:
#### Finished what I could from the first game.
#### First game so far:
![](firstgame1.png)
##### Black walls are hiding the rest of the game.
#### I got stuck at the whole boolean and opening new pages thing so I will do that some other day.
## April 19th:
#### I couldn't find certian images for my games so I just spent some time drawing that:
![](redLED.PNG)
![](yellowLED.PNG)
![](blueLED.PNG)
![](fly.PNG)
![](strawberry.PNG)
![](redstrawberry.PNG)
#### Then I moved on to creating the second game. I struggled a bit at first so I went to look at some code classmates used for a similar game and noticed I was still struggling so went on to youtube for some help (link to the video that helped a lot: https://www.youtube.com/watch?v=XqTNcC5M42U&t=618s) I then added my basket as the catcher and had a circle behind it to make it easier to detect wether I'm catching the strawberries or not. 
#### Because the images were placed in the same array, I couldn't detect the scores properly nor have them fall separately so I need to work on that.
#### Because I want the potentiometer to be the sensor controlling the x position, I will set the y position so that the player is only controlling x position.
#### Demo: 
![](Strawberrygame1.gif)
#### What to do next:
##### - I need to place the images in different arrays to have them fall at different times and to be able to detect the score properly.
## April 22nd:
#### Because I already created a game with scores and winning and losing pages, finishing up this game was fairly quick and easy and I didn't find any problems with it.
#### What I did:
##### - Put the images in different arrays so they could be controlled better.
##### - Set up the score properly.
##### - Drew more images I needed (sky for background, and the jams).
##### - Added winning and losing pages.
#### Winning page (appears when score is 20):
![](Swinningpage.PNG)
#### Winning page (appears when score is below 0):
![](Slosingpage.PNG)
