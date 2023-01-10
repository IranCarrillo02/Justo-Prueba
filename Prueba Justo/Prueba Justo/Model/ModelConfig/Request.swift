//
//  Request.swift
//  suma
//
//  Created by Desarrollo Ordenaris on 16/11/22.
//

import Alamofire

class Request {
    
    public var method: Alamofire.HTTPMethod
    public var path: String
    public var parameters: [String: Any]?
    public var encoding: ParameterEncoding = URLEncoding.default
    public var headers: [String: String]?

    required init(method: Alamofire.HTTPMethod, path: String, parameters: [String: Any]? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: [String: String]? = nil) {
        self.method = method
        self.path = path
        self.parameters = parameters
        self.encoding = encoding
        self.headers = headers
    }
}
