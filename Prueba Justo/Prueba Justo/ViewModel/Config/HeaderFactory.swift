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
        let headers = [HeaderKeys.accept: "application/json"]
        return headers
    }
    
    class func getAuthHeaders() -> [String: String] {
        let accessToken = AppManager().getStringData(sessionName: AppManager.accessToken)
        let headers = [HeaderKeys.accept: "application/json",
                       HeaderKeys.contentType: "application/json",
                       HeaderKeys.authorization: "Bearer \(accessToken)"]
        return headers
    }
}
