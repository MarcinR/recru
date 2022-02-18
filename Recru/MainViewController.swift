//
//  ViewController.swift
//  Recru
//
//  Created by Marcin Ratajczak on 14/02/2022.
//

import UIKit
import Kingfisher

class MainViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var fetchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapShowImage() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            switch URLValidator.validateAddres(addressString: self.textField.text) {
            case .correct(let url):
                self.imageView.kf.setImage(with: ImageResource(downloadURL: url, cacheKey: self.textField.text))
                return
            case .incorrect(let errorDescription):
                let alertController = UIAlertController(title: "Error", message: errorDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertController, animated: true)
                return
            }
        }
    }
}
