//
//  EmailValidator.swift
//  HomeWork9
//
//  Created by Aleksandr Moroshovskyi on 22.03.2024.
//

import Foundation

class EmailValidator: TextValidator {
    
    override func validate(text: String) -> String? {
        var errorText = super.validate(text: text)
        
        if text.count >= 30 {
            errorText = "Кількість символів має бути менше 30"
        }
        
        return errorText
    }
}
