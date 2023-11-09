//
//  CityConverter.swift
//  japan-cities
//
//  Created by Afonso Rodrigues on 09/11/23.
//

import SwiftUI

struct CityConverter {
    
    func convert(from cityEntity: CityEntity) -> City {
        let imageData = cityEntity.imageData
        let image = SwiftUIImageConverter.convert(from: UIImageConverter.convert(from: imageData))
        let city = City(id: cityEntity.id,
                        name: cityEntity.name,
                        description: cityEntity.description,
                        image: image)
        return city
    }
    
}
