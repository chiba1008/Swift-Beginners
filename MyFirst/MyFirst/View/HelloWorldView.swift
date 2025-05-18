//
//  ContentView.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/17.
//

import SwiftUI

struct HelloWorldView: View {
    @State private var outputText: String = "Hello, World!"

    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.orange)

            Button("切り替えボタン") {
                outputText = "こんにちは、世界！"
            }
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    HelloWorldView()
}
