/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 03/08/2022
    Last modified: 07/08/2022
    Acknowledgement: 
*/

import Foundation

struct Cat: Identifiable, Codable {
    var weight: Weight
    var id: String
    var name: String
    var temperament: String
    var origin: String
    var country_codes: String
    var country_code: String
    var description: String
    var life_span: String
    var indoor: Int
    var adaptability: Int
    var affection_level: Int
    var child_friendly: Int
    var dog_friendly: Int
    var energy_level: Int
    var grooming: Int
    var health_issues: Int
    var intelligence: Int
    var shedding_level: Int
    var social_needs: Int
    var stranger_friendly: Int
    var vocalisation: Int
    var experimental: Int
    var hairless: Int
    var natural: Int
    var rare: Int
    var rex: Int
    var suppressed_tail: Int
    var short_legs: Int
    var hypoallergenic: Int
}
