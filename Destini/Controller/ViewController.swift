//
//  ViewController.swift
//  Destini
//
//  Created by Meddor on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    func assignbackground(){
        let background = UIImage(named: "moun")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    lazy var firstButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("ChoiceOne", for: .normal)
        view.backgroundColor = .red
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.addTarget(self, action: #selector(updateUI), for: .touchUpInside)
        
        return view
    }()
    
    lazy var secondButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("ChoiceTwo", for: .normal)
        view.backgroundColor = .purple
        view.layer.cornerRadius = 16
        view.clipsToBounds = true
        view.addTarget(self, action: #selector(updateUI), for: .touchUpInside)
        
        
        return view
    }()
    
    var labelStory: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Story Text"
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 25)
        
        return view
        
    }()
    
    func nslConfigs() {
        view.addSubview(secondButton)
        NSLayoutConstraint.activate([
            secondButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -16),
            secondButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16),
            secondButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            secondButton.heightAnchor.constraint(equalToConstant: 80)
        ])
        view.addSubview(firstButton)
        NSLayoutConstraint.activate([
            firstButton.bottomAnchor.constraint(equalTo: secondButton.topAnchor,constant: -16),
            firstButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16),
            firstButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            firstButton.heightAnchor.constraint(equalToConstant: 80)
        ])
        view.addSubview(labelStory)
        NSLayoutConstraint.activate([
            labelStory.bottomAnchor.constraint(equalTo: firstButton.topAnchor,constant: -16),
            labelStory.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16),
            labelStory.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            labelStory.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor ,constant: 8)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nslConfigs()
        assignbackground()
        labelStory.text = storyBrain.example[0].story
        firstButton.setTitle(storyBrain.example[0].one , for: .normal)
        secondButton.setTitle(storyBrain.example[0].two , for: .normal)
    }
    
    @objc func updateUI(sender: UIButton) {
        if sender.currentTitle == storyBrain.example[storyBrain.quationNumber].one {
            labelStory.text = storyBrain.example[storyBrain.quationNumber].story
            firstButton.setTitle(storyBrain.example[storyBrain.quationNumber].one, for: .normal)
            secondButton.setTitle(storyBrain.example[storyBrain.quationNumber].two, for: .normal)
            storyBrain.quationNumber += 1
        } else {
            storyBrain.quationNumber += 1
            labelStory.text = storyBrain.example[storyBrain.quationNumber].story
            firstButton.setTitle(storyBrain.example[storyBrain.quationNumber].one, for: .normal)
            secondButton.setTitle(storyBrain.example[storyBrain.quationNumber].two, for: .normal)
        }
    }
    
}

