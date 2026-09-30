//
//  FilterView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// filter = 只讓符合條件的資料通過

import SwiftUI
import Combine

struct FilterView: View {
    var body: some View {
        Button("執行") {
            Just(10)
                .filter { number in
                    number > 5
                }
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    FilterView()
}
