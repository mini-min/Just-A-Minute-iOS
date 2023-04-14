# Just-A-Minute
* <b> WWDC23 Swift Student Challenge Submission🍎 </b>
* <b> Develop Period: 2023.04.07 ~ 2023.04.13 (7 Days)

<br>

## Intro
It's health care playground app for developers and modern people. The name of the app is "just a minute", which means to refresh through this program for a short time.

Teck neck, dry eyes, and depression are representative chronic diseases of developers. In fact, these diseases are not limited to developers, but representative diseases of modern people. Therefore, the purpose of the program is to prevent these diseases not only by developers but also by all modern people through this playground app. Each disease solution provided by the program is simple, but it has technical challenges and fun elements.

<br>

## Simulator
|ContentView|NeckView <br> (Unable to save)|EyeView|MindView|LastView|
|:--:|:--:|:--:|:--:|:--:|
|<img src="https://user-images.githubusercontent.com/69389288/231923882-1685a9e0-a6d7-4a90-9286-3f807f3502aa.png" width="350" height="250"/>|<img src="https://user-images.githubusercontent.com/69389288/231923934-d8c5e518-8b98-4767-aff6-b7d71ad317fa.png" width="350" height="250"/>|![Simulator Screen Recording - iPad Air (5th generation) - 2023-04-14 at 10 57 46](https://user-images.githubusercontent.com/69389288/231922607-92980cd9-15e1-47ad-84a2-37d4ba0f8678.gif)|![Simulator Screen Recording - iPad Air (5th generation) - 2023-04-14 at 10 58 08](https://user-images.githubusercontent.com/69389288/231922521-3297d54d-dcc0-4dbc-afec-8b03dcd2cea8.gif)|<img src="https://user-images.githubusercontent.com/69389288/231923784-1525043d-be99-44fe-86da-7d1590e660aa.png" width="350" height="250"/>|


<br>

## Used Technologies
All codes used SwiftUI.  

NeckView uses AR technology and RealityKit to induce fun neck exercises. The camera screen, which is illuminated by ARView, has two letters "w", "d", and "c", which are letters of "wwdc", hidden on the screen. The user must rotate his neck using the camera to find this letter, and the letter is hidden in both the top, bottom, left and right, which induces the user's natural neck rotation.

In EyeView, the movement of the pupil is induced using Animation. The user focuses on the moving white ball. In this case, the default value moves left and right, and when you press the bottom button, the movement changes up and down. You can follow a moving ball and do tired eye exercises.

In mindview, there is comfortable music and a minute timer with pictures of nature that I took myself. In this process, AVKit was used to play sound. When the timer plays, the music also plays, leading to a minute of meditation.
The Korean alphabet you see in the picture says, "It's okay to be slow. Nature is naturally slow." I added it to mean that busy developers have some time to relax.
