//
//  CodableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// Codable = Swift Model ↔ 外部資料格式的橋樑

import SwiftUI

//讓 Swift 的資料結構可以和外部資料格式互相轉換
struct UserData: Codable {
    let name: String
    let age: Int
}

struct CodableView: View {
    var body: some View {
        Text("UserData 可以被編碼與解碼")
    }
}

#Preview {
    CodableView()
}
