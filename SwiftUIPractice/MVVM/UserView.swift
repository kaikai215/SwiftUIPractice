//
//  UserView.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/10/1.
//

import SwiftUI

struct UserView: View {
    @State private var viewModel = UserViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.user.name)
            Text("\(viewModel.user.age) 歲")
            
            Button("改成Jerry") {
                viewModel.chanceName(to: "Jerry")
            }
            
            Button("取得使用者") {
                viewModel.loadUser()
            }
            
            switch viewModel.state {
            case .idle:
                Text("尚未載入")
            case .loading:
                Text("載入中....")
            case .success(let user):
                Text(user.name)
            case .failure(let message):
                Text(message)
                
            }
            
//            if viewModel.isLoading {
//                Text("載入中...")
//            } else {
//                Text("尚未載入")
//            }
            
            
            
        }
    }
}

#Preview {
    UserView()
}
