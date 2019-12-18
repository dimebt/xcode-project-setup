# Xcode project setup

# Quick Reference
| Feature | Link |
| ------ | ------ |
| Coordinator Template | https://github.com/dimebt/Coordinator-Xcode-Project-Swift-Template |
| SwiftLint | https://github.com/realm/SwiftLint |

## Coordinator Template
Xcode 11 Template to use as a starting point for an iOS apps.

https://github.com/dimebt/Coordinator-Xcode-Project-Swift-Template

## SwiftLint
A tool to enforce Swift style and conventions

https://github.com/realm/SwiftLint

### Installation

#### Using [Homebrew](http://brew.sh/):

```
brew install swiftlint
```

#### Xcode

- Select Target -> Build Phases -> Run Script

Integrate SwiftLint into an Xcode scheme to get warnings and errors displayed
in the IDE. Just add a new "Run Script Phase" with:

```bash
if which swiftlint >/dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```

![](assets/runscript.png)

#### Disabling rules

```swift
  // swiftlint:disable:this [name of rule]
```

## Fastlane integration
| Feature | Link |
| ------ | ------ |
| Documentation | https://docs.fastlane.tools/ |

#### Installing fastlane
Install the latest Xcode command line tools:
```bash
xcode-select --install
```

Install fastlane using

#### Using RubyGems
```bash
sudo gem install fastlane -NV
```


#### Alternatively using Homebrew
```bash
brew cask install fastlane
```

#### Setting up fastlane
Navigate your terminal to your project's directory and run
```bash
fastlane init
``` 

#### snapshot

## Travis CI Setup
## Codecov Setup
## DI Container
## JSON Parsing https://app.quicktype.io/
## Cocoapods libraries
### Firebase
### Firestore
### Realm
### PromiseKit or Combine 
### Lottie
### Kingfisher
### SwiftyBeaver console, file, cloud logger



