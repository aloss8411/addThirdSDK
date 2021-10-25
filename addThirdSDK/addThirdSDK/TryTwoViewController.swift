//
//  TryTwoViewController.swift
//  addThirdSDK
//
//  Created by Lan Ran on 2021/10/24.
//

import UIKit
import ViewAnimator

class TryTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do an    y additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //ViewController中的方塊變化
        let littleview = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        littleview.center = view.center
        view.addSubview(littleview)
        littleview.backgroundColor = .systemCyan
        littleview.animate(animations: [AnimationType.rotate(angle: 90)],duration: 2)
        
    }
    
}
