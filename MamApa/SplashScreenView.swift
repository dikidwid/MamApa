//
//  SplashScreenView.swift
//  MamApa
//
//  Created by Diki Dwi Diro on 02/04/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.appDarkGreen)
                .ignoresSafeArea()
            
            Image(.splashScreenLogo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160)
        }
    }
}

#Preview {
    SplashScreenView()
}
