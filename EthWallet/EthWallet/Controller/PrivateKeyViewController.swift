//
//  PrivateKeyViewController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/03.
//

import UIKit
import SnapKit

class PrivateKeyViewController: UIViewController{
    
    let privateKeyView = PrivateKeyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        privateKeyView.backgroundColor = .white
        setUI()
        privateKeyView.privateKeyLabel.text = "생성된 비공개 키 표시"
    }
    
    func setUI(){
        view.addSubview(privateKeyView)
        
        privateKeyView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

