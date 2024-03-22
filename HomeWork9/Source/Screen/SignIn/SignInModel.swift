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
            
            let validatorResponse = EmailValidator().validate(text: email)
            
            delegate?.didValidate(errorText: validatorResponse, textType: .error)
            emailValid = (validatorResponse != nil) ? false : true
        }
    }
    
    var password: String = "" {
        didSet {
            let validatorResponse = PasswordValidator().validate(text: password)
            
            delegate?.didValidate(errorText: validatorResponse, textType: .error)
            passwordValid = (validatorResponse != nil) ? false : true
        }
    }
}
