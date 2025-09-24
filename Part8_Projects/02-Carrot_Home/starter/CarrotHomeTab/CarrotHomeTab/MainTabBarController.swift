//
//  MainTabBarController.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/21/25.
//

import UIKit

// [✅]  탭이 눌를때마다, 그에 맞는 네비게이션 바를 구성하고 싶어요...
// [✅]  탭이 눌리는 것을 감지 해야겠다.
// [✅]  탭이 감지후에, 그 탭에 맞게 네비게이션 바 구성을 업데이트 해줘야겠다.
// ✅

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    private func updateNavigationItem(vc: UIViewController) {
        
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {

        
        switch viewController {
        case is HomeViewController:
            
            let titleConfig = CustomBarItemConfiguration(title: "정자동", handler: { })
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let searchConfig = CustomBarItemConfiguration(image: UIImage(systemName: "magnifyingglass"), handler: { print("---> search tapped")})
            let searchItem = UIBarButtonItem.generate(with: searchConfig, width: 30)
    
            
            let feedConfig = CustomBarItemConfiguration(image: UIImage(systemName: "bell"), handler: { print("---> feed tapped")})
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
        
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem, searchItem]
            
        case is MyTownViewController:
            let titleConfig = CustomBarItemConfiguration(title: "정자동", handler: { })
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
    
            let feedConfig = CustomBarItemConfiguration(image: UIImage(systemName: "bell"), handler: { print("---> feed tapped")})
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
        
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]

            
        case is ChatViewController:
            
            let titleConfig = CustomBarItemConfiguration(title: "채팅", handler: { })
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let feedConfig = CustomBarItemConfiguration(image: UIImage(systemName: "bell"), handler: { print("---> feed tapped")})
            let feedItem = UIBarButtonItem.generate(with: feedConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [feedItem]
            
        case is MyProfileViewController:
            
            let titleConfig = CustomBarItemConfiguration(title: "나의 당근", handler: { })
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
            
            let settingConfig = CustomBarItemConfiguration(image: UIImage(systemName: "gear"), handler: { print("---> setting tapped")})
            let settingItem = UIBarButtonItem.generate(with: settingConfig, width: 30)
            
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = [settingItem]
            
        default:
            
            let titleConfig = CustomBarItemConfiguration(title: "정자동", handler: { })
            let titleItem = UIBarButtonItem.generate(with: titleConfig)
        
            navigationItem.leftBarButtonItem = titleItem
            navigationItem.rightBarButtonItems = []
            
        }
    }
}
