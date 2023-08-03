//
//  AboutUsView.swift
//  Climiz
//
//  Created by scholar on 01/08/2023.
// change coliour

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        ZStack {
            Color(hue: 0.3, saturation: 0.25, brightness: 0.85)
            .ignoresSafeArea()
            VStack (alignment: .leading) {
//                Image("team")
//                .resizable(resizingMode: .stretch)
//                .aspectRatio(contentMode: .fit)
//                .cornerRadius(15.0)
//                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack(spacing: 150.0) {
                    Text("About Us")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.411, saturation: 0.97, brightness: 0.481))
                    }
                    Spacer()
                    .frame(height: 20)
                Text("Climiz was created as a stand-alone project by a group of all-female code enthusiasts during a coding bootcamp. By addressing important issues like overconsumption, we can help people be more conscious of how they consume Earth's resources, learning a lot as they go!\n\nBut that's not all. We want to help create more change, with websites, apps and spreading awareness to as many people as possible. You can help by sharing the app or talk with us by <whatever>")
                    .font(.headline)
                    .fontWeight(.medium)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Rectangle()
                .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                }
            }
        }

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
