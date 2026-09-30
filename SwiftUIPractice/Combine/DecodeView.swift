//
//  DecodeView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// 把網路拿到的 JSON Data，轉成 Swift 的 Codable 型別

//JSON Data
//    ↓
//  decode
//    ↓
//User
//    ↓
//  sink
//    ├── receiveCompletion
//    │
//    └── receiveValue

import SwiftUI
import Combine

struct User1: Codable {
    let name: String
    let age: Int
}

struct DecodeView: View {
    var body: some View {
        Button("執行") {
            let json = """
                {
                    "name": "Tom",
                    "age": 20
                }
                """.data(using: .utf8)!
            
            Just(json)
                .decode(type: User1.self, decoder: JSONDecoder())
                .sink(
                    receiveCompletion: { completion in
                        print(completion)
                    },
                    receiveValue: { user in
                        print(user)
                    }
                )
        }
    }
}

#Preview {
    DecodeView()
}
