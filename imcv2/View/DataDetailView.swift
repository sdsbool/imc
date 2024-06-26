//
//  DataDetailView.swift
//  imcv2
//
//  Created by Usuario on 19/5/24.
//  Copyright © 2024 casa. All rights reserved.
//

import UIKit

public class DataDetailView: UIView {
    
    public let textTitleResult: UILabel = {
        let titleResult = UILabel()
        titleResult.text = "RESULT"
        titleResult.textAlignment = .center
        titleResult.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        titleResult.translatesAutoresizingMaskIntoConstraints = false
        titleResult.textColor = UIColor.blue
        
        return titleResult
    }()
    
    
    public let textResult: UILabel = {
        let result = UILabel()
        result.text = "0.0"
        result.textAlignment = .center
        result.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        result.translatesAutoresizingMaskIntoConstraints = false
        result.textColor = UIColor.blue
        
        return result
    }()
    
    
    public let textRecomendation: UILabel = {
        let recomendation = UILabel()
        recomendation.text = ""
        recomendation.textAlignment = .center
        recomendation.font = UIFont(name: "Arial Rounded MT Bold"  , size: 22)
        recomendation.translatesAutoresizingMaskIntoConstraints = false
        recomendation.textColor = UIColor.green
        
        return recomendation
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setup() {
        addSubviews()
        configureConstraints()
    }
    
    
    public func addSubviews() {
        addSubview(textTitleResult)
        addSubview(textResult)
        addSubview(textRecomendation)
    }
    
    public func configureConstraints() {
        NSLayoutConstraint.activate([
            textTitleResult.leadingAnchor.constraint(equalTo: leadingAnchor),
            textTitleResult.trailingAnchor.constraint(equalTo: trailingAnchor),
            textTitleResult.centerXAnchor.constraint(equalTo: centerXAnchor),
            textTitleResult.centerYAnchor.constraint(equalTo: topAnchor, constant: 50),
            
            textResult.centerXAnchor.constraint(equalTo: centerXAnchor),
            textResult.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            textRecomendation.topAnchor.constraint(equalTo: textResult.bottomAnchor, constant: 20),
            textRecomendation.leadingAnchor.constraint(equalTo: leadingAnchor),
            textRecomendation.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
    }
}
