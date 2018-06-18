//
//  MainVİew.swift
//  Swift - Shimmer
//
//  Created by Technoface on 18.06.2018.
//  Copyright © 2018 Technoface. All rights reserved.
//

import UIKit

class ShimmerLabelView : UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let darkShimmerText = ShimmerText(frame: frame)
        darkShimmerText.textColor = UIColor(white: 1, alpha: 0.2)
        self.addSubview(darkShimmerText)

        let shinyShimmerText = ShimmerText(frame: frame)
        shinyShimmerText.textColor = .white
        self.addSubview(shinyShimmerText)
        
        
       
        
        
        let gradientLayer = GradientLayer(layer: shinyShimmerText.layer)
        gradientLayer.frame = shinyShimmerText.frame
        shinyShimmerText.layer.mask = gradientLayer
        
        
        //Animation
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.fromValue = -frame.width
        animation.toValue = frame.width
        animation.repeatCount = Float.infinity
        animation.duration  = 2
        
        gradientLayer.add(animation, forKey: "shimmeranimation")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

class ShimmerText: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.text = "Shimmer"
        self.textAlignment = .center
        self.font = UIFont.systemFont(ofSize: 80)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class GradientLayer: CAGradientLayer {
    override init(layer: Any) {
        super.init(layer: layer)
        self.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        self.locations = [0,0.5,1]
        
        let angle = 45 * CGFloat.pi / 180
        self.transform = CATransform3DMakeRotation(45, 0, 0, 1)
        
        
       
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
