//
//  LoginViewModel.swift
//  Prueba Justo
//
//  Created by Iran Carrillo on 09/01/23.
//

import Foundation
import FirebaseAuth

class LoginViewModel {
    
    func fetchLogin(_ email: String, _ password: String, completion: @escaping (Bool) -> ()){
        Auth.auth().signIn(withEmail: email, password: password){
            (result, error) in
            if error == nil {
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
