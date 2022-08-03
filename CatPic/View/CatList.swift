//
//  CatList.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 03/08/2022.
//

import Foundation
import SwiftUI

struct CatList: View {
    var body: some View {
        NavigationView {
            List(cats){
                cat in
                NavigationLink{
                    CatProfile(cat: cat)
                } label: {
                    CatRow(cat: cat)
                }
                .navigationTitle("Cat Breeds")
            }
        }
        
    }
}

struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        CatList()
    }
}
