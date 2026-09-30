//
//  RemoveDuplicatesView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// removeDuplicates = 不讓連續重複的值往下傳。

import SwiftUI
import Combine

struct RemoveDuplicatesView: View {
    var body: some View {
        Button("執行") {
            [1, 1, 2, 2, 3, 3]
                .publisher
                .removeDuplicates()
                .sink { value in
                    print(value)
                }
        }
    }
}

#Preview {
    RemoveDuplicatesView()
}
