//
//  ViewController.swift
//  swift-fibo-finder-lab
//
//  Created by Flatiron School on 9/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func fiboFinder(index: Int) -> [Int] {
        var fiboArray = [Int]()
        var firstNumber = 0
        var secondNumber = 1
        
        for _ in 0...index{
            (firstNumber, secondNumber) = (secondNumber, firstNumber + secondNumber)
            fiboArray.append(firstNumber)
        }
        return fiboArray
    }
    
}

