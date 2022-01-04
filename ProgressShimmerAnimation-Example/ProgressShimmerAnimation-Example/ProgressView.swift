//
//  ProgressView.swift
//  ProgressShimmerAnimation-Example
//
//  Created by Nishant Taneja on 04/01/22.
//

import Foundation
import UIKit
import ProgressShimmerAnimation

class ProgressView: UIView, ProgressShimmerAnimation {
    var progressShimmerAnimationLayer: CAGradientLayer? = nil
    var isAnimating: Bool = false
    
    // MARK: - Constructors
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
