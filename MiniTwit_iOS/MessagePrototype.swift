//
//  Message.swift
//  MiniTwit_iOS
//
//  Created by Pierre Vrot on 29/04/15.
//  Copyright (c) 2015 Pierre Vrot. All rights reserved.
//

import UIKit

class MessagePrototype: NSObject {

    // --- Variables ----
    var from: String
    var message: String
    var pub_date: Int
        
    // --- Constructor ----
    init(from:String, message:String, pub_date:Int){
        self.from = from
        self.message = message
        self.pub_date = pub_date
    }
   
}
