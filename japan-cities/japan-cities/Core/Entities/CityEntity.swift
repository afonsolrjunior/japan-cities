//
//  CityEntity.swift
//  japan-cities
//
//  Created by Afonso Rodrigues on 09/11/23.
//

import Foundation

struct CityEntity: Codable {
    let id: Int
    let name: String
    let description: String
    let imageData: Data?
}
