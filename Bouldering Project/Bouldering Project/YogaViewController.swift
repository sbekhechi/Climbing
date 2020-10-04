//
//  YogaViewController.swift
//  Bouldering Project
//
//  Created by Samir Bekhechi on 2/17/20.
//  Copyright © 2020 Samir Bekhechi. All rights reserved.
//

import UIKit
import WebKit



class YogaViewController: UIViewController, WKUIDelegate{

    
    @IBOutlet weak var wv: WKWebView!
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        wv = WKWebView(frame: .zero, configuration: webConfiguration)
        wv.uiDelegate = self
        view = wv
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           loadYoutube(videoID: "M0hjlonA2Mk&t=1s")
       }
       func loadYoutube(videoID:String) {
           guard
               let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
               else { return }
          
           wv.load( URLRequest(url: youtubeURL) )
       }
       
    
//    @IBOutlet weak var wv: WKWebView!
   
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


