//
//  ListForEachView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//List
//= 列表容器
//
//ForEach
//= 重複產生 View
//
//兩個合起來
//= 用資料產生列表

import SwiftUI

struct ListForEachView: View {
    let fruits = ["蘋果", "香蕉", "橘子"]

    var body: some View {
        List {
            // \.self = 用資料本身當 ID
            ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
            }
        }
    }
}

#Preview {
    ListForEachView()
}
