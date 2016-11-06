//
//  ViewController.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/24/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func performOperation(with numbers: Double..., operation: (Double, Double) -> Double) -> Double {
        return numbers.reduce(0, operation)
    } //the other operations doesn't work on playground hmm.. is there another solution using reduce?
}
