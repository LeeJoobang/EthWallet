//
//  ViewController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/02.
//

import UIKit
import SnapKit
import web3swift

class MainViewController: UIViewController {
        
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .white
        setUI()
        mainView.createWalletButton.addTarget(self, action: #selector(createButtonTapped), for: .touchUpInside)

    }
    
    func setUI(){
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    @objc func createButtonTapped(){
        let privateKeyVC = PrivateKeyViewController()
        self.navigationController?.pushViewController(privateKeyVC, animated: true)
        print("hi")
    }
    
}

