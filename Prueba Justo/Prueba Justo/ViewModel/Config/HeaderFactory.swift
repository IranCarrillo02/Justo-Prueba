//
//  HeaderFactory.swift
//  suma
//
//  Created by Desarrollo Ordenaris on 16/11/22.
//

import UIKit

class HeaderFactory {
    private enum HeaderKeys {
        static let accept = "Accept"
        static let contentType = "Content-Type"
        static let authorization = "Authorization"
    }
    
    // TODO: - Change when header documentation is available.
    class func getBaseHeaders() -> [String: String] {
        let headers = [HeaderKeys.accept: "application/json",
                       HeaderKeys.contentType: "application/json"]
        return headers
    }
}
