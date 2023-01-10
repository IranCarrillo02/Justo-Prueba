//
//  ApiProfile.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 10/01/23.
//

import Alamofire
import RxSwift

protocol ApiProfile {
    func getProfile(success: @escaping (ProfileModel) -> Void, failure: @escaping (Error) -> Void)
}

class ApiProfileImpl: ApiProfile {
    private var networkService: NetworkService = NetworkServiceImpl(configuration: ServiceConfig.appConfig(), encodeUtils: EncodeUtils())
    private let disposeBag = DisposeBag()
    
    func getProfile(success: @escaping (ProfileModel) -> Void, failure: @escaping (Error) -> Void) {
        let request = Request(method: .get,
                              path: "",
                              encoding: JSONEncoding.default)
        networkService.execute(request).subscribe(onNext: { (response: ProfileModel) in
            success(response)
        }, onError: { (error: Error) in
            failure(error)
        }).disposed(by: disposeBag)
    }
}
