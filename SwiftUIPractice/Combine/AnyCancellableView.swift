//
//  AnyCancellableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//Publisher
//   ↓
//Just("Hello Combine")
//   ↓
//sink
//   ├──→ Hello Combine       ← 資料
//   │
//   └──→ AnyCancellable      ← 訂閱

//AnyCancellable = 可以管理、取消 Combine 訂閱的東西

import SwiftUI
import Combine

struct AnyCancellableView: View {
    var body: some View {
        Button("執行") {
            //拿到的就是一個AnyCancellable = 管理 Combine 訂閱的東西
            let cancellable = Just("Hello Combine")
                .sink { value in
                    print(value)
                }
            print(cancellable)
        }
    }
}

#Preview {
    AnyCancellableView()
}
