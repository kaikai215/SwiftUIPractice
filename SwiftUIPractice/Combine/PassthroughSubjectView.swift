//
//  PassthroughSubjectView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
// PassthroughSubject = 可以讓我們主動 send 值出去的 Publisher

import SwiftUI
import Combine

struct PassthroughSubjectView: View {
    var body: some View {
        Button("執行") {
            let subject = PassthroughSubject<String, Never>()
            
            let cancellable = subject
                .sink { value in
                    print(value)
                }
            
            subject.send("hello")
            subject.send("swift")
        }
    }
}

#Preview {
    PassthroughSubjectView()
}
