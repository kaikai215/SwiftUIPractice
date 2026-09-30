//
//  CombineSwiftUIView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
//
//ObservableObject可以被觀察的物件
//@StateObject 狀態物件

import SwiftUI
import Combine

class CounterData: ObservableObject {
    @Published var count = 0
}

struct CombineSwiftUIView: View {
    @StateObject private var data = CounterData()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(data.count)")
            
            Button("增加") {
                data.count += 1
            }
        }
    }
}

#Preview {
    CombineSwiftUIView()
}
