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
        layer.backgroundColor = UIColor.red.cgColor
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(layer1)
        
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: frame.maxX, y: 0))
        path1.addLine(to: CGPoint(x: frame.maxX, y: 200))
        path1.addCurve(to: CGPoint(x: 0, y: 200), controlPoint1: CGPoint(x: 200, y: 100), controlPoint2: CGPoint(x: 20, y: 300))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
