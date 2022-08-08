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
import SwiftUI

// Display cat info on profile
struct CatInfo: View {
    let cat: Cat
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(cat.description)
                .font(
                    .system(size: 15)
                )
                .padding()
            Group {
                DescriptiveView(text: cat.temperament, category: "Temperament")
                DescriptiveView(text: cat.life_span + " years", category: "Life Span")
                DescriptiveView(text: cat.origin, category: "Origin")
            }
            Group {
                RatingView(rating: cat.adaptability, category: "Adaptability")
                RatingView(rating: cat.affection_level, category: "Affection Level")
                RatingView(rating: cat.child_friendly, category: "Child Friendliness")
                RatingView(rating: cat.stranger_friendly, category: "Stranger Friendliness")
                RatingView(rating: cat.energy_level, category: "Energy Level")
                RatingView(rating: cat.grooming, category: "Grooming")
                RatingView(rating: cat.health_issues, category: "Health Issue")
                RatingView(rating: cat.intelligence, category: "Intelligence")
                RatingView(rating: cat.shedding_level, category: "Shedding Level")
                RatingView(rating: cat.social_needs, category: "Social Needs")
            }
        }
    }
}
