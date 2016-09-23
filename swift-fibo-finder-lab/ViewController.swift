//
//  ViewController.swift
//  swift-fibo-finder-lab
//
//  Created by Flatiron School on 9/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//  1.Navigate to the ViewController file. Declare one function called arrayWithFibonacciSequenceToIndex which takes one Int argument called index and returns an Array of Ints.
//  2.Since the sequence requires the two previous numbers to calculate the next one, we need to prime the sequence. To do this, we're going to need to manually pass in 0 and 1
//  3. Now it's time to implement the algorithm. Chain an else statement to the if and else if statements to set a default behavior for every iteration of the loop after the first two. In order to calculate the next fibonacci number in the sequence, we're going to need to:
//    
//    pull the previous two numbers out of the sequence,
//    calculate the next fibonacci number in the sequence by the finding the sum of the two integers, and
//    add the new fibonacci number to the sequence.
    
    func arrayWithFibonacciSequenceToIndex(index:Int)->[Int]{
        var initialPhase = 0
        var nextPhase = 1
        var fibonacciArray:[Int] = []
        for phase in 1...index {
            var sum = initialPhase + nextPhase
            fibonacciArray.append(sum)
            nextPhase = initialPhase
            initialPhase = sum
        }
        return fibonacciArray
    }
    
    var testerIndex = 5
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

