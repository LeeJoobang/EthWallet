//
//  WalletView.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/04.
//

import UIKit
import SnapKit

class WalletView: UIView {
    
    let walletAddressLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    let addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 30
        button.tintColor = .white
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
        addSubview(walletAddressLabel)
        addSubview(tableView)
        addSubview(addButton)
        
        walletAddressLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(30)
            make.width.equalToSuperview().offset(-40)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.top.equalTo(walletAddressLabel.snp.bottom).offset(20)
            make.left.right.equalToSuperview()
            make.bottom.equalTo(addButton.snp.top).offset(-20)
        }
        
        addButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.width.height.equalTo(60)
        }
    }
}
