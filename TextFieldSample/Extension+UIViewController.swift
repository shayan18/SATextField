//
//  Extension+UIViewController.swift
//  TextFieldSample
//
//  Created by mac on 2/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func setupPlaceHolders (titleList: [String], placeholderList: [String], serviceTextFieldDataSource: ServiceTextFieldDataSource) {
        serviceTextFieldDataSource.titleList = titleList
        serviceTextFieldDataSource.placeHolderList = placeholderList
    }

}

extension NSMutableAttributedString {

    func setColorForText(textForAttribute: String, withColor color: UIColor) {
        let range: NSRange = self.mutableString.range(of: textForAttribute, options: .caseInsensitive)

        // Swift 4.2 and above
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)


    }

}
extension UILabel {
    func halfTextColorChange (fullText : String , changeText : String ) {
        let strNumber: NSString = fullText as NSString
        let range = (strNumber).range(of: changeText)
        let attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red , range: range)
        self.attributedText = attribute
    }
}
