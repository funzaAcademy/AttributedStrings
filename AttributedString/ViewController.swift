//
//  ViewController.swift
//  AttributedString
//
//  Created by Sanjay Noronha on 2015/12/25.
//  Copyright © 2015 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var myLabel: UILabel!
    let myText = " I love Carrots"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // identify individual attributes 
        // bundle attributes 
        // attach bundle with the label(s) text
        
        let myFont = UIFont(name: "American Typewriter", size: 50.0)
        
        let myAttributes = [
            NSFontAttributeName : myFont!
            ,NSForegroundColorAttributeName : UIColor.redColor()
            ,NSStrokeColorAttributeName : UIColor.blackColor()
            ,NSStrokeWidthAttributeName : -4

        
        ]
        
        let myMutableString = NSMutableAttributedString(string: myText, attributes: myAttributes)
       
        myMutableString.addAttribute(NSFontAttributeName, value: UIFont(name: "Chalkduster", size: 55)!, range: NSRange(location: 3, length: 4))
        
        myMutableString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellowColor(), range: NSRange(location: 3, length: 4))

        myLabel.attributedText = myMutableString
    }




}

