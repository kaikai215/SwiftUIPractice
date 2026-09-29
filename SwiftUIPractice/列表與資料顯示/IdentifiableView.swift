//
//  IdentifiableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓自己的 Model 擁有一個可以讓 SwiftUI 辨識的 ID

import SwiftUI

//這個資料有一個可以辨識自己的 ID
struct Fruit: Identifiable {
    let id = UUID()
    let name: String
}


struct IdentifiableView: View {
    let fruits = [
        Fruit(name: "蘋果"),
        Fruit(name: "香蕉"),
        Fruit(name: "西瓜")
    ]
    
    var body: some View {
        List {
            ForEach(fruits) { fruit in
                Text(fruit.name)
            }
        }
    }
}

#Preview {
    IdentifiableView()
}
