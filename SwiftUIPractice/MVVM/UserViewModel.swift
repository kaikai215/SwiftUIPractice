//
//  UserViewModel.swift
//  SwiftUIPractice
//
//  Created by kai on 2026/10/1.
// 處理、準備 View 需要的資料

import Foundation

@Observable
class UserViewModel {
    
    var state = UserState.idle
    var isLoading = false
    
    var user = UserModel(name: "Tom", age: 20)
    
    
    func chanceName(to name: String) {
        user = UserModel(name: name, age: user.age)
    }
        
    func loadUser() {
        isLoading = true
        user = UserModel(name: "jerry", age: 25)
        state = .success(user)
//        state = .failure("網路連線失敗")
    }
}

enum UserState {
    case idle
    case loading
    case success(UserModel)
    case failure(String)
}
