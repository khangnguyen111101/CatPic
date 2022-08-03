//
//  CatModelData.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 03/08/2022.
//

import Foundation

var cats = getAllCatsFromApi(apiUrl: Constants.allBreedUrl)


func getAllCatsFromApi(apiUrl: String) -> [Cat] {
    if let url = URL(string: apiUrl + Constants.apiKey) {
        if let data = try? Data(contentsOf: url) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Cat].self, from: data)
                return decoded
            } catch let error {
                    fatalError("Failed to decode JSON: \(error)")
            }
        }
    }
    return [ ] as [Cat]
}

func getCatPicFromApi(id: String) -> [Image] {
    if let url = URL(string: Constants.breedImageUrl + id + Constants.apiKey) {
        if let data = try? Data(contentsOf: url) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([Image].self, from: data)
                return decoded
            } catch let error {
                    fatalError("Failed to decode JSON: \(error)")
            }
        }
    }
    return [] as [Image]
}
