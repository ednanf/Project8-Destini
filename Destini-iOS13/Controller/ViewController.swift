//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  Modified by Ednan R. Frizzera Filho on 09/04/2023
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    // MARK: Properties
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger.", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest.", choice1: "Open it", choice2: "Check for traps")
    ]
    var storyStep = 0
    
    // MARK: Setup
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    // MARK: IBActions
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            storyStep += 1
            updateUI()
        } else {
            storyStep += 2
            updateUI()
        }
    }
    
    // MARK: Methods
    func updateUI() {
        storyLabel.text = stories[storyStep].title
        choice1Button.setTitle(stories[storyStep].choice1, for: .normal)
        choice2Button.setTitle(stories[storyStep].choice2, for: .normal)
    }

}

