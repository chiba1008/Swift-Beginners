//
//  TimerSettingView.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/18.
//

import SwiftUI

struct TimerSettingView: View {
    @AppStorage("timer_value") var timerValue: Int = 10
    var body: some View {
        ZStack {
            Color.backgroundTimerSetting
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("\(timerValue)秒")
                    .font(.largeTitle)
                Spacer()
                Picker(selection: $timerValue) {
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(60)
                } label: {
                    Text("選択")
                }
                .pickerStyle(.wheel)
            }
        }
    }
}

#Preview {
    TimerSettingView()
}
