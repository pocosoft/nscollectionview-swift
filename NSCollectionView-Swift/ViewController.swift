//
//  ViewController.swift
//  NSCollectionView-Swift
//
//  Created by AkihiroOrikasa on 2016/12/07.
//  Copyright © 2016年 Pocosoft. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let item = self.storyboard?.instantiateController(withIdentifier: "collectionViewItem") as! NSCollectionViewItem
        
        collectionView.itemPrototype = item
        
        var entitys = [MyEntity]()
        for i in 0...100 {
            let entity = MyEntity(name: "\(i)")
            entitys.append(entity)
        }
        collectionView.content = entitys
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

