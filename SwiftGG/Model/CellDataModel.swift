//
//  CellDataModel.swift
//  SwiftGG
//
//  Created by 徐开源 on 16/3/11.
//  Copyright © 2016年 徐开源. All rights reserved.
//

import UIKit

class CellDataModel: NSObject {
    
    var title:String!
    var link:String!
    
    init(title:String, link:String) {
        self.title = title
        self.link = link
        super.init()
    }
    
    func encodeWithCoder(_ aCoder: NSCoder!) {
        aCoder.encode(title, forKey: "title")
        aCoder.encode(link, forKey: "link")
    }
    
    init(coder aDecoder: NSCoder!) {
        self.title = aDecoder.decodeObject(forKey: "title") as! String
        self.link = aDecoder.decodeObject(forKey: "link") as! String
    }
}






