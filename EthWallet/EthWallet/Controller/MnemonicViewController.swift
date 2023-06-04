//
//  NemonicViController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/04.
//

import UIKit
import SnapKit

class MnemonicViewController: UIViewController{
    
    let mnemonicView = MnemonicView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mnemonicView.backgroundColor = .white
        setUI()
        mnemonicView.MnemonicLabel.text = "12개 니모닉"
    }
    
    func setUI(){
        view.addSubview(mnemonicView)
        
        mnemonicView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
