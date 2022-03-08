//
//  WaveViewController.swift
//  WaveScreen
//
//  Created by tambanco 🥳 on 08.03.2022.
//

import UIKit

class WaveViewController: UIViewController {
    
    var waveView: WaveView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupWaveView()
       
    }
    
    func setupWaveView() {
        waveView = WaveView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(waveView)
    }
}
