//
//  LaunchScreen.swift
//  Climiz
//
//  Created by scholar on 03/08/2023.
//

import SwiftUI

struct LaunchScreen: View {

    @State var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                Rectangle()
                    .background(Color.black)
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }

        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
        }

            struct LaunchScreen_Previews: PreviewProvider {
                static var previews: some View {
                    LaunchScreen()
                }
            }
        }
