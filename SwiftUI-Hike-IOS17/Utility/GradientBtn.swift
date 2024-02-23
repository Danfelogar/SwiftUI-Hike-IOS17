//
//  GradientBtn.swift
//  SwiftUI-Hike-IOS17
//
//  Created by Daniel Felipe on 15/02/24.
//

import Foundation
import SwiftUI

struct GradientBtn: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                //Conditional Statement with Nil Coalescing
                //Condition ? A : B
                configuration.isPressed ?
                //A: When User pressed the Btn
                LinearGradient(
                    colors: [.customGrayMedium,.customGrayLigth],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                //B: When the Btn is not pressed
                LinearGradient(
                    colors: [.customGrayLigth,.customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 40, height: 40)))
    }
}
