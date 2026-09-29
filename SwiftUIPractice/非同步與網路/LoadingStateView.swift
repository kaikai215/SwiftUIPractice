//
//  LoadingStateView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/9/29.
//

import SwiftUI

struct LoadingStateView: View {
    enum State {
        case loading
        case success
        case error
    }
    
    @State private var state: State = .loading

    
    var body: some View {
        VStack(spacing: 20) {
            switch state {
            case .loading:
                ProgressView("載入中")
            case .success:
                Text("載入成功")
            case .error:
                Text("載入失敗")
            }
            
            Button("切換狀態") {
                switch state {
                case .loading:
                    state = .loading
                case .success:
                    state = .success
                case .error:
                    state = .error
                }
            }
        }
        .padding()
    }
}

#Preview {
    LoadingStateView()
}
