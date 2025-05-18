//
//  JankenView.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/17.
//

import SwiftUI

struct JankenView: View {
    @State var jankenNum: Int = 0

    var body: some View {
        VStack {
            Spacer()
            if jankenNum == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if jankenNum == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if jankenNum == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }

            Button{
                print("ボタンがタップされた")
                var tmp: Int = 0
                repeat {
                    tmp = Int.random(in: 1...3)
                } while jankenNum == tmp

                jankenNum = tmp
            } label: {
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(.pink)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    JankenView()
}

