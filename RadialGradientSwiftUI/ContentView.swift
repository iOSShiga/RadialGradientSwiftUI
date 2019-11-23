//
//  ContentView.swift
//  RadialGradientSwiftUI
//
//  Created by shiga on 23/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import SwiftUI

let gradient = Gradient(colors: [.yellow, .orange, .white])
let radialGrandient = RadialGradient(gradient: gradient, center: .bottom, startRadius: 100, endRadius: 700)
let smallRadial = RadialGradient(gradient: gradient, center: .center, startRadius: 1, endRadius: 150)

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
            .fill(radialGrandient)
            .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                Text("RadialGradient").font(.largeTitle)
                Text("Introduction").font(.title).foregroundColor(.gray)
                Text("Radius measure the distance from the center of a circle on outward. You set a startRadius to determine how far the first color should expand outward. The endRadius defines the end of the gradient spread. If the endRadius than thee startRadius, the last defined in the gradient object will fill everything beyond that endRadius.").lineLimit(nil)
                    
                Group {
                    Circle()
                    .fill(smallRadial)
                    RoundedRectangle(cornerRadius: 20)
                    .fill(smallRadial)
                    .padding(30)
                    Circle()
                    .strokeBorder(smallRadial, lineWidth: 40)
                        .shadow(color: .white, radius: 10)
                }.shadow(color: .white, radius: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
