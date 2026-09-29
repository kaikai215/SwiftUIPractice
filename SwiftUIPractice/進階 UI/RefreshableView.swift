//
//  RefreshableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 下拉畫面來重新載入資料

import SwiftUI

struct RefreshableView: View {
    var body: some View {
        List {
            Text("蘋果")
            Text("香蕉")
            Text("橘子")
        }
        .refreshable {
            print("重新載入資料")
        }
    }
}

#Preview {
    RefreshableView()
}
