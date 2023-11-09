//
//  UIImageConverter.swift
//  japan-cities
//
//  Created by Afonso Rodrigues on 09/11/23.
//

import UIKit

class UIImageConverter {
    
    static func convert(from data: Data?) -> UIImage? {
        guard let data else {
            return nil
        }
        
        return UIImage(data: data)
    }
    
}
