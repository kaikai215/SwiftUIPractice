//
//  DebounceView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
//

import SwiftUI
import Combine

struct DebounceView: View {
    var body: some View {
        Button("執行") {
            Just("Hello")
                //收到值後，等 1 秒才送出去
                .debounce(for: .seconds(1), scheduler: RunLoop.main)
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    DebounceView()
}
