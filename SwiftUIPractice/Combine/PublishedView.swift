//
//  PublishedView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// @Published = 當屬性改變時，把新的值發布出去
//message
//   ↓
//@Published
//   ↓
//data.$message
//   ↓
//Publisher
//   ↓
//sink

import SwiftUI
import Combine


struct PublishedView: View {
    var body: some View {
            Button("執行") {
                //建立了一個資料物件
                let data = MessageData()
                
                let cancellable = data.$message
                    .sink { value in
                        print(value)
                    }
                data.message = "Hello"
                data.message = "SwiftUI"
                
                print(cancellable)
                
            }
    }
}

class MessageData {
    @Published var message = "還沒修改"
}

#Preview {
    PublishedView()
}
