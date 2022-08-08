/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 03/08/2022
    Last modified: 07/08/2022
    Acknowledgement: Hackingwithswift (https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data)
*/

import Foundation
import SwiftUI

struct CatList: View {
    @State var catList = cats
    @State var searchText = ""
    
    // display all cat breeds in main list view
    var body: some View {
        NavigationView {
            List(catList) { cat in
                NavigationLink {
                    CatProfile(cat: cat)
                } label: {
                    CatRow(cat: cat)
                }
            }
            // Search bar
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search cat breed...")
            .onChange(of: searchText) { text in
                if text.isEmpty {
                    catList = cats
                } else {
                    catList = cats.filter { $0.name.contains(searchText) }
                }
            }
            .navigationTitle("All Cat Breeds")
        }
        .navigationViewStyle(.stack)
    }
}

struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        CatList()
    }
}
