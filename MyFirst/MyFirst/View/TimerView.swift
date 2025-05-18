//
//  TimerView.swift
//  MyFirst
//
//  Created by 千葉圭梧 on 2025/05/18.
//

import SwiftUI

struct TimerView: View {
    @State var timerHandler: Timer?
    @State var count: Int = 0
    @AppStorage("timer_value") var timerValue = 10
    @State var isShowAlert: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()

                VStack(spacing: 30.0) {
                    Text("残り \(timerValue - count)秒")
                        .font(.largeTitle)
                    HStack {
                        Button {
                            startTimer()
                        } label: {
                            Text("Start")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(width: 140.0, height: 140.0)
                                .background(Color.startTimer)
                                .clipShape(Circle())
                        }
                        Button {
                            if let timerHandler {
                                if timerHandler.isValid {
                                    timerHandler.invalidate()
                                }
                            }
                        } label: {
                            Text("Stop")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .frame(width: 140.0, height: 140.0)
                                .background(Color.stopTimer)
                                .clipShape(Circle())
                        }
                    }
                }
            }
            .onAppear {
                count = 0
                timerHandler?.invalidate()
            }
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.topBarTrailing) {
                    NavigationLink {
                        TimerSettingView()
                    } label: {
                        Text("秒数設定")
                    }
                }
            }
            .alert("終了", isPresented: $isShowAlert) {
                Button("OK") {
                    print(">>> OK")
                }
            } message: {
                Text("タイマー終了時間です")
            }
        }
    }

    func countDownTimer() {
        count += 1

        if timerValue - count <= 0 {
            timerHandler?.invalidate()
            isShowAlert = true
        }
    }

    func startTimer() {
        if let timerHandler {
            if timerHandler.isValid {
                return
            }
        }

        if timerValue - count <= 0 {
            count = 0
        }

        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            _ in
            Task {
                @MainActor in countDownTimer()
            }
        }
    }
}

#Preview {
    TimerView()
}
