//
//  PassDataView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 把資料傳到下一個 View

//目前 View
//   │
//   │ 傳入 "iPhone"
//   ↓
//ProductDetailView
//   │
//   ↓
//name

import SwiftUI

struct PassDataView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("查看商品") {
                ProductDetailView(name: "iPhone")
            }
        }
    }
}

struct ProductDetailView: View {
    let name: String
    
    var body: some View {
        Text("商品：\(name)")
    }
}

#Preview {
    PassDataView()
}
