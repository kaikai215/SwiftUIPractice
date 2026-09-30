//
//  SubscribeOnView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// subscribe(on:) = 決定 Publisher「在哪裡開始執行」

import SwiftUI
import Combine

struct SubscribeOnView: View {
    var body: some View {
        Button("執行") {
            Just("Hello Combine")
                .subscribe(on: DispatchQueue.global())
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    SubscribeOnView()
}
