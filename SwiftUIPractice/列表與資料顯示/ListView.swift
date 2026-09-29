//
//  ListView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 用來顯示一列一列資料的元件

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("蘋果")
            Text("橘子")
            Text("香蕉")
        }
    }
}

#Preview {
    ListView()
}
