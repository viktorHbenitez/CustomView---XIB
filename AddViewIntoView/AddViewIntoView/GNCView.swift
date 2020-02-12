//
//  GNCView.swift
//  AddViewIntoView
//
//  Created by Victor Hugo Benitez Bosques on 2/11/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class GNCView: UIView {
  
}


class GenericFileOwner: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        addGeneriView()  // creates two instance if in the IBOutlet uiview
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame) // programatically Instance NIB
        addGeneriView()
        print("super.init(frame: frame)")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder) // programatically Instance NIB
        addGeneriView()
        print("super.init(coder: aDecoder) ")
    }
    
    
    @IBAction func tapped(){
        print("tapped button")
    }
    
    
    func addGeneriView(){
        if let xib = Bundle.main.loadNibNamed(GNCView.identifierView, owner: self, options: nil)?.first as? GNCView{
            addSegmentView(xib, constraintTo: self)
        }
    }
}
