//
//  CombineLatestView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// combineLatest = 把兩個 Publisher 最新的值組合成一組

import SwiftUI
import Combine

struct CombineLatestView: View {
    var body: some View {
        Button("執行") {
            let name = Just("Tom")
            let age = Just(20)
            
            name
                .combineLatest(age)
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    CombineLatestView()
}
