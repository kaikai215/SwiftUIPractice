//
//  ForEachView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//用來根據一組資料，重複建立 View

import SwiftUI

struct ForEachView: View {
    let fruits = ["蘋果","香蕉","西瓜"]
    
    var body: some View {
        VStack() {
            //fruit 就代表目前正在處理的那一筆資料
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
        }
    }
}

#Preview {
    ForEachView()
}
