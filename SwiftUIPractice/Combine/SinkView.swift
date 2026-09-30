//
//  SinkView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//Just("Hello Combine")
//        ↓
//    Publisher
//        ↓
//       sink
//        ↓
//   print(value)

import SwiftUI
import Combine

struct SinkView: View {
    var body: some View {
        Button("執行") {
            Just("Hello Combine")
                //Publisher 發資料給我的時候，我要怎麼處理？
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    SinkView()
}
