//
//  ProgressView.swift
//  ProgressShimmerAnimation-Example
//
//  Created by Nishant Taneja on 04/01/22.
//

import UIKit

open class ProgressView: UIView, ProgressShimmerAnimation {
    public var progressShimmerAnimationLayer: CAGradientLayer? = nil
    public var isAnimating: Bool = false
    
    // MARK: - Constructors
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
