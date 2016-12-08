//
//  MyCollectionViewItem.swift
//  NSCollectionView-Swift
//
//  Created by AkihiroOrikasa on 2016/12/08.
//  Copyright © 2016年 Pocosoft. All rights reserved.
//

import Cocoa

class MyCollectionViewItem: NSCollectionViewItem {

    
    @IBOutlet weak var label: NSTextField!
    @IBOutlet weak var nameField: NSTextFieldCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    func setString(value: String) {
        label.stringValue = value
    }
    
}
