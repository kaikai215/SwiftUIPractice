//
//  TaskView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct TaskView: View {
    @State private var message = "還沒開始"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(message)
            
            Button("開始工作") {
                //建立一個非同步工作的執行區域
                Task {
                    message = "工作中..."
                    
                    try? await Task.sleep(for: .seconds(2))
                    
                    message = "完成！"
                }
            }
        }
        .padding()
    }
}

#Preview {
    TaskView()
}
