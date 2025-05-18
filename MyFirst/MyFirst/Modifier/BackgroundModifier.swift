//
//  BackgroundModifier.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/17.
//

import SwiftUI

extension Image {
    func backgoundModifier() -> some View {
        self.resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}
