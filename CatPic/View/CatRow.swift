//
//  CatRow.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 03/08/2022.
//

import Foundation
import SwiftUI

struct CatRow: View{
    var cat: Cat

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
