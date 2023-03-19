//
//  ViewController.swift
//  SecondProject
//
//  Created by Ekaterina Bogdanova on 18/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIStackView!
    
    private var currentLight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRoundViewElement()
    }
    private func makeRoundViewElement() {
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = yellowLight.bounds.height / 2
        greenLight.layer.cornerRadius = greenLight.bounds.height / 2
    }
    

        
        @IBAction func startButtonDidTapped(startButton: UIButton) {
            if startButton.currentTitle == "START" {
                startButton.setTitle("NEXT", for: .normal)
                redLight.alpha = 1
            } else {
                switch currentLight {
                case 0:
                    redLight.alpha = 0.3
                    yellowLight.alpha = 1.0
                    currentLight += 1
                case 1:
                    yellowLight.alpha = 0.3
                    greenLight.alpha = 1.0
                    currentLight += 1
                case 2:
                    greenLight.alpha = 0.3
                    redLight.alpha = 1.0
                    currentLight = 0
                default:
                    break
                }
                
            }
        }
    }

