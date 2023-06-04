//
//  AddressViewController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/04.
//

import UIKit

class AddressViewController: UITabBarController {

    let walletVC = WalletViewController()
    let emptyVC = UIViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.hidesBackButton = true

        let walletVC = UINavigationController(rootViewController: walletVC)
        walletVC.tabBarItem = UITabBarItem(title: "Wallet", image: nil, tag: 0)

        let settingsVC = UINavigationController(rootViewController: emptyVC)
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: nil, tag: 1)
        
        self.viewControllers = [walletVC, settingsVC]
    }
}
