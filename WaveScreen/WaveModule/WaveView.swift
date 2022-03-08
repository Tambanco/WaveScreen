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
    
    lazy var layer2: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    lazy var layer3: CAShapeLayer = {
        let layer = CAShapeLayer()
        return layer
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        drawLayer1()
        drawLayer2()
        drawLayer3()
        
        drawLayer4()
        drawLayer5()
        drawLayer6()
        
        func drawLayer1() {
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: 0, y: 0))
            path1.addLine(to: CGPoint(x: frame.width, y: 0))
            path1.addLine(to: CGPoint(x: frame.width, y: 175))
            path1.addCurve(to: CGPoint(x: 0, y: 175), controlPoint1: CGPoint(x: 100, y: 350), controlPoint2: CGPoint(x: -100, y: -300))
            path1.addLine(to: CGPoint(x: 0, y: 0))

            layer1.path = path1.cgPath
            layer1.fillColor = UIColor.gray.cgColor
            layer1.opacity = 0.8
            layer1.frame = bounds
            layer.insertSublayer(layer1, at: 0)
        }
        
        func  drawLayer2() {
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: 0, y: 0))
            path2.addLine(to: CGPoint(x: frame.width, y: 0))
            path2.addLine(to: CGPoint(x: frame.width + 20, y: 220))
            path2.addCurve(to: CGPoint(x: -100, y: 50), controlPoint1: CGPoint(x: 100, y: 400), controlPoint2: CGPoint(x: 150, y: 50))
            path2.addLine(to: CGPoint(x: 0, y: 0))

            layer2.path = path2.cgPath
            layer2.opacity = 0.7
            layer2.fillColor = UIColor.green.cgColor
            layer2.frame = bounds
            layer.insertSublayer(layer2, at: 1)
        }
        
        func drawLayer3() {
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: 0, y: 0))
            path3.addLine(to: CGPoint(x: frame.width, y: 0))
            path3.addLine(to: CGPoint(x: frame.width, y: 175))
            path3.addCurve(to: CGPoint(x: 0, y: 175), controlPoint1: CGPoint(x: 100, y: 400), controlPoint2: CGPoint(x: -100, y: -400))
            path3.addLine(to: CGPoint(x: 0, y: 0))

            layer3.path = path3.cgPath
            layer3.fillColor = UIColor.blue.cgColor
            layer3.opacity = 0.6
            layer3.frame = bounds
            layer.insertSublayer(layer3, at: 2)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
