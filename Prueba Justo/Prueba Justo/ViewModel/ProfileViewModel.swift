//
//  ProfileViewModel.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 10/01/23.
//

import Foundation

class ProfileViewModel {
    let apiPrifile: ApiProfile = ApiProfileImpl()
    var profileModel = ProfileModel()
    
    func fetchProfile(completion: @escaping (Bool) -> ()){
        apiPrifile.getProfile { response in
            self.profileModel = response
            completion(true)
        } failure: { (_) in
            completion(false)
        }
    }
}
