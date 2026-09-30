//
//  CombineURLSessionView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// dataTaskPublisher = 把 URLSession 網路請求變成 Combine Publisher
//URLSession
//    ↓
//dataTaskPublisher
//    ↓
//Publisher
//    ↓
//sink
//    ↓
//資料


import SwiftUI
import Combine

struct CombineURLSessionView: View {
    var body: some View {
        Button("執行") {
            let url = URL(string: "https://example.com")!

            URLSession.shared
                .dataTaskPublisher(for: url)
                .sink(
                    receiveCompletion: { completion in
                        print(completion)
                    },
                    receiveValue: { data, response in
                        print(data)
                        print(response)
                    }
                )
        }
    }
}

#Preview {
    CombineURLSessionView()
}
