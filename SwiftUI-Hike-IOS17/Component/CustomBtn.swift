//
//  CustomBtn.swift
//  SwiftUI-Hike-IOS17
//
//  Created by Daniel Felipe on 15/02/24.
//

import SwiftUI

struct CustomBtn: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white,
                                 .customGreenLigth,
                                 .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                Circle()
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLigth, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLigth, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
        }//:ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview { CustomBtn().previewLayout(.sizeThatFits).padding() }
