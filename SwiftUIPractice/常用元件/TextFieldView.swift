//
//  TextFieldView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("請輸入姓名", text: $name)
            
            Text("你輸入的是\(name)")
        }
        .padding()
    }
}

#Preview {
    TextFieldView()
}
