//
//  MainView.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 22/07/2022.
//
import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack {
            List(0..<5) { i in
                Text("Item - \(i)")
            }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
