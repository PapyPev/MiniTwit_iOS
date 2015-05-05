//
//  MessagesTableViewCell.swift
//  MiniTwit_iOS
//
//  Created by Pierre Vrot on 29/04/15.
//  Copyright (c) 2015 Pierre Vrot. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    // Pour bien faire : si on met un style definit on met a jour sur notre model
    override var textLabel : UILabel? { return messageLabel }
    override var detailTextLabel : UILabel? { return detailLabel }
    
    // On definit nos propres labels
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!

}
