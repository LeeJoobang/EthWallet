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
        mnemonicView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
    }
    
    func setUI(){
        view.addSubview(mnemonicView)
        
        mnemonicView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    @objc func cancelButtonTapped(){
        self.navigationController?.popViewController(animated: true)
    }
}
