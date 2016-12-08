//
//  GridViewController.swift
//  NSCollectionView-Swift
//
//  Created by AkihiroOrikasa on 2016/12/07.
//  Copyright © 2016年 Pocosoft. All rights reserved.
//

import Cocoa

class GridViewController: NSViewController, NSCollectionViewDataSource {

    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        collectionView.dataSource = self
        let nib = NSNib(nibNamed: "MyCollectionViewItem", bundle: nil)!
        collectionView.register(nib, forItemWithIdentifier: "Cell")
    }
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: "Cell", for: indexPath) as! MyCollectionViewItem
        item.label.stringValue = "\(indexPath.count)"
        return item
    }
    
}
