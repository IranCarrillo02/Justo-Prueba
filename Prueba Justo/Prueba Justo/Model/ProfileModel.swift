//
//  ProfileModel.swift
//  Prueba Justo
//
//  Created by Desarrollo Ordenaris on 10/01/23.
//

import Foundation

// MARK: - Welcome
struct ProfileModel: Initable {
    let results: [Result]
    let info: Info
    
    init() {
        results = [Result]()
        info = Info()
    }
}

// MARK: - Info
struct Info: Initable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
    
    init() {
        seed = ""
        results = 0
        page = 0
        version = ""
    }
}

// MARK: - Result
struct Result: Initable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let phone: String
    let cell: String
    let picture: Picture
    let nat: String
    
    init() {
        gender = ""
        name = Name()
        location = Location()
        email = ""
        phone = ""
        cell = ""
        picture = Picture()
        nat = ""
    }
}

// MARK: - Location
struct Location: Initable {
    let street: Street
    let city: String
    let state: String
    let country: String
    let postcode: Int
    
    init() {
        street = Street()
        city = ""
        state = ""
        country = ""
        postcode = 0
    }
}

// MARK: - Street
struct Street: Initable {
    let number: Int
    let name: String
    
    init() {
        number = 0
        name = ""
    }
}

// MARK: - Name
struct Name: Initable {
    let title: String
    let first: String
    let last: String
    
    init() {
        title = ""
        first = ""
        last = ""
    }
}

// MARK: - Picture
struct Picture: Initable {
    let large: String
    
    init() {
        large = ""
    }
}
