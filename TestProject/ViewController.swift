//
//  ViewController.swift
//  TestProject
//
//  Created by Siarhei Dubko on 20.02.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)

            let newX = blueView.center.x + translation.x
            let newY = blueView.center.y + translation.y
            let senderWidth = blueView.bounds.width / 2
            let senderHight = blueView.bounds.height / 2

            if newX <= senderWidth
            {
                blueView.center = CGPoint(x: senderWidth, y: blueView.center.y + translation.y)
            }
            else if newX >= self.view.bounds.maxX - senderWidth
            {
                blueView.center = CGPoint(x: self.view.bounds.maxX - senderWidth, y: blueView.center.y + translation.y)
            }
            if newY <= senderHight
            {
                blueView.center = CGPoint(x: blueView.center.x + translation.x, y: senderHight)
            }
            else if newY >= self.view.bounds.maxY - senderHight
            {
                blueView.center = CGPoint(x: blueView.center.x + translation.x, y: self.view.bounds.maxY - senderHight)
            }
            else
            {
                blueView.center = CGPoint(x: blueView.center.x + translation.x, y: blueView.center.y + translation.y)
            }

        sender.setTranslation(CGPoint.zero, in: self.view)
    }
}





