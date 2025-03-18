//
//  AppDelegate.swift
//  test4
//
//  Created by tapbi on 18/3/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?
     // iOS 12 trở xuống
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        // Tạo cửa sổ ứng dụng với kích thước màn hình chính
//        let window = UIWindow(frame: UIScreen.main.bounds)
//        
//        // Load view controller từ test.storyboard
//        let storyboard = UIStoryboard(name: "test", bundle: nil)
//        // Load view controller theo Storyboard ID
//        guard let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as? test else {
//                   return false
//               }
//        
//        // Tạo UINavigationController với viewController làm root
//        let navigationController = UINavigationController(rootViewController: viewController)
//        
//        // Gán navigationController làm root view controller của cửa sổ
//        window.rootViewController = navigationController
//        
//        // Hiển thị cửa sổ
//        window.makeKeyAndVisible()
//        self.window = window
        
        setupWindow()
        
        return true
    }
    
    
    private func setupWindow() {
            // Tạo cửa sổ với kích thước màn hình chính
            let window = UIWindow(frame: UIScreen.main.bounds)
            
            // Load view controller từ test.storyboard
            let storyboard = UIStoryboard(name: "test", bundle: nil)
            // Lấy view controller với Storyboard ID "TestViewController"
            guard let viewController = storyboard.instantiateViewController(withIdentifier: "TestViewController") as? test else {
                return
            }
            
            // Tạo UINavigationController với viewController làm root
            let navigationController = UINavigationController(rootViewController: viewController)
            
            // Gán navigationController làm root view controller của cửa sổ
            window.rootViewController = navigationController
            
            // Hiển thị cửa sổ
            window.makeKeyAndVisible()
            self.window = window
        }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

