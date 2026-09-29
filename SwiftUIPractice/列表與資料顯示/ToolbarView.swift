//
//  ToolbarView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        NavigationStack {
            Text("首頁")
                .navigationTitle("App")
                //在目前這個畫面的 Toolbar 放入一個按鈕
                .toolbar {
                    Button("新增") {
                        print("按下新增")
                    }
                }
        }
    }
}

#Preview {
    ToolbarView()
}
