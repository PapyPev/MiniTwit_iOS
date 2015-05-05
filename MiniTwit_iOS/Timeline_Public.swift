//
//  Timeline_Public2.swift
//  MiniTwit_iOS
//
//  Created by Pierre Vrot on 29/04/15.
//  Copyright (c) 2015 Pierre Vrot. All rights reserved.
//

// ================================================================================

import UIKit // Utilise les methodes graphiques

// ================================================================================

class Timeline_Public: UIViewController, UITableViewDataSource {
    
    // Cree une variable globale de type tableau
    var tableData: [MessagePrototype] = []
    
    override func viewDidLoad(){
        
        // Declare l'url contenant le JSON comme String
        let url = "http://iris.local/api/timeline"
        
        // Recupere le contenu de l'URL (getJSON)
        let contentUrl = NSURL(string: url)!
        
        // Met sous forme de donnee le contenu de l'URL dans un objet Data
        let dataUrl = NSData(contentsOfURL: contentUrl)!
        
        // Parse chaque objet comme une collection (dictionnary)
        let parsedJson = NSJSONSerialization.JSONObjectWithData(dataUrl, options: .allZeros, error: nil) as! NSDictionary
        
        // Recupere les informations du JSON
        let allMessages = parsedJson["response"] as! [NSDictionary]
        
        // Parcours les messages recuperes
        for message in allMessages{
            tableData.append(MessagePrototype(from: message["from"] as! String, message: message["text"] as! String, pub_date: message["pub_date"] as! Int))
        }
        
    }
    
    // Donne le nombre d'elements
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count;
    }
    
    // Creation de cellule
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Creation de la cellule en cours
        let cell = tableView.dequeueReusableCellWithIdentifier("cellTimeLinePublic", forIndexPath:indexPath) as! MessageCell
        
        // MaJ date
        //let date = tableData[indexPath.row].pub_date as! NSDate
        //let dateFormated = date.timeIntervalSince1970
        
        // Association des labels sur la cellule
        cell.detailLabel.text = tableData[indexPath.row].from + "\n" + "\(tableData[indexPath.row].pub_date)"
        cell.messageLabel.text = tableData[indexPath.row].message
        
        return cell
        
    }
    
    // ================================================================================
    
    // Go to User Timeline
   
    
}