//
//  ViewController.swift
//  Swift - Shimmer
//
//  Created by Technoface on 18.06.2018.
//  Copyright © 2018 Technoface. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        
        let mainview = ShimmerLabelView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 400))
        view.addSubview(mainview)
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

