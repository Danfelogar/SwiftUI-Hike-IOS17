//
//  CustomBackgroundView.swift
//  SwiftUI-Hike-IOS17
//
//  Created by Daniel Felipe on 15/02/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. DEPTH
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
                .offset(y: 12)
            //MARK: - 2. LIGHT
            Color.customGreenLigth
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
                .offset(y: 3)
                .opacity(0.85)
            //MARK: - 1 .SURFACE
            LinearGradient(
                colors:[
                    Color.customGreenLigth,
                    Color.customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview { CustomBackgroundView() }
