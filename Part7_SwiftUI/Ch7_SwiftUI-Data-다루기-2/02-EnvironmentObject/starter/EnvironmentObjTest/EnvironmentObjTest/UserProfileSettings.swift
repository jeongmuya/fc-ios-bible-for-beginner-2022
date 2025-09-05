//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by YangJeongMu on 9/5/25.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
