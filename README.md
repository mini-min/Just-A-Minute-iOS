# Just-A-Minute
## 🍎 Intro
<img width="306" alt="스크린샷 2023-04-13 오후 9 27 41" src="https://user-images.githubusercontent.com/69389288/231758075-ab70936e-fe35-4cb8-9604-40c1c0ee3df3.png">

It's health care playground app for developers and modern people. The name of the app is "just a minute", which means to refresh through this program for a short time.

Teck neck, dry eyes, and depression are representative chronic diseases of developers. In fact, these diseases are not limited to developers, but representative diseases of modern people. Therefore, the purpose of the program is to prevent these diseases not only by developers but also by all modern people through this playground app. Each disease solution provided by the program is simple, but it has technical challenges and fun elements.

<br>

## 🧑🏻‍💻 Used Technologies
All codes used SwiftUI.  

NeckView uses AR technology and RealityKit to induce fun neck exercises. The camera screen, which is illuminated by ARView, has two letters "w", "d", and "c", which are letters of "wwdc", hidden on the screen. The user must rotate his neck using the camera to find this letter, and the letter is hidden in both the top, bottom, left and right, which induces the user's natural neck rotation.

In EyeView, the movement of the pupil is induced using Animation. The user focuses on the moving white ball. In this case, the default value moves left and right, and when you press the bottom button, the movement changes up and down. You can follow a moving ball and do tired eye exercises.

In mindview, there is comfortable music and a minute timer with pictures of nature that I took myself. In this process, AVKit was used to play sound. When the timer plays, the music also plays, leading to a minute of meditation.
The Korean alphabet you see in the picture says, "It's okay to be slow. Nature is naturally slow." I added it to mean that busy developers have some time to relax.
