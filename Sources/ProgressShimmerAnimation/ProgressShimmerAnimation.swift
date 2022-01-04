import UIKit

public protocol ProgressShimmerAnimation: UIView {
    
    var progressShimmerAnimationLayer: CAGradientLayer? { get set }
    public var isAnimating: Bool { get set }
    
    public func startProgressShimmerAnimation()
    public func stopProgressShimmerAnimation()
    
}

extension ProgressShimmerAnimation {
    
    var progressShimmerAnimationLayer: CAGradientLayer? {
        nil
    }
    
    var isAnimating: Bool {
        false
    }
    
    private func getGradientLayer() -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = bounds
        layer.startPoint = .zero
        layer.endPoint = .init(x: 1, y: .zero)
        let gradientColor1: CGColor = UIColor.init(white: 1, alpha: 0.2).cgColor
        let gradientColor2: CGColor = UIColor.init(white: 1, alpha: 0.8).cgColor
        layer.colors = [gradientColor1, gradientColor2, gradientColor1]
        layer.locations = [0, 0.5, 1]
        progressShimmerAnimationLayer = layer
        return layer
    }
    
    private func getShimmerAnimation() -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [-1, -0.5, .zero]
        animation.toValue = [1, 1.5, 2]
        animation.repeatCount = .infinity
        animation.duration = 1.5
        return animation
    }
    
    func startProgressShimmerAnimation() {
        DispatchQueue.main.async {
            self.isHidden = false
            self.isAnimating =  true
            self.layer.addSublayer(self.progressShimmerAnimationLayer ?? self.getGradientLayer())
            let shimmerAnimation = self.getShimmerAnimation()
            self.progressShimmerAnimationLayer?.add(shimmerAnimation, forKey: shimmerAnimation.keyPath)
        }
    }
    
    func stopProgressShimmerAnimation() {
        DispatchQueue.main.async {
            self.isHidden = true
            self.isAnimating = false
            self.progressShimmerAnimationLayer?.removeFromSuperlayer()
            self.progressShimmerAnimationLayer = nil
        }
    }
    
}
