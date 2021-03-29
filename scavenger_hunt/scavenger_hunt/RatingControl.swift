//
//  RatingControl.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-27.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    private var ratingBtns = [UIButton]()
    
    var rating = 0 {
        didSet{
            updateBtnSelectionStates()
        }
    }
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            createButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            createButtons()
        }
    }
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        createButtons()
    }
    
    required init(coder: NSCoder) {
        super .init(coder: coder)
        createButtons()
    }
    
    @objc func ratingButtonTapped(btn: UIButton) {
        guard let index = ratingBtns.firstIndex(of: btn) else {
            fatalError("\(btn), is missing from the ratingBtns array: \(ratingBtns)")
        }
        let selectedRating = index + 1
        if selectedRating == rating {
            rating = 0
        }
        else{
            rating = selectedRating
        }
    }
    
    private func createButtons(){
        for btn in ratingBtns {
            removeArrangedSubview(btn)
            btn.removeFromSuperview()
        }
        ratingBtns.removeAll()
        let bundle = Bundle(for: type(of: self))
        let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named: "emptyStar", in: bundle, compatibleWith: self.traitCollection)
        let hightlightedStar = UIImage(named: "highlightedStar", in: bundle, compatibleWith: self.traitCollection)
        for _ in 0..<starCount{
            let btn = UIButton()
            btn.setImage(emptyStar, for: .normal)
            btn.setImage(filledStar, for: .selected)
            btn.setImage(hightlightedStar, for: .highlighted)
            btn.setImage(hightlightedStar, for: [.highlighted, .selected])
            
            btn.translatesAutoresizingMaskIntoConstraints = false;
            btn.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            btn.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            btn.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(btn:)), for: .touchUpInside)
            
            addArrangedSubview(btn)
            ratingBtns.append(btn)
        }
        updateBtnSelectionStates()
    }
    
    private func updateBtnSelectionStates(){
        for (index, btn) in ratingBtns.enumerated(){
            btn.isSelected = index < rating
        }
    }
}
