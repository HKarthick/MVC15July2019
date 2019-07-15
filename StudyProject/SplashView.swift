//
//  SplashView.swift
//  StudyProject
//
//  Created by Anil Kumar on 12/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class SplashView: UIView {
    
    lazy var containerView = UIView(frame: UIScreen.main.bounds)
    lazy var blurView      = UIView(frame: UIScreen.main.bounds)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        settingUpSplashVideo()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        settingUpSplashVideo()
    }
    
    private func settingUpSplashVideo() {
        
        addSubViews(add: [containerView, blurView])
        
        blurView.backgroundColor = .blurBackground
        
        let bun = Bundle(identifier: "com.Ait.StudyProject")
        if let urlPath = bun?.path(forResource: "test", ofType: "mp4"){
            VideoBackground.shared.play(view: containerView, url: URL(fileURLWithPath: urlPath))
        }else{
            try? VideoBackground.shared.play(view: containerView, videoName: "test", videoType: "mp4")
        }
    }
}

