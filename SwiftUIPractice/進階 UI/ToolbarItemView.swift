//
//  ToolbarItemView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//.toolbar = Toolbar 的容器
//ToolbarItem = Toolbar 裡的一個項目

import SwiftUI

struct ToolbarItemView: View {
    var body: some View {
        NavigationStack {
            Text("首頁")
                .navigationTitle("我的 App")
                .toolbar {
                    //指定這個 Toolbar Item 要放在哪裡
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("新增") {
                            print("新增")
                        }
                    }
                }
        }
    }
}

#Preview {
    ToolbarItemView()
}
