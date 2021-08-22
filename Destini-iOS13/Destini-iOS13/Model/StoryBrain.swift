//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let personalityTest = [
        Story(
            question: "You go to the game show and you won the prize. But you are being told to choose the prize inside one of the variety boxes. Which box do you choose?",
            Choice(
                choice1: "The biggest one",
                choice2: "The stylest one",
                choice3: "The smallest one",
                choice4: "The most unique box"
            )
        ),
        Story(
            question: "You are having study group and your stomach is rumbling. Your food is left in your home. Your friend offers you a food that available in the kitchen. What would you like to say?",
            Choice(
                choice1: "Please! I want a beef steak with black pepper sauce",
                choice2: "Thank you! just a toast is fine for me!",
                choice3: "No thanks! I'll go back to home and come back here soon!"
            )
        ),
        Story(
            question: "Which time that most chilling you?",
            Choice(
                choice1: "Holiday",
                choice2: "Working Hours",
                choice3: "End of the month",
                choice4: "Celebration"
            )
        ),
        Story(
            question: "You haven't sleep from last night. And this morning, the class discussion is related to the final exam for the next week. What would you like to do?",
            Choice(
                choice1: "I will take the frontiest seat",
                choice2: "I will take the most behind the back seat",
                choice3: "I will skip the class and ask my classmate about the exam next week"
            )
        ),
        Story(
            question: "Your classmate did something that makes you rage but it's still tolerable. He then tells you that he forgot to bring the English book and want you to pick it up from the library for him. What do you say to him?",
            Choice(
                choice1: "Pick for your self, DUH!",
                choice2: "I will do a favor for you but please, next time don't do that again to me!",
                choice3: "Sure. No problem."
            )
        ),
        Story(
            question: "If you have an infinite wealth but your life only last tomorrow, then what you will do for the last time?",
            Choice(
                choice1: "I won't waste it",
                choice2: "I hope I can exchange it to live longer."
            )
        )
    ]
    
    let result = [
        Result(answer: "You're a naturally analytical, curious person. You have a genuine love of learning and are easily bored by monotonous routines", image: #imageLiteral(resourceName: "image-removebg-preview (1)")),
        Result(answer: "You're kind, nurturing, and would do just about anything for the people you love. You have a big heart and genuinely want to make the world a better place", image: #imageLiteral(resourceName: "image-removebg-preview (2)")),
        Result(answer: "You have a bright personality and kind heart, but can easily get caught up in the chaos of life and lose sight of what you really want", image: #imageLiteral(resourceName: "image-removebg-preview (3)")),
        Result(answer: "You're a deeply creative person with an endless imagination. You tend to come across as quiet and introverted at first, but you're a whole different person when people get to know the real you", image: #imageLiteral(resourceName: "image-removebg-preview (4)")),
        Result(answer: "You're a natural rule-breaker who isn't afraid to put themself out there and try something different. You hate the idea of living a dull life", image: #imageLiteral(resourceName: "image-removebg-preview (5)")),
        Result(answer: "You're a very direct person — you know what you want, and aren't afraid to go after it", image: #imageLiteral(resourceName: "image-removebg-preview (6)")),
        Result(answer: "You're content being alone and you have no close friends although you do fine out in public or at parties", image: #imageLiteral(resourceName: "image-removebg-preview (7)")),
    ]
    
    
    var questionNumber = 0
    var resultNumber = 0
    
    mutating func initStory() {
        questionNumber = 0
        resultNumber = 0
    }
    
    func getQuestion() -> Story {
        return personalityTest[questionNumber]
    }
    
    func getAnswer() -> Result {
        return result[resultNumber]
    }
    
    func isOutOfQuestion() -> Bool {
        return (questionNumber >= personalityTest.count)
    }
    
    mutating func updateAnswer(_ choiceNumber: Int) {
        print(choiceNumber)
        resultNumber += choiceNumber
        if (resultNumber > 6) {
            resultNumber = 6
        }
    }
    
    mutating func nextQuestion() {
        questionNumber += 1
    }
}

