//
//  ContentShapeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 決定 View 哪一塊區域可以被點擊 / 互動

import SwiftUI

struct ContentShapeView: View {
    var body: some View {
        Text("點我")
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            //這個 View 的可互動範圍，用這個形狀來判定
            .contentShape(Rectangle())
            .onTapGesture {
                print("被點擊了")
            }
    }
}

#Preview {
    ContentShapeView()
}
