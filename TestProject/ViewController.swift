//
//  ViewController.swift
//  TestProject
//
//  Created by Siarhei Dubko on 20.02.21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view{
            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

