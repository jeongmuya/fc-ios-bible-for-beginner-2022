//
//  HomeViewController.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/21/25.
//

import UIKit
import Combine

class HomeViewController: UIViewController {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    
    let viewModel: HomeViweModel = HomeViweModel(network: NetworkService(configuration: .default))
    var subscriptions = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        bind()
        viewModel.fetch()
    }
    
    private func configureCollectionView() {
        
    }
    
    
    private func bind() {
        viewModel.$items
            .receive(on: RunLoop.main)
            .sink { items in
                print("--> update collection view \(items)")
            }.store(in: &subscriptions)
        
        viewModel.itemTapped
            .sink { item in
                let sb = UIStoryboard(name: "Detail", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as!
                   DetailViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }.store(in: &subscriptions)
        
    }
}
