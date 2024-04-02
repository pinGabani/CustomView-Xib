//
//  CustomXibView.swift
//  CustomView+Xib
//
//  Created by pinali gabani on 01/04/24.
//

import UIKit

protocol CustomViewDelegate : NSObjectProtocol{
    func closeXib()
}

class CustomXibView: UIView {

    @IBOutlet var containerView: UIView!
    
    var delegate : CustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
         setup()
    }
    
    func setup(){
        Bundle.main.loadNibNamed("CustomXibView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleWidth , .flexibleHeight]
    }
    
    @IBAction func closeXib(_ sener : UIButton){
        delegate?.closeXib()
    }
}
