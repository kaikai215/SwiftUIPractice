//
//  ObservableView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
// 讓一個 Model / ViewModel 的資料變化可以被 SwiftUI 觀察。

import SwiftUI
import Observation


//Counter 裡面的資料可以被 SwiftUI 觀察
@Observable
class Counter {
    var count = 0
}

struct ObservableView: View {
    //這個 View 持有一個 Counter
    @State private var counter = Counter()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("目前數量：\(counter.count)")
            
            Button("增加") {
                counter.count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ObservableView()
}
