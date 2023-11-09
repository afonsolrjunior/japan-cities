//
//  DataProvider.swift
//  japan-cities
//
//  Created by Afonso Rodrigues on 06/11/23.
//

import Foundation

protocol DataProvider {
    func loadData() throws -> Data?
}

enum DataProviderError: Error {
    case conversion
    case fileNotFound
    case custom(message: String)
}

struct LocalJSONDataProvider: DataProvider {
    
    private let fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    func loadData() throws -> Data? {
        
        guard let filePath = Bundle.main.path(forResource: fileName, ofType: "json") else {
            throw DataProviderError.fileNotFound
        }
        
        do {
            let fileUrl = URL(fileURLWithPath: filePath)
            let data = try Data(contentsOf: fileUrl)
            return data
        } catch {
            throw DataProviderError.conversion
        }
        
    }
    
}
