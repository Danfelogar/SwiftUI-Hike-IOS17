//
//  CardView.swift
//  SwiftUI-Hike-IOS17
//
//  Created by Daniel Felipe on 15/02/24.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false

    //MARK: - Functions
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
            imageNumber = randomNumber
            print("\(randomNumber)")
    }
    
    var body: some View {
        //MARK: - CARD
        ZStack {
            CustomBackgroundView()
            
            VStack{
                //MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLigth, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button {
                            //Action: Show a Sheet
                            print("show a sheet")
                            isShowingSheet.toggle()
                        } label: {
                            CustomBtn()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal, 30)
                //MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                //MARK: - FOOTER
                Button {
                    //Action: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLigth,
                                         .customGreenMedium,
                                        ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientBtn())
            }
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview { CardView() }
