//
//  ViewController.swift
//  TextFieldSample
//
//  Created by mac on 2/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = serviceTextFieldDataSource
        }
    }

    private let serviceTextFieldDataSource = ServiceTextFieldDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupPlaceHolders(titleList: ["email*","password","mobilenumber"], placeholderList: ["your email","your password", "your mobilenumber"], serviceTextFieldDataSource: serviceTextFieldDataSource)
        tableView.register(UINib(nibName: "ServiceTextFieldView", bundle: nil), forCellReuseIdentifier: "cell")
        //table view footer border view
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        self.view.layoutIfNeeded()
        tableViewHeight.constant = tableView.contentSize.height

    }


}
extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
