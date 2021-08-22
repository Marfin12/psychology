//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var choice4Button: UIButton!
    @IBOutlet weak var starterLabel: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    
    var story = StoryBrain()
    var isStart = true
    
    @IBAction func choicePressed(_ sender: UIButton) {
        if (isStart == true) {
            initStory()
            isStart = false
        } else {
            story.updateAnswer(sender.tag)
        }
        
        updateStory()
    }
    
    func initStory() {
        storyLabel.isHidden = false
        starterLabel.isHidden = true
        personImage.isHidden = true
        
        story.initStory()
        
        choice1Button.setBackgroundImage(#imageLiteral(resourceName: "oldGreenCorner"), for: .normal)
    }
    
    func updateStory() {
        if (story.isOutOfQuestion()) {
            showAnswer()
        } else {
            let curStory = story.getQuestion()
            let choice = curStory.choice
            showQuestion(curStory, choice)
        }
        
        story.nextQuestion()
    }
    
    func showQuestion(_ curStory: Story, _ choice: Choice) {
        storyLabel.text = curStory.question
        
        setButtonText(choice1Button, choice.choice1)
        setButtonText(choice2Button, choice.choice2)
        setButtonText(choice3Button, choice.choice3)
        setButtonText(choice4Button, choice.choice4)
    }
    
    func showAnswer() {
        let result = story.getAnswer()
        
        starterLabel.text = result.answer
        personImage.image = result.image
        
        choice1Button.setBackgroundImage(#imageLiteral(resourceName: "choice1Background"), for: .normal)
        
        setButtonText(choice1Button, "Let's start again!")
        
        isStart = true
        showFinalComponent()
    }
    
    func showFinalComponent() {
        starterLabel.isHidden = false
        personImage.isHidden = false
        
        storyLabel.isHidden = true
        choice2Button.isHidden = true
        choice3Button.isHidden = true
        choice4Button.isHidden = true
    }
    
    func setButtonText(_ sender: UIButton, _ title: String?) {
        if (title != nil) {
            sender.setTitle(title, for: .normal)
            sender.isHidden = false
        } else {
            sender.isHidden = true
        }
    }
    
}

