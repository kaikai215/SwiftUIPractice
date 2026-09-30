//
//  MapView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// map = 把 Publisher 發出的資料轉換後，再傳出去。

import SwiftUI
import Combine

struct MapView: View {
    var body: some View {
        Button("執行") {
            Just(10)
                .map { number in
                    number * 2
                }
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    MapView()
}
