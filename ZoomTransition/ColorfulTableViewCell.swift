//
//  ColorfulTableViewCell.swift
//  ZoomTransition
//
//  Created by Ezaden Seraj on 07/04/2019.
//  Copyright © 2019 Ezaden Seraj. All rights reserved.
//

import UIKit

class ColorfulTableViewCell: UITableViewCell {

    var cardView: UIView!
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupGraphic()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    
    private func setupGraphic() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        let cardView = UIView()
        cardView.backgroundColor = .blue
        cardView.layer.cornerRadius = 12.0
        cardView.translatesAutoresizingMaskIntoConstraints = false
        self.cardView = cardView
        self.addSubview(cardView)
        
        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16.0),
            cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16.0),
            cardView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16.0),
            cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
    }
}
