//
//  SplashView.swift
//  CatPic
//
//  Created by Khang Nguyen Bao on 22/07/2022.
//
import SwiftUI
import Lottie


struct SplashView: View {
    
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                HomeView()
            } else {
                // 4.
                VStack {
                    LottieView()
                }
            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
