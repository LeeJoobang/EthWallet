//
//  MainView.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/03.
//

import UIKit
import SnapKit

class MainView: UIView {
        
    let createWalletButton: UIButton = {
        let button = UIButton()
        button.setTitle("신규 지갑 생성", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    let restoreWalletButton: UIButton = {
        let button = UIButton()
        button.setTitle("기존 지갑 복구", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setUI() {
        addSubview(createWalletButton)
        addSubview(restoreWalletButton)
        
        createWalletButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-30)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        restoreWalletButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(createWalletButton.snp.bottom).offset(20)
            make.width.equalTo(createWalletButton)
            make.height.equalTo(createWalletButton)
        }
    }
    
}
