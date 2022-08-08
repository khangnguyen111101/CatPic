/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 07/08/2022
    Last modified: 07/08/2022
    Acknowledgement: SwiftUI Recipes (https://swiftuirecipes.com/blog/star-rating-view-in-swiftui)
*/


import Foundation
import SwiftUI

// display star rating (out of 5) for some attributes of the cat
struct RatingView : View {
    var rating: Int
    var category: String
    
    var body: some View {
        HStack {
            Text(category)
                .font(
                    .system(size: 14)
                    .weight(.bold)
                )
                .frame(width: 180, height: 20, alignment: .leading)
                .offset(x: 14)

            ForEach(0..<rating,  id:\.self) { _ in
                Text("🟡 ")
                    .font(
                        .system(size: 10)
                    )
              }
        }
    }
}
