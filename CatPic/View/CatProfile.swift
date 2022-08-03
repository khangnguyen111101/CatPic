//
//  CatProfile.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 03/08/2022.
//

import Foundation
import SwiftUI

struct CatProfile: View {
    let cat: Cat
    
    var body: some View {
        ScrollView {
            VStack {
                Text(cat.name)
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct CatProfile_Previews: PreviewProvider {
    static var previews: some View {
        CatProfile(cat: cats[0])
    }
}
