//
//  ContentView.swift
//  ColorSliderApp
//
//  Created by Jayden Garcia on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 0.5
    @State private var greenValue: Double = 0.5
    @State private var blueValue: Double = 0.5
    
    private var backgroundColor: Color{
        Color(red: redValue, green: greenValue, blue:blueValue)
    }
    var body: some View {
        VStack {
            Rectangle()
                .fill(backgroundColor)
                .frame(height:200)
                .cornerRadius(15)
                .padding()
            
            VStack{
                Text("Red: \(Int(redValue*255))")
                Slider(value: $redValue, in: 0...1)
                    .accentColor(.red)
            }
            .padding()
            VStack{
                Text("Green:\(Int(greenValue * 255))")
                Slider(value: $greenValue, in:0...1)
                    .accentColor(.green)
            }
            .padding()
            VStack{
                Text("Blue: \(Int(blueValue * 255))")
                Slider(value: $blueValue, in: 0...1)
                    .accentColor(.blue)
            }
            .padding()
            
            Spacer()
            Button(action: resetColors){
                Text("Reset")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
            .padding()
        }
        .background(backgroundColor.ignoresSafeArea())
    }
    private func resetColors() {
        redValue = 0.5
        greenValue = 0.5
        blueValue = 0.5
    }
}

#Preview {
    ContentView()
}
