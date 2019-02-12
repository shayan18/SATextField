//
//  TextFieldTVC.swift
//  TextFieldSample
//
//  Created by mac on 2/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ServiceTextFieldTVC: UITableViewCell {
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var lineView: UIView!
    @IBOutlet weak private var serviceTextField: UITextField! {
        didSet {
            serviceTextField.delegate = self
        }
    }
    var textfieldTitle : String! {
        didSet {
            if textfieldTitle.last == "*" {
                titleLabel.halfTextColorChange(fullText: textfieldTitle, changeText: "*")
            }
            else {
                titleLabel.text = textfieldTitle
            }
        }
    }
    var placeholder : String! {
        didSet {
            serviceTextField.placeholder = placeholder
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }


}

extension ServiceTextFieldTVC: UITextFieldDelegate {

    func textFieldDidBeginEditing(_ textField: UITextField) {
        lineView.backgroundColor = UIColor.orange
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        lineView.backgroundColor = UIColor.gray
    }

}
