//
//  ViewController.swift
//  CustomView+Xib
//
//  Created by pinali gabani on 01/04/24.
//

import UIKit

class ViewController: UIViewController{
    
    var customXibView : CustomXibView?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addCustomViewClicked(_ sender: UIButton) {
        customXibView = CustomXibView()
        customXibView?.delegate = self
        view.addSubview(customXibView!)
        view.addSubviewAtBottom(height: 150, view: customXibView!)
    }
}
extension ViewController : CustomViewDelegate{
    func closeXib() {
        customXibView?.removeFromSuperview()
        customXibView = nil
    }
}
