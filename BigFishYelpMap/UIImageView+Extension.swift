//
//  UIImageView+Extension.swift
//  BigFishYelpMap
//
//  Created by Michael Sevy on 6/15/20.
//  Copyright © 2020 Michael Sevy. All rights reserved.
//

import UIKit

extension UIImageView {
    func setImage(from url: URL) {
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            if let data = data {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }.resume()
    }
}
