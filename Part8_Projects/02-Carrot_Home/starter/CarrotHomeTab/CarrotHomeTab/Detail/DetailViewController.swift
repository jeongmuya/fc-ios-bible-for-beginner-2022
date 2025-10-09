//
//  DetailViewController.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/21/25.
//

import UIKit
import Combine
import Kingfisher

class DetailViewController: UIViewController {
    
    @IBOutlet var userThumbnail: UIImageView!
    @IBOutlet var userNickName: UILabel!
    @IBOutlet var userLocation: UILabel!
    @IBOutlet var userTemperature: UILabel!
    
    @IBOutlet var itemThumbnail: UIImageView!
    @IBOutlet var itemInfoTitle: UILabel!
    @IBOutlet var itemInfoDescription: UILabel!
    
    @IBOutlet var ItemPriceLabel: UILabel!
    
    
    
    var viewModel: DetailViewModel!
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureNavigationBar()
        bind()
        viewModel.fetch()
    }
    
    private func setupUI() {
        userThumbnail.layer.masksToBounds = true
        userThumbnail.layer.cornerRadius = 40
    }
    
    
    
    private func bind() {
        viewModel.$itemInfoDetails
            .compactMap{ $0 }
            .receive(on: RunLoop.main)
            .sink { details in
                self.userThumbnail.kf.setImage(with: URL(string: details.user.thumbnail))
                self.userNickName.text = details.user.name
                self.userLocation.text = details.user.location
                self.userTemperature.text = "\(details.user.temperature)°C"
                self.itemThumbnail.kf.setImage(with: URL(string: details.item.thumbnailURL))
                self.itemInfoTitle.text = details.item.title
                self.itemInfoDescription.text = details.details.descriptions
                self.ItemPriceLabel.text = "\(self.formatNumber(details.item.price))원"
                
            }.store(in: &subscriptions)
        
        
    }
    private func configureNavigationBar() {
        
        let searchConfig = CustomBarItemConfiguration(
            image: UIImage(systemName: "ellipsis"),
            handler: { print("---> more tapped")}
        )
        let moreItem = UIBarButtonItem.generate(with: searchConfig, width: 30)
        
        
        let shareConfig = CustomBarItemConfiguration(
            image: UIImage(systemName: "square.and.arrow.up"),
            handler: { print("---> share tapped")}
        )
        
        let shareItem = UIBarButtonItem.generate(with: shareConfig, width: 30)
        
        navigationItem.rightBarButtonItems = [moreItem, shareItem]
        navigationItem.backButtonDisplayMode = .minimal
        
    }
}


extension DetailViewController {
    private func formatNumber(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let result = formatter.string(from: NSNumber(integerLiteral: price)) ?? ""
        return result
    }
}
