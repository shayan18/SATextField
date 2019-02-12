//
//  TextFieldDataSource.swift
//  TextFieldSample
//
//  Created by mac on 2/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
class ServiceTextFieldDataSource:NSObject, UITableViewDataSource {

    var titleList = [String]()
    var placeHolderList = [String]()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return titleList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ServiceTextFieldTVC
        cell.textfieldTitle = titleList[indexPath.row]
        cell.placeholder = placeHolderList[indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        return UITableView.automaticDimension
    }
}
