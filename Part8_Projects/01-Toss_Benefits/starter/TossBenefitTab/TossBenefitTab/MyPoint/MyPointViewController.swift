//
//  MyPointViewController.swift
//  TossBenefitTab
//
//  Created by YangJeongMu on 9/15/25.
//

import UIKit

class MyPointViewController: UIViewController {
    
    
    @IBOutlet var pointLabel: UILabel!
    
    var point: MyPoint = .default

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem
            .largeTitleDisplayMode = .never
    }
}
