//
//  BenefitListViewController.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/9/25.
//

import UIKit

class BenefitListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    typealias Item = AnyHashable
    
    enum Section {
        case today
        case other
        
    }

    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    var todaySectionItems: [AnyHashable] = [포인트, 오늘의혜택]
    var otherSectionItems: [AnyHashable] = [혜택 나머지 리스트]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "혜택"
    }
}
