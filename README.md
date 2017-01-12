# MTouchID

MTouchID is a library that can help you use ```TouchID``` in youre project, without breaking your head for hours looking for the bug(WE did if for you!) :poop:

If You are using ios 8.0 + and you want to enter TouchID to youre project, you came to the right place :boom: :dizzy: :fire:

## ScreenShots


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

## Requirements

- iOS 8.0+

- Swift 3

The main development of MTouchID is based on Swift 3.

## License

MTouchID is released under the MIT license. See LICENSE for details.
