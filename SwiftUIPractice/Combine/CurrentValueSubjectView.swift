//
//  CurrentValueSubjectView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/30.
//
//CurrentValueSubject 會保存「目前的值」
//PassthroughSubject
//→ 沒有初始值
//
//CurrentValueSubject
//→ 有一個目前的值

import SwiftUI
import Combine

struct CurrentValueSubjectView: View {
    var body: some View {
        Button("執行") {
            let subject = CurrentValueSubject<String, Never>("初始值")
            
            let cancellable = subject
                .sink { value in
                    print(value)
                }
            
            subject.send("hello")
            
            print(cancellable)
        }
    }
}

#Preview {
    CurrentValueSubjectView()
}
