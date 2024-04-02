//
//  Extension.swift
//  CustomView+Xib
//
//  Created by pinali gabani on 02/04/24.
//

import Foundation
import UIKit

extension UIView{
    
    func addSubviewAtBottom(height : CGFloat,view : UIView){
        
        view.translatesAutoresizingMaskIntoConstraints = false
        let heightConstraint = NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height)
        let leading = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        let bottomConstraint = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: CGFloat(-0))
        self.addConstraints([heightConstraint,leading,trailing,bottomConstraint])
    }
}
