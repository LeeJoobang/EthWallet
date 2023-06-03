//
//  ViewController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/02.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    let mainview = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        view.addSubview(mainview)
        mainview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

