//
//  URLSessionView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//
//URL
// ↓
//URLSession
// ↓
//發送 Request
// ↓
//等待 Response
// ↓
//拿到資料

import SwiftUI

struct URLSessionView: View {
    @State private var message = "尚未取得資料"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(message)
            
            Button("取得資料") {
                Task {
                    await loadData()
                }
            }
        }
        .padding()
    }
    
    func loadData() async {
        guard let url = URL(string: "https://example.com") else {
            return
        }
        
        do {
            // URLSession.shared.data(from: url) 向指定的 URL 發送網路請求，並等待回應。
            let (_, response) = try await URLSession.shared.data(from: url)
            
            if let response = response as? HTTPURLResponse {
                message = "HTTP Status：\(response.statusCode)"
            }
        } catch {
            message = "取得資料失敗"
        }
    }
}

#Preview {
    URLSessionView()
}
