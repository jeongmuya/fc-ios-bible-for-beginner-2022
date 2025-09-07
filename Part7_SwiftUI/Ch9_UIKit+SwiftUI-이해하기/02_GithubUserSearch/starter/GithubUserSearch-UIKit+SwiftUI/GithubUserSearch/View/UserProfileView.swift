//
//  UserProfileView.swift
//  GithubUserSearch
//
//  Created by YangJeongMu on 9/7/25.
//

import SwiftUI

struct UserProfileView: View {
    
    @StateObject var viewModel: UserProfileViewModel
    
    var body: some View {
        VStack {
            Image("")
                .frame(width: 160, height: 160)
                .background(Color.gray)
                .cornerRadius(80)
            
            Text(viewModel.name)
            Text(viewModel.login)
            Text(viewModel.followers)
            Text(viewModel.following)
        }
    }
}

#Preview {
    UserProfileView(viewModel: UserProfileViewModel(network: NetworkService(configuration: .default), loginID: "cafielo"))
}
