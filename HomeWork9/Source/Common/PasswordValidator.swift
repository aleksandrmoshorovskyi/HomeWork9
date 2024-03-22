//
//  PasswordValidator.swift
//  HomeWork9
//
//  Created by Aleksandr Moroshovskyi on 22.03.2024.
//

import Foundation

class PasswordValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        var errorText = super.validate(text: text)
        
        if text.count >= 16 {
            errorText = "Кількість символів має бути менше 16"
        }
        
        return errorText
    }
}
