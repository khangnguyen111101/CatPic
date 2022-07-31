import SwiftUI

struct CatList: View {
    var body: some View {
        NavigationView(
            List(cats) {
                cat in NavigationLink{
                    CatProfile(cat: cat)
                } label: {
                    CatRow(cat: cat)
                }
                .navigationTitle("Cat Breeds")
            }
        )
    }
}