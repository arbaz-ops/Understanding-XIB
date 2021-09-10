//
//  SubVIew.swift
//  Understanding XIB
//
//  Created by Mac on 12/01/2021.
//

import UIKit

class SubVIew: UIView {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        let bundle = Bundle.init(for: SubVIew.self)
        if let viewsToAdd = bundle.loadNibNamed("SubView", owner: self, options: nil), let contentView = viewsToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
    }

}
