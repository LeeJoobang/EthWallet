//
//  PrivateKeyView.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/03.
//

import UIKit
import SnapKit

class PrivateKeyView: UIView {
    
    let privateKeyLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        button.backgroundColor = .green
        return button
    }()
    
    let cancelButton: UIButton = {
        let button = UIButton()
        button.setTitle("취소", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        addSubview(privateKeyLabel)
        addSubview(nextButton)
        addSubview(cancelButton)
        
        privateKeyLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(30)
            make.width.equalToSuperview().offset(-40)
        }
        
        nextButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(cancelButton.snp.top).offset(-20)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        cancelButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.width.equalTo(nextButton)
            make.height.equalTo(nextButton)
        }
    }
}
