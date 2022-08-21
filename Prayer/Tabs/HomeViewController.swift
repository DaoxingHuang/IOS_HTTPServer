//
//  HomeViewController.swift
//  Prayer
//
//  Created by Daoxing.Huang on 2022/8/20.
//

import Foundation
import UIKit
import WebKit

class MyHander: NSObject, WKScriptMessageHandler{
    let block: ((WKScriptMessage)->Void)?
    
    init(block: @escaping (WKScriptMessage)->Void) {
        self.block = block;
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        block?(message)
    }

}



extension  HomeViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
}

class HomeViewController:UIViewController {
    
    let config =  WKWebViewConfiguration()
    lazy var web = WKWebView(frame: .zero, configuration: config)
    
    override func viewDidLoad() {
        view.backgroundColor = .white;
        view.addSubview(web)
        web.load(URLRequest(url: URL(string: "https://www.baidu.com")!))
        
        web.configuration.userContentController.add(MyHander(block: { [weak self] message in
            self?.openImagePicker()
        }), name: "TEST")
        web.configuration.userContentController.add(MyHander(block: { [weak self] message in
            self?.openImagePicker()
        }), name: "TEST2")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        web.scrollView.automaticallyAdjustsScrollIndicatorInsets = true
        web.frame = view.bounds
    }
    
    //开启摄像头
    func openImagePicker() {
        
        //第一步，检测摄像头是否可用
        

            //创建一个UIImagePickerController
            let pickerControl = UIImagePickerController()
            //必须，第一步，设置SourceType，Camera表示相机
            pickerControl.sourceType = .photoLibrary
            //必须，第二步，设置相机的View中可以使用的媒体类型，这里直接使用上面的mediaTypeArr,它包含了视频和图像
//            pickerControl.mediaTypes = []
            //必须，第三步，设置delegate：UIImagePickerControllerDelegate,UINavigationControllerDelegate
            //这两个必须都写上，可以进入头文件查看到
            pickerControl.delegate = self
            
            //可选，视频最长的录制时间，这里是10秒，默认为10分钟（600秒）
            pickerControl.videoMaximumDuration = 10
            //可选，设置视频的质量，默认就是TypeMedium
         pickerControl.videoQuality = .typeHigh
            //设置视频或者图片拍摄好后，是否能编辑，默认为false不能编辑
            pickerControl.allowsEditing = true
            
            //必须，第四步，显示
        present(pickerControl, animated: true, completion: nil)
    }
}
