/*
    RMIT University Vietnam
    Course: COSC2659 iOS Development
    Semester: 2022B
    Assessment: Assignment 1
    Author: Nguyen Bao Khang
    ID: s3817970
    Created  date: 03/08/2022
    Last modified: 07/08/2022
    Acknowledgement: Serialcoder (https://serialcoder.dev/text-tutorials/swiftui/swiftui-image-buttons-with-alternative-images/)
*/
import Foundation
import SwiftUI

// cat profile display
struct CatProfile: View {
    let cat: Cat
    @State var catPicUrl: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                // display image as form of a button, tapping the image will trigger button to get another picture, raplacing the old one
                Button(action:  {
                    catPicUrl = getCatPicFromApi(id: cat.id)!.url
                }, label: {
                    AsyncImage(
                        url: URL(string: catPicUrl.isEmpty ?
                                 getCatPicFromApi(id: cat.id)!.url
                                 : catPicUrl),
                        content: { image in
                            image.resizable()
                                 .aspectRatio(contentMode: .fit)
                                 .frame(maxWidth: 350, maxHeight: 350)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                })
                // Instructive text for user
                Text("Tap the picture")
                    .font(
                        .system(.caption)
                        .weight(.light)
                    )
                    .foregroundColor(.blue)
                CatInfo(cat: cat)
            }.navigationBarTitle(cat.name).navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CatProfile_Previews: PreviewProvider {
    static var previews: some View {
        CatProfile(cat: cats[0])
    }
}
