//
//  DetailsViewController.swift
//  ZoomTransition
//
//  Created by Ezaden Seraj on 07/04/2019.
//  Copyright © 2019 Ezaden Seraj. All rights reserved.
//

import UIKit

protocol DetailsViewControllerDelegate {
    func didGoBack()
}

class DetailsViewController: UIViewController {

    var selectedRow = 0
    var didGoBackDelegate: DetailsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        setupWelcomeLabel()
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(goBackTapGestureAction))
        view.addGestureRecognizer(tapGesture)
    }
    
    private func setupWelcomeLabel() {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 40.0)
        label.textColor = .white
        label.textAlignment = .center
        label.text = "Zoomed\nfrom row\n\(selectedRow)"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 32.0),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 64.0),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32.0),
            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            ])
        
    }
    
    @objc private func goBackTapGestureAction(_sender: UITapGestureRecognizer) {
        guard let delegate = didGoBackDelegate else {
            return
        }
        delegate.didGoBack()
        dismiss(animated: true, completion: nil)
    }

    

}
