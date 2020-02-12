//
//  ViewController.swift
//  AddViewIntoView
//
//  Created by Victor Hugo Benitez Bosques on 2/11/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewCustom: GenericFileOwner!
    
    // gnrStack
    @IBOutlet weak var gnrStack : UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
    }
    
    var genericView = GenericFileOwner()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        addCustomView(customView()) {
//            $0.widthAnchor.constraint(equalTo: $0.superview!.widthAnchor).isActive = true
//            $0.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
//        }
//        addCustomView(customView("abajo"), position: .begin) {
//            $0.widthAnchor.constraint(equalTo: $0.superview!.widthAnchor).isActive = true
//            $0.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
//        }
//
//        addCustomView(customView("middle"), position: .middle) {
//            $0.widthAnchor.constraint(equalTo: $0.superview!.widthAnchor).isActive = true
//            $0.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
//        }
//        addCustomView(customView("otro"), position: .bottom)
//
//
        addCustomView(genericView)
        
        
    }
    
    private func customView( _ strTitle : String = "Ejemplo") -> UIView{
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.add(UITextField(frame: .zero)) {
            
            // reference to the textField
            $0.layer.borderWidth = 1
            $0.layer.borderColor = UIColor.red.cgColor
            $0.placeholder = strTitle
            $0.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                $0.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.8),
                $0.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
                $0.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
        return view
    }
    
    
    

    
    
}

extension ViewController{
    
    /// Enum to specify subview position
    enum PositionView{
        case begin
        case middle
        case bottom
    }
    
    /**
     Function that executes a closure (for apply context-specific configurations)
     after adding a view as a subview in Generic BDMGenericResumeViewrdddfController
     
     - Parameters:
     - subview: UIView
     - position: Enum to specify subview position
     - closure: Closure
     
     - Returns:
     - A closure for apply context-specific configurations
     */
    @discardableResult
    func addCustomView<T: UIView>(_ subview: T,
                                  position: PositionView = .begin,
                                  closure: ((T) -> Void)? = nil) -> T{
        switch position {
        case .begin:
            gnrStack.insertArrangedSubview(subview, at: 0)
        case .middle:
            gnrStack.insertArrangedSubview(subview, at: 1)
        case .bottom:
            gnrStack.addArrangedSubview(subview)
        }
        view.layoutIfNeeded()
        closure?(subview)
        return subview
    }
}
