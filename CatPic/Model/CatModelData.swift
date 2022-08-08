/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 03/08/2022
    Last modified: 07/08/2022
    Acknowledgement: TheCatAPI (https://developers.thecatapi.com)
*/

import Foundation
// get initial cat breeds list
var cats = getAllCatsFromApi(apiUrl: Constants.allBreedUrl)

// fetch API to get all cat breeds
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

// fetch API to get a random cat image, regarding the cat breed
func getCatPicFromApi(id: String) -> CatImage? {
    if let url = URL(string: Constants.breedImageUrl + id + "&" + Constants.apiKey) {
        if let data = try? Data(contentsOf: url) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([CatImage].self, from: data)
                return decoded[0]
            } catch let error {
                    fatalError("Failed to decode JSON: \(error)")
            }
        }
    }
    return nil
}
