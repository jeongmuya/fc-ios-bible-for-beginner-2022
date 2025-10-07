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
    
    var viewModel: DetailViewModel!
    var subscriptions = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        viewModel.fetch()

    }
    private func bind() {
        viewModel.$itemInfoDetails
            .compactMap{ $0 }
            .receive(on: RunLoop.main)
            .sink { details in
                self.userThumbnail.kf.setImage(with: URL(string: details.user.thumnail))
                self.userNickName.text = details.user.name
                self.userLocation.text = details.user.location
                self.userTemperature.text = "\(details.user.temperature)°C"
                self.itemThumbnail.kf.setImage(with: URL(string: details.item.thumbnailURL))
                self.itemInfoTitle.text = details.item.title
                self.itemInfoDescription.text = details.details.descriptions
                
            }.store(in: &subscriptions)
        
        
    }

}
