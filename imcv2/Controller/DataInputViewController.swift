//
//  DataInputViewController.swift
//  imcv2
//
//  Created by Usuario on 11/4/24.
//  Copyright © 2024 casa. All rights reserved.
//

import UIKit

class DataInputViewController: UIViewController {
    var model: IMCDataModel?
    var customInputView: DataInputView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //configuro el DataInputView
        customInputView = DataInputView()
        
        
        customInputView?.delegate = self
        customInputView?.backgroundColor = .white
        
        
        if let customInputView = customInputView {
            self.view.addSubview(customInputView)
            customInputView.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
                customInputView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                customInputView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
                customInputView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                customInputView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
                ])
        }
        
    }

}

extension DataInputViewController: DataInputProtocol {
    func dataRecorded(dataModel: IMCDataModel) {
        //calcula el IMC
        let imc = dataModel.calculateIMC()
        
        //invoco el siguiente vc
        let nextStep = DataDetailViewController()
        nextStep.info = imc
        
        //navego al siguiente VC
        self.navigationController?.pushViewController(nextStep, animated: true)
    }
}



protocol DataInputProtocol: class {
    func dataRecorded(dataModel: IMCDataModel) -> Void
}


//objA ---> le habla al objB ->> referencia simple strong
//objB ---> le responde al objA --> delegate con referencia debil (weak)
