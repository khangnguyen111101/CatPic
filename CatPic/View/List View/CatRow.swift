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

struct CatRow: View{
    var cat: Cat
    // Display cat row in main list view
    var body: some View {
        HStack {
            Text(cat.name)
        }
    }
}


struct CatRow_Previews: PreviewProvider {
    static var previews : some View {
        Group {
            CatRow(cat: cats[0])
                .previewLayout(.fixed(width: 300, height: 70))
            CatRow(cat: cats[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
