//
//  JSONEncoderView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct UserInfo2: Codable {
    let name: String
    let age: Int
}

struct JSONEncoderView: View {
    var body: some View {
        Button("轉成 JSON") {
            let user = UserInfo2(name: "Tom", age: 20)
        
            //把 Swift 的 UserInfo 轉成 JSON Data。
            if let data = try? JSONEncoder().encode(user) {
                print(String(data: data, encoding: .utf8) ?? "")
            }
        
        }
    }
}

#Preview {
    JSONEncoderView()
}
