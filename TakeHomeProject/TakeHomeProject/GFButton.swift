//
//  GFButton.swift
//  TakeHomeProject
//
//  Created by Mondale on 2/23/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    // Initializes the button with the size
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    
    // Handles intialization via storyboards
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // private keyword makes the function only callable from this class
    private func configure(){
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
