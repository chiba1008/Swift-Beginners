//
//  GakkiView.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/17.
//

import SwiftUI

struct GakkiView: View {
    let soundPlayer = SoundPlayer()

    var body: some View {
        ZStack {
            Image(.background)
                .backgoundModifier()

            HStack {
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image(.cymbal)
                }
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    GakkiView()
}
