//
//  CompactMapView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
//compactMap = 轉換資料，同時把 nil 過濾掉

import SwiftUI
import Combine

struct CompactMapView: View {
    var body: some View {
        Button("執行") {
            Just("123")
                .compactMap { value in
                    Int(value)
                }
                .sink { value in
                    print(value)
                }
            
        }
    }
}

#Preview {
    CompactMapView()
}
