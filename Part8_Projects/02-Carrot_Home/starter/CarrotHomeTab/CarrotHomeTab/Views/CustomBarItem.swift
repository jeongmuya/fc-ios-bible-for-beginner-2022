//
//  CustomBarItem.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/22/25.
//

import Foundation
import UIKit

struct CustomBarItemConfiguration {
    
    typealias Handler = () -> Void
    
    let title: String?
    let image: UIImage?
    let handler: Handler
    
    init(title: String? = nil, image: UIImage? = nil, handler: @escaping Handler) {
        self.title = title
        self.image = image
        self.handler = handler
    }
}


final class CustomBarItem: UIButton {
    // 타이틀, 이미지, 액션 핸들러
    
    var customBarItmeConfig: CustomBarItemConfiguration
    
    var handler: (()-> Void)?
    
    init(config: CustomBarItemConfiguration) {
        self.customBarItmeConfig = config
        super.init(frame: .zero)
        setupStyle()
        updateConfig()
        
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    private func setupStyle() {
        self.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        self.titleLabel?.textColor = .white
        self.imageView?.tintColor = .white
    }
    
    private func updateConfig() {
        self.setTitle(customBarItmeConfig.title, for: .normal)
        self.setImage(customBarItmeConfig.image, for: .normal)
    }
    
    @objc func buttonTapped() {
        customBarItmeConfig.handler()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
