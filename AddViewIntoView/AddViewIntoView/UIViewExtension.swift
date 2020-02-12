//
//  UIViewExtension.swift
//  AddViewIntoView
//
//  Created by Victor Hugo Benitez Bosques on 2/11/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

extension UIView {

    @discardableResult
    func add<T: UIView>(_ subview: T, then closure: (T) -> Void) -> T {
        addSubview(subview)
        closure(subview)
        return subview
    }
    
    
    
    class var identifierView: String { return String(describing: self) }

    
    
    func addSegmentView(_ subview : UIView, constraintTo anchorView : UIView){
        // add the uiview to the File owner
        addSubview(subview)
        // constraint to the XIB bounderies
        subview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subview.topAnchor.constraint(equalTo: self.topAnchor),
            subview.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            subview.leftAnchor.constraint(equalTo: self.leftAnchor),
            subview.rightAnchor.constraint(equalTo: self.rightAnchor),
        ])
    }
}
