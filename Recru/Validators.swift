//
//  Validators.swift
//  Recru
//
//  Created by Marcin Ratajczak on 18/02/2022.
//

import Foundation

enum URLValidationResult: Equatable {
    case correct(URL)
    case incorrect(String)
}

class URLValidator {
    static func validateAddres(addressString: String?) -> URLValidationResult {
        guard let address = addressString, !address.isEmpty else { return .incorrect("Address can not be empty") }
        guard let url = URL(string: address) else { return .incorrect("This is not correct URL address") }
        guard url.path.contains(".png") && url.path.contains(".jpg") else { return .incorrect("URL address should end with .png or .jpg") }
        return .correct(url)
    }
}
