//
//  JSONDecoderView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct UserInfo: Codable {
    let name: String
    let age: Int
}

struct JSONDecoderView: View {
    var body: some View {
        Text("JSONDecoder")
    }
    
    func decodeUser() {
        let json = """
        {
            "name": "Tom",
            "age": 20
        }
        """.data(using: .utf8)!
        
        //把 JSON 資料解碼成 UserInfo
        let user = try? JSONDecoder().decode(UserInfo.self, from: json)
        
        print(user?.name ?? "")
    }
}

#Preview {
    JSONDecoderView()
}
