//
//  ViewController.swift
//  Lab2
//
//  Created by Валерия Харина on 23.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var circleView: UIView!
    @IBOutlet var universityText: UITextView!
    @IBOutlet var cityText: UITextView!
    @IBOutlet var stackView: UIStackView!
    
    
    override func viewDidLayoutSubviews() {
        let screenWidth = UIScreen.main.bounds.width
        let viewSize = screenWidth / 2.0
        circleView.frame.size = CGSize(width: viewSize, height: viewSize)
        circleView.layer.cornerRadius = viewSize / 2.0
        circleView.clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func universityButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Enter new value", message: nil, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "University"
        }
        alert.addAction(UIAlertAction(title: "Done", style: .default) { _ in
            if let newValue = alert.textFields?.first?.text {
                self.universityText.text = newValue
                        }
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func cityButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Enter new value", message: nil, preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "City"
        }
        alert.addAction(UIAlertAction(title: "Done", style: .default) { _ in
            if let newValue = alert.textFields?.first?.text {
                self.cityText.text = newValue
                        }
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true, completion: nil)
    }
}

