import Foundation

struct Cat: Codable {
    var id: String
    var name: String
    var cfa_url: String
    var vetstreet_url: String
    var vcahospitals_url: String
    var temperament: String
    var origin: String
    var country_codes: String
    var country_code: String
    var description: String
    var life_span: String
    var indor: Int
    var lap: Int
    var alt_names: String
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
    var wikipedia_url: String
    var hypoallergenic: Int
}

struct Weight: Codable {
    var imperial: String
    var metric: String
}