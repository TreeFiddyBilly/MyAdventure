//
//  ViewController.swift
//  MyAdventure
//
//  Created by user269556 on 2/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    
    let storyLogic = StoryLogic()
    var currentStoryIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let currentStory = storyLogic.stories[currentStoryIndex]
        
        storyLabel.text = currentStory.text
        if let choice1 = currentStory.choice1 {
            choice1Button.setTitle(choice1, for: .normal)
            choice1Button.isHidden = false
        } else {
            choice1Button.isHidden = true
        }
        
        if let choice2 = currentStory.choice2 {
            choice2Button.setTitle(choice2, for: .normal)
            choice2Button.isHidden = false
        } else {
            choice2Button.isHidden = true
        }
        
        restartButton.isHidden = (currentStory.choice1 != nil)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let currentStory = storyLogic.stories[currentStoryIndex]
        
        if sender == choice1Button {
            if let nextIndex = currentStory.choice1Destination {
                currentStoryIndex = nextIndex
            }
        } else if sender == choice2Button {
            if let nextIndex = currentStory.choice2Destination {
                currentStoryIndex = nextIndex
            }
        }
        
        updateUI()
    }
    
    @IBAction func restartGame(_ sender: UIButton) {
        currentStoryIndex = 0
        updateUI()
    }
}

