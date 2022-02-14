//
//  ViewController.swift
//  Recru
//
//  Created by Marcin Ratajczak on 14/02/2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var fetchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fetchImage() {
        guard let url = URL(string: textField.text ?? "") else { return }
        imageView.kf.setImage(with: ImageResource(downloadURL: url, cacheKey: textField.text))
    }

}

