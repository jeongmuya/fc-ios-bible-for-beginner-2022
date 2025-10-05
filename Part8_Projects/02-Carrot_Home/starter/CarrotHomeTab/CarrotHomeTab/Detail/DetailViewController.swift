//
//  DetailViewController.swift
//  CarrotHomeTab
//
//  Created by YangJeongMu on 9/21/25.
//

import UIKit

class DetailViewController: UIViewController {

    var viewModel: DetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        viewModel.fetch()

    }
    private func bind() {
        
    }

}
