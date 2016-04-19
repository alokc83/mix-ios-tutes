//
//  RangeSliderTrackLayer.swift
//  MACustomSlider
//
//  Created by Alok Choudhary on 4/19/16.
//  Copyright © 2016 Alok Choudhary. All rights reserved.
//

import UIKit

class RangeSliderTrackLayer: CALayer {
    weak var rangeSlider: RangeSlider?
    
    override func drawInContext(ctx: CGContext){
        if let slider = rangeSlider {
            //clip 
            let cornerRadius = bounds.height * slider.curvaceousness / 2.0
            let path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
            CGContextAddPath(ctx, path.CGPath)
            
            //fill the track 
            CGContextSetFillColorWithColor(ctx, slider.trackTintColor.CGColor)
            CGContextAddPath(ctx, path.CGPath)
            CGContextFillPath(ctx)
            
            //fill the highlighted range
            //TODO: Hilighted track is not proper
            CGContextSetFillColorWithColor(ctx, slider.trackHighlightTintColor.CGColor)
            let lowerValuePosition = CGFloat(slider.positionForValue(slider.lowerValue))
            let upperValuePosition = CGFloat(slider.positionForValue(slider.upperValue))
            let rect = CGRect(x: lowerValuePosition, y: 0.0, width: upperValuePosition - lowerValuePosition, height: bounds.height)
            CGContextFillRect(ctx, rect)
        }
    }
}
