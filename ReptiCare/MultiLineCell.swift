//
//  MultiLineCell.swift
//  ReptiCare
//
//  Created by Kevin De Koninck on 18/09/16.
//  Copyright © 2016 Kevin De Koninck. All rights reserved.
//

import UIKit

class MultiLineCell: UITableViewCell {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var extraTitleField: UILabel!
    
    @IBOutlet weak var thinLine: UIView!
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var contentTextView: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        

        background.layer.cornerRadius = 10
        background.layer.masksToBounds = true
        
        background.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.4)
        
        // Add blur
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = background.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        blurEffectView.alpha = 0.70
        background.insertSubview(blurEffectView, at: 0)
    }
    
    
    func configureCell(_ title: String, boldTitle: Bool, content: String, accentColor: UIColor){
        
        topView.backgroundColor = UIColor.white
        thinLine.backgroundColor = accentColor.lighter(30)!
        
        titleLbl.text = title
        if boldTitle == false {
            titleLbl.font = UIFont (name: "HelveticaNeue-Light", size: 14)
        } else {
            titleLbl.font = UIFont (name: "HelveticaNeue-Bold", size: 14)
        }
        extraTitleField.text = ""
        
        contentTextView.text = content
    //    contentTextView.setContentOffset(CGPoint(x: 0, y: -20), animated: false)
        
        thinLine.backgroundColor = accentColor
        
        if content == "" {
            self.isHidden = true
        }
    }
    
    
    func configureCell(_ title: String, boldTitle: Bool, TitleNote: String, content: String, accentColor: UIColor){
        
        topView.backgroundColor = UIColor.white
        thinLine.backgroundColor = accentColor.lighter(30)!
        
        titleLbl.text = title
        if boldTitle == false {
            titleLbl.font = UIFont (name: "HelveticaNeue-Light", size: 14)
        } else {
            titleLbl.font = UIFont (name: "HelveticaNeue-Bold", size: 14)
        }
        extraTitleField.text = TitleNote
        
        
        contentTextView.text = content
    //    contentTextView.setContentOffset(CGPoint(x: 0, y: -20), animated: false)
        
        thinLine.backgroundColor = accentColor
        
        if content == "" {
            self.isHidden = true
        }
    }
    
    
    


}
