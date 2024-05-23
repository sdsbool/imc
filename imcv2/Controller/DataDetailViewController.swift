//
//  DataDetailViewController.swift
//  imcv2
//
//  Created by Usuario on 11/4/24.
//  Copyright © 2024 casa. All rights reserved.
//

import UIKit

class DataDetailViewController: UIViewController {

    var info: Double?//el IMC calculado en el paso anterior
    var customDetailView: DataDetailView?
    
    override func viewWillAppear(_ animated: Bool) {
        customDetailView = DataDetailView()
        customDetailView?.textTitleResult.text = String(describing: info)
        customDetailView?.backgroundColor = .white
        customDetailView?.textTitleResult.textColor = .black
        
        customDetailView?.translatesAutoresizingMaskIntoConstraints = false
        
        /*NSLayoutConstraint.activate([
            customDetailView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            customDetailView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            customDetailView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            customDetailView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        
       */
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
