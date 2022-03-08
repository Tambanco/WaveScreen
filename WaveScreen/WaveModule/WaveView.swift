//
//  WaveView.swift
//  WaveScreen
//
//  Created by tambanco 🥳 on 08.03.2022.
//

import UIKit

class WaveView: UIView {

    lazy var layer1: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(layer1)
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: frame.width, y: 0))
        path1.addLine(to: CGPoint(x: frame.width, y: 200))
        path1.addCurve(to: CGPoint(x: 0, y: 200), controlPoint1: CGPoint(x: 100, y: 300), controlPoint2: CGPoint(x: -100, y: -300))
        path1.addLine(to: CGPoint(x: 0, y: 0))
        
        layer1.path = path1.cgPath
        layer1.fillColor = UIColor.gray.cgColor
        layer1.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
