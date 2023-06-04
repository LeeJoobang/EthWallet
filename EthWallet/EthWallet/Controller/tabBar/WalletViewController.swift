//
//  WalletViewController.swift
//  EthWallet
//
//  Created by Joobang on 2023/06/04.
//

import UIKit
import SnapKit

class WalletViewController: UIViewController {
    
    private let walletView = WalletView()
    var numberOfRows = 5

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.hidesBackButton = true
        
        walletView.tableView.delegate = self
        walletView.tableView.dataSource = self
        
        walletView.walletAddressLabel.text = "신규 지갑 주소 표시"
        walletView.addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        setUI()

    }
    
    @objc func addButtonTapped() {
        numberOfRows += 1
        walletView.tableView.reloadData()
    }
    
    func setUI(){
        view.addSubview(walletView)
        walletView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension WalletViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "네트워크별 \(indexPath.row + 1)"
        return cell

    }
    
    
}
