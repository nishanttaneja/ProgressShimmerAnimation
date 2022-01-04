//
//  ViewController.swift
//  ProgressShimmerAnimation-Example
//
//  Created by Nishant Taneja on 04/01/22.
//

import UIKit
import ProgressShimmerAnimation

class ViewController: UIViewController {

    let progressView = ProgressView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(progressView)
        progressView.frame = .init(origin: .zero, size: .init(width: view.frame.width-32, height: 60))
        progressView.center = view.center
        progressView.startProgressShimmerAnimation()
    }


}

