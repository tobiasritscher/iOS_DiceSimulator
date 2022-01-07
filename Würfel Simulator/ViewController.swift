//
//  ViewController.swift
//  D&D Dice
//
//  Created by Tobias Ritscher on 18.02.20.
//  Copyright © 2020 Tobias Ritscher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let FONT_SIZE_BIG: CGFloat = 290
    let FONT_SIZE_SMALL: CGFloat = 70
    @IBOutlet weak var result: UILabel!
    
    @IBAction func d4(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 4))
    }
    @IBAction func d6(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 6))
    }
    @IBAction func d8(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 8))
    }
    @IBAction func d10(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 10))
    }
    @IBAction func d12(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 12))
    }
    @IBAction func d20(_ sender: UIButton) {
        result.font = result.font.withSize(FONT_SIZE_BIG)
        result.text = String(randomNumbers(highest: 20))
    }
    @IBAction func abilityScore(_ sender: UIButton) {
        var results: [String] = []
        result.font = result.font.withSize(FONT_SIZE_SMALL)
        result.text = ""
        
        while results.count < 6 {
            results.append(String(getHighestSum(randomNumbers(highest: 6, count: 4))))
        }
        results.sort() {$0.localizedStandardCompare($1) == .orderedAscending}
        
        for r in results {
            result.text! += "\(r)\n"
        }
    }

    //a amount of random numbers between 1 and i saved in an array
    func randomNumbers(highest i: Int, count c: Int) -> Array<Int>{
        var numbers: [Int] = []
        
        while numbers.count < c{
            numbers.append(Int.random(in: 1 ..< (i+1)))
        }
            
        return numbers
    }
    
    //Random number between 1 and i
    func randomNumbers(highest i: Int) -> Int{
        return Int.random(in: 1 ..< (i+1))
    }
    
    //Sum of all numbers in an array except the smallest
    func getHighestSum(_ i: Array<Int>) -> Int {
        var sum = 0
        var temp = i.sorted()
        temp.removeFirst()
        
        for x in temp{
            sum += x
        }
        return sum
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

