//
//  UIView_RoundCorner_Extension.swift
//  testRoundImage
//
//  Created by 火星人 on 16/3/9.
//  Copyright © 2016年 火星人. All rights reserved.
//

import UIKit

extension UIView{
    
    func setRoundCorner(radius radius:CGFloat){
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    func setRoundCorner2(radius:CGFloat){
        let image:UIImage = drawRectWithRoundedCorner(radius:radius)
        let imgView = UIImageView(image: image)
        self.insertSubview(imgView, atIndex: 0)
    }
    
    func drawRectWithRoundedCorner(radius radius: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, UIScreen.mainScreen().scale)
        let context = UIGraphicsGetCurrentContext()
        
        CGContextMoveToPoint(context, 0, radius)
        CGContextAddArcToPoint(context, 0, radius, radius, 0, radius)
        
        CGContextMoveToPoint(context, self.frame.size.width - radius, 0)
        CGContextAddArcToPoint(context, self.frame.size.width - radius, 0, self.frame.width, radius, radius)
        
        CGContextMoveToPoint(context, self.frame.size.width, self.frame.size.height - radius)
        CGContextAddArcToPoint(context, self.frame.size.width, self.frame.size.height - radius, self.frame.size.width - radius, self.frame.size.height, radius)
        
        CGContextMoveToPoint(context, radius, self.frame.size.height)
        CGContextAddArcToPoint(context, radius, self.frame.size.height, 0, self.frame.size.height - radius, radius)
        
        CGContextDrawPath(UIGraphicsGetCurrentContext(), .FillStroke)
        let output = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return output
    }
    
}
