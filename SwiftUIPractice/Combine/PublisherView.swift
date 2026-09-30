//
//  PublisherView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Publisher = 發出資料的東西
// sink → 接資料

//Just("Hello Combine")
//        ↓
//Publisher
//        ↓
//sink
//        ↓
//收到 "Hello Combine"

import SwiftUI
import Combine

struct PublisherView: View {
    var body: some View {
        Button("執行") {
            Just("hello Combine")
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    PublisherView()
}
