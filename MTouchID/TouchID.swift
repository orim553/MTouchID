//
//  MTouchID.swift
//
//  Created by ori mizrachi on 12/01/2017.
//  Copyright © 2017 Ori Mizrachi. All rights reserved.
//

import UIKit
import LocalAuthentication

protocol MTouchIDProtocol {
  func MTouchIDAuthorizeSuccess()
  func MTouchIDAuthorizeFail()

  func MTouchIDUserCancelled()
  func MTouchIDUserChooseFallBack()
  func MTouchIDSystemTerminate()
  func MTouchIDNoPassword()
  func MTouchIDNotAvailable()
  func MTouchIDNoFingerPrint()
  func MTouchIDDeviceNotSupportTouchID()
  func MTouchIDDeviceIsSimulator()
  
  func MTouchIDAppCancelled()
  func MTouchIDInvalidContext()
  func MTouchIDTouchIDLockout()
}

extension MTouchIDProtocol{
  func MTouchIDUserCancelled(){}
  func MTouchIDUserChooseFallBack(){}
  func MTouchIDSystemTerminate(){}
  func MTouchIDNoPassword(){}
  func MTouchIDNotAvailAble(){}
  func MTouchIDNoFingerPrint(){}
  func MTouchIDDeviceNotSupportTouchID(){}
  func MTouchIDAppCancelled(){}
  func MTouchIDInvalidContext(){}
  func MTouchIDTouchIDLockout(){}
}

class MTouchID {
  
  static var delegate: MTouchIDProtocol?
  /**
      startMTouchID starts the TouchID System and checks if the given fingerprint is matching to the phone owner's fingerpring or not
   
    - parameter message: The string shows on Touch ID authentication view
    - parameter delegate: The object hold the delegate
  */
  
  class func startMTouchID(_ message: String, delegate: MTouchIDProtocol) {
    var error: NSError?
    let context = LAContext()
    
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
      context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: message, reply: { (success, error) in
        if success {
          DispatchQueue.main.async {
            delegate.MTouchIDAuthorizeSuccess()
          }
        } else {
          if #available(iOS 9.0, *) {
            switch (error?._code)! {
            case LAError.appCancel.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDAppCancelled()
              }
            case LAError.authenticationFailed.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDAuthorizeFail()
              }
            case LAError.invalidContext.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDInvalidContext()
              }
            case LAError.passcodeNotSet.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDNoPassword()
              }
            case LAError.systemCancel.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDSystemTerminate()
              }
            case LAError.touchIDLockout.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDTouchIDLockout()
              }
            case LAError.touchIDNotAvailable.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDNotAvailAble()
              }
            case LAError.userCancel.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDUserCancelled()
              }
            case LAError.userFallback.rawValue:
              DispatchQueue.main.async {
                delegate.MTouchIDUserChooseFallBack()
              }
            default:
              DispatchQueue.main.async {
                delegate.MTouchIDNotAvailAble()
              }
            }
          }
        }
      })
    } else {
      DispatchQueue.main.async {
        delegate.MTouchIDDeviceNotSupportTouchID()
      }
    }
  }
}


