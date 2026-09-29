//
//  StateView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//  View 自己擁有、管理的狀態。

import SwiftUI

struct StateView: View {
    
    //這個 View 自己擁有一個叫 count 的狀態，初始值是 0
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("目前數量\(count)")
            
            Button("增加") {
                count += 1
            }
            
            Button("歸零") {
                count = 0
            }
            .padding()
        }
        
    }
}

#Preview {
    StateView()
}
