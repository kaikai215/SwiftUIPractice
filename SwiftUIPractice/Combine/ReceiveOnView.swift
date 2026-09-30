//
//  ReceiveOnView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// 指定後面的資料處理要在哪個 Scheduler 執行
//Publisher
//   ↓
//資料
//   ↓
//receive(on: RunLoop.main)
//   ↓
//後面的 sink
//   ↓
//Main

import SwiftUI
import Combine

struct ReceiveOnView: View {
    var body: some View {
        Button("執行") {
            Just("Hello SwiftUI")
                .receive(on: RunLoop.main)
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    ReceiveOnView()
}
