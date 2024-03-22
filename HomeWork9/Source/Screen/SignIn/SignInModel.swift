//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        didSet {
            debugPrint("SignInModel -> didSet - email")
            debugPrint("Changed from \(oldValue) to \(email)")
            
            let validatorResponse = EmailValidator().validate(text: email)
            debugPrint("\(validatorResponse ?? "")")
            
            delegate?.didValidate(errorText: validatorResponse, textType: .error)
            emailValid = (validatorResponse != nil) ? false : true
        }
    }
    
    var password: String = "" {
        didSet {
            debugPrint("SignInModel -> didSet - password")
            debugPrint("Changed from \(oldValue) to \(password)")
            
            let validatorResponse = PasswordValidator().validate(text: password)
            debugPrint("\(validatorResponse ?? "")")
            
            delegate?.didValidate(errorText: validatorResponse, textType: .error)
            passwordValid = (validatorResponse != nil) ? false : true
        }
    }
}
