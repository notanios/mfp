# MFP mobile

## Installation Guide:

#### Pre-requisites:
 - download & install Flutter (https://flutter.dev/docs/get-started/install)
 - download & install Dart (or set flutter-dart as default Dart VM) (https://dart.dev/get-dart)

#### Build the project:
  - Run **flutter pub get**
  - Run **flutter pub run build_runner build --delete-conflicting-outputs**
 -  the project is buildable now!


## Development Guide:
### Architecture reference:
- https://pub.dev/packages/get
- https://pub.dev/packages/retrofit

### Code generation
 This project uses code generators:

 1) models/ - uses **freezed** to generate action models;

 Each time you modify any of these files/modules - you'll have to generate the code using **flutter pub run build_runner build --delete-conflicting-outputs**  or **upcode flutter:buildrunner**



