//
//  SwiftUIImageConverter.swift
//  japan-cities
//
//  Created by Afonso Rodrigues on 09/11/23.
//

import SwiftUI

class SwiftUIImageConverter {
    
    static func convert(from uiImage: UIImage?) -> Image {
        guard let uiImage else {
            return Image(systemName: "")
        }
        
        return Image(uiImage: uiImage)
    }
    
}
