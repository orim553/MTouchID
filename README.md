# MTouchID

MTouchID is a library that can help you use ```TouchID``` in youre project, without breaking your head for hours looking for the bug(WE did if for you!) :poop:

If You are using ios 8.0 + and you want to enter TouchID to youre project, you came to the right place :boom: :dizzy: :fire:

## ScreenShots
<img src="https://github.com/orim553/MTouchID/blob/master/ScreenShots/ScreenShot1.png" width="250">
<img src="https://github.com/orim553/MTouchID/blob/master/ScreenShots/ScreenShot2.png" width="250">

## Features
- [x] Easily use TouchID in your project without breaking your head for hours looking for the bug

- [x] Handle different kinds of errors and responses

## All You Have To Do

```

    MTouchID.startMTouchID(message: "Your message to the User", delegate: delegate target)

    func MTouchIDAuthorizeSuccess() {
        //Authorize Succeeded
    }

    func MTouchIDAuthorizeFail() {
        //Authorize Failed
    }
```

## CocoaPods

To install add the following line to your Podfile:

```
pod 'MTouchID'
```

## Requirements

- iOS 8.0+

- Swift 3

The main development of MTouchID is based on Swift 3.

## Contact

Follow and contact me through email. If you find an issue, just open a ticket on it. Pull requests are warmly welcome as well.

## License

MTouchID is released under the MIT license. See LICENSE for details.
