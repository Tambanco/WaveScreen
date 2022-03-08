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
        waveView = WaveView()
        self.view.addSubview(waveView)
        
        waveView.translatesAutoresizingMaskIntoConstraints = false
        waveView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        waveView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        waveView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        waveView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
         
    }
}
