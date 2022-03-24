//
//  ViewController.swift
//  PhotoSearch
//
//  Created by Vitor Otero on 24/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let urlString = "https://api.unsplash.com/search/photos/?page=1&query=office&client_id=W4D9pU4p1coeuTlrlAKvKwsHK-Y33uYiIyehxaQQ5o8"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPhotos()
        
    }
    
    func fetchPhotos() {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            print("Got data!")
        }
        task.resume()
    }
    
    
}

