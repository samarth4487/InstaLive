//
//  ViewController.swift
//  InstaLive
//
//  Created by Samarth Paboowal on 01/08/18.
//  Copyright © 2018 Samarth Paboowal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojiPanel: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 25
        view.layer.borderColor = UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: 1).cgColor
        view.layer.borderWidth = 0.5
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(emojiPanel)
        emojiPanel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        emojiPanel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        emojiPanel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emojiPanel.widthAnchor.constraint(equalToConstant: 260).isActive = true
        
        let width = view.frame.width
        let height = view.frame.height - (UIApplication.shared.keyWindow?.safeAreaInsets.bottom)!
        
        let loveView = UIButton(frame: CGRect(x: width/2 - 120, y: height - 65, width: 40, height: 40))
        loveView.setBackgroundImage(#imageLiteral(resourceName: "Heart_Eyes_Emoji"), for: .normal)
        loveView.addTarget(self, action: #selector(loveTapped), for: .touchUpInside)
        view.addSubview(loveView)
        
        let smilesView = UIButton(frame: CGRect(x: width/2 - 70, y: height - 65, width: 40, height: 40))
        smilesView.setBackgroundImage(#imageLiteral(resourceName: "Smiling_with_Sweat_Emoji"), for: .normal)
        smilesView.addTarget(self, action: #selector(smileTapped), for: .touchUpInside)
        view.addSubview(smilesView)
        
        let joyView = UIButton(frame: CGRect(x: width/2 - 20, y: height - 65, width: 40, height: 40))
        joyView.setBackgroundImage(#imageLiteral(resourceName: "Tears_of_Joy_Emoji"), for: .normal)
        joyView.addTarget(self, action: #selector(joyTapped), for: .touchUpInside)
        view.addSubview(joyView)
        
        let angryView = UIButton(frame: CGRect(x: width/2 + 30, y: height - 65, width: 40, height: 40))
        angryView.setBackgroundImage(#imageLiteral(resourceName: "Very_Angry_Emoji"), for: .normal)
        angryView.addTarget(self, action: #selector(angryTapped), for: .touchUpInside)
        view.addSubview(angryView)
        
        let dizzyView = UIButton(frame: CGRect(x: width/2 + 80, y: height - 65, width: 40, height: 40))
        dizzyView.setBackgroundImage(#imageLiteral(resourceName: "Dizzy_Face_Emoji"), for: .normal)
        dizzyView.addTarget(self, action: #selector(dizzyTapped), for: .touchUpInside)
        view.addSubview(dizzyView)
    }
    
    @objc func loveTapped() {
        
        let imageView = getImageView(with: #imageLiteral(resourceName: "Heart_Eyes_Emoji"), and: CGRect(x: view.frame.width/2 - 120, y: view.frame.height - 60, width: 40, height: 40))
        let duration: Double = generateRandomDuration()
        resizedImage(view: imageView)
        let path = createPathWith(start: CGPoint(x: imageView.frame.minX, y: imageView.frame.minY))
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)
    }
    
    @objc func smileTapped() {
        
        let imageView = getImageView(with: #imageLiteral(resourceName: "Smiling_with_Sweat_Emoji"), and: CGRect(x: view.frame.width/2 - 70, y: view.frame.height - 60, width: 40, height: 40))
        let duration: Double = generateRandomDuration()
        resizedImage(view: imageView)
        let path = createPathWith(start: CGPoint(x: imageView.frame.minX, y: imageView.frame.minY))
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)
    }
    
    @objc func joyTapped() {
        
        let imageView = getImageView(with: #imageLiteral(resourceName: "Tears_of_Joy_Emoji"), and: CGRect(x: view.frame.width/2 - 20, y: view.frame.height - 60, width: 40, height: 40))
        let duration: Double = generateRandomDuration()
        resizedImage(view: imageView)
        let path = createPathWith(start: CGPoint(x: imageView.frame.minX, y: imageView.frame.minY))
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)
    }
    
    @objc func angryTapped() {
        
        let imageView = getImageView(with: #imageLiteral(resourceName: "Very_Angry_Emoji"), and: CGRect(x: view.frame.width/2 + 30, y: view.frame.height - 60, width: 40, height: 40))
        let duration: Double = generateRandomDuration()
        resizedImage(view: imageView)
        let path = createPathWith(start: CGPoint(x: imageView.frame.minX, y: imageView.frame.minY))
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)
    }
    
    @objc func dizzyTapped() {
        
        let imageView = getImageView(with: #imageLiteral(resourceName: "Dizzy_Face_Emoji"), and: CGRect(x: view.frame.width/2 + 80, y: view.frame.height - 60, width: 40, height: 40))
        let duration: Double = generateRandomDuration()
        resizedImage(view: imageView)
        let path = createPathWith(start: CGPoint(x: imageView.frame.minX, y: imageView.frame.minY))
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.path = path.cgPath
        animation.duration = duration
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        imageView.layer.add(animation, forKey: nil)
    }
    
    private func generateRandomDuration() -> Double {
        return 1 + drand48() * 4
    }
    
    private func createPathWith(start value: CGPoint) -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: value)
        
        let endPoint = CGPoint(x: view.frame.width/2, y: 10)
        let totalHeight = view.frame.height - 70
        let cp1 = CGPoint(x: 20 + CGFloat(drand48()) * view.frame.width - 40, y: totalHeight * 0.5)
        let cp2 = CGPoint(x: 20 + CGFloat(drand48()) * view.frame.width - 40, y: totalHeight * 0.1)
        
        path.addCurve(to: endPoint, controlPoint1: cp1, controlPoint2: cp2)
        
        return path
    }
    
    private func getImageView(with image: UIImage, and frame: CGRect) -> UIImageView {
        
        let imageView = UIImageView(frame: frame)
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        
        return imageView
    }
    
    private func resizedImage(view: UIImageView) {
        
        UIView.animate(withDuration: 1 + drand48() * 4) {
            view.frame.size.height = 20
            view.frame.size.width = 20
        }
    }
    
}

