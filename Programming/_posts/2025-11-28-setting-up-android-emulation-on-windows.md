---
title: "Setting up Android emulation on Windows"
date:   2025-11-28 16:00:00 +0100
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - "How-to"
tags: 
  - "Web Development"
  - "Expo"
  - "Android Studio"
  - "Mobile Development"
  - "Node.js"
---

## Introduction

I have cloned an existing Node.js repository that uses Expo to emulate mobile platforms for testing purposes. These are the steps I followed on Windows to set up the development environment.

### Prerequisites
- Node.js
- Expo

### Platforms, tools used
- Windows 11
- Powershell 7.5.4
- Visual Studio Code

## Steps

1. Download `Android Studio` from {% include link.html key="android_studio" text="https://developer.android.com/studio" %}
2. Run the installer. It will take some time
3. Run `Android Studio` as Administrator*. On the first run it will install more components. It will take a while too.
  - *: Note: I didn't run it as Administrator but probably I should have, because one component couldn't be installed and the installer was complaining about it. Also, it is a good idea to not leave the installation unattended. I did and it wrote me about some timeout that I didn't act on, hence the error. In the end, the emulator worked fine, but I'd prefer avoid these errors.
4. Set up a virtual device (the recommendations are by ChatGPT)
   1. `More Actions > Virtual Device Manager`
   2. `Create Virtual Device` (the "+" sign), Choose `Pixel 8`. `Next`
   3. API: `Android 14`, Services: I chose `Google Play Store`, System Image: x86_64 `not` Pre-Release. `Finish`
   4. Wait for the download and installation to complete
   5. Start the emulator by clicking on the Play button
5. Add Java to your Path

   A Java installation comes bundled with Android Studio, so you don't need to install Java manually, but you have to add it to your `Environment Variables`
   1. Add a new `System variable`: Variable: `JAVA_HOME`, value: `C:\Program Files\Android\Android Studio\jbr` . Note: check you actual path. You can do it in `Android Studio > Options (little cog icon in the bottom left corner) > Settings > Build, Execution, Deployment > Build Tools > Gradle > Default Gradle JDK`
   2. Add to Path: `%JAVA_HOME%\bin`
6. Add Android SDK to your Path
   1. Copy the path to your Android SDK in `Android Studio > Options > Settings > Languages & Frameworks > Android SDK > Android SDK Location`
   2. Add a new system variable: Variable: `ANDROID_HOME`, Value: `C:\Users\<USER>\AppData\Local\Android\Sdk`. < Paste the previously copied path here
   3. Add to Path:

   `%ANDROID_HOME%\platform-tools`
   
   `%ANDROID_HOME%\tools`
   
   `%ANDROID_HOME%\tools\bin`
7. Close and restart your terminal/console. If using VS Code, close it and restart.
8. Add `android.package` to `app.json`, for example:
```json
{
  "expo": {
   ...
        "android": {
          "adaptiveIcon": {
            "backgroundColor": "#E6F4FE",
            "foregroundImage": "./assets/images/android-icon-foreground.png",
            "backgroundImage": "./assets/images/android-icon-background.png",
            "monochromeImage": "./assets/images/android-icon-monochrome.png"
          },
          "package": "com.peter.appaloosa",
          "edgeToEdgeEnabled": true,
          "predictiveBackGestureEnabled": false
        },
    ...
  }
}
```
9. Install dev build on the Android emulator

    `npx expo prebuild # prebuild native code`

10. Start the Expo development server from CLI: 

    `npx expo start`

    Press "a" to open Android

11. Next time you want to debug your app, you only need to run

    `npx expo start`