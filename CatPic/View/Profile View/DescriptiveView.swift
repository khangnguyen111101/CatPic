/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 07/08/2022
    Last modified: 07/08/2022
    Acknowledgement: 
*/
import Foundation
import SwiftUI

// display information for cat attributes that contains text
struct DescriptiveView : View {
    var text: String
    var category: String
    
    var body: some View {
        HStack {
            Text(category)
                .font(
                    .system(size: 14)
                    .weight(.bold)
                )
                .frame(width: 140, height: 20, alignment: .leading)
                .offset(x: 14)
                
            Text(text)
                .font(
                    .system(size: 14)
                    .weight(.light)
                )
        }
    }
}
