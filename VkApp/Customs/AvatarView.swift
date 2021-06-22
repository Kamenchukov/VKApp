//
//  AvatarView.swift
//  VkApp
//
//  Created by Константин Каменчуков on 19.06.2021.
//

import Foundation
import UIKit

extension UIImageView {
    
    func makeRonded(cornerRadius : CGFloat) {
        self.layer.borderWidth = 0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
}

@IBDesignable
class AvatarView: UIView {


    
    var image : UIImage? {
        didSet {
            imageView.image = image
            setup()
        }
    }
    private var imageView : UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    @IBInspectable
    var shadowOpacity : Float = 0.7 {
        didSet {
            setup()
        }
    }
    
    
    @IBInspectable
    var shadowRadius : CGFloat = 4 {
        didSet {
            setup()
        }
    }
    
    @IBInspectable
    var shadowColor : UIColor = UIColor.black {
        didSet {
            setup()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    private func setup() {
        layer.backgroundColor = UIColor.white.cgColor
        let cornerRadius = min(self.bounds.size.height / 2, self.bounds.size.width / 2)
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.shadowOffset = CGSize(width: 3, height: 3)
        
        imageView.makeRonded(cornerRadius: cornerRadius)
        addSubview(imageView)
    }
    
    override func layoutSubviews() {
        imageView.frame = bounds
        setup()
    }
    

}
