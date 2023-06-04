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
        self.navigationItem.hidesBackButton = true

        setUI()
        mnemonicView.MnemonicLabel.text = "12개 니모닉"
        mnemonicView.cancelButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        mnemonicView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    func setUI(){
        view.addSubview(mnemonicView)
        
        mnemonicView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    @objc func nextButtonTapped(){
        let vc = AddressViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func cancelButtonTapped(){
        self.navigationController?.popViewController(animated: true)
    }
}
