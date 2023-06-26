# Scrumdinger

Scrumdinger is a SwiftUI-based app that provides live transcription for audio input using AVFoundation and Speech recognition. It utilizes complex grouped views to create an intuitive and interactive user interface.

## Features

- Live audio transcription: The app uses AVFoundation and Speech recognition to provide real-time transcription of audio input.
- Complex grouped views: The user interface is built using SwiftUI's powerful tools for creating complex and dynamic layouts with grouped views.

## Installation

1. Clone or download the repository.
2. Open the project in Xcode.
3. Build and run the app on a simulator or a physical device running iOS 14.0 or later.

## Usage

Upon launching the app, you will be presented with the main screen, where you can perform the following actions:

- Grant audio recording permission: The app requires access to the microphone to capture audio for transcription. Grant the necessary permission when prompted.
- Start audio transcription: Tap the "Start" button to begin live transcription of any audio picked up by the device's microphone.
- Stop audio transcription: Tap the "Stop" button to end the live transcription session.
- Play audio: If you have audio files stored within the app, you can tap on them to play the audio and see the corresponding transcriptions.

## Customization

Scrumdinger provides various options for customization to tailor the app to your specific needs:

- Theme: The app's appearance can be customized by modifying the theme colors and styles in the Theme.swift file.
- UI Components: The individual UI components, such as buttons, labels, and text fields, can be customized by adjusting their properties and styles in the respective SwiftUI views.

## Dependencies

Scrumdinger relies on the following dependencies, which are managed using Swift Package Manager:

- AVFoundation: Used for audio handling and playback.
- Speech: Used for live transcription of audio input.

All necessary dependencies are included in the project and will be resolved automatically upon building the app.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

- [Apple Developer Documentation](https://developer.apple.com/documentation/): Official documentation provided by Apple was instrumental in the development of this app.
- [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui/): Apple's SwiftUI tutorials served as a valuable resource for learning SwiftUI and building complex UI layouts.

## Contributions

Contributions to this project are welcome. If you encounter any issues or have suggestions for improvement, please open an issue or submit a pull request.

We hope you find Scrumdinger useful and enjoy using it! Should you have any questions, please don't hesitate to contact us.

