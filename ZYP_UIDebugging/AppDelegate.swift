//
//  AppDelegate.swift
//  ZYP_UIDebugging
//
//  Created by zhaoyunpeng on 2017/6/6.
//  Copyright © 2017年 zhaoyunpeng. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let overlayClass = NSClassFromString("UIDebuggingInformationOverlay") as? UIWindow.Type
        _ = overlayClass?.perform(NSSelectorFromString("prepareDebuggingOverlay"))
        let overlay = overlayClass?.perform(NSSelectorFromString("overlay")).takeUnretainedValue() as? UIWindow
        _ = overlay?.perform(NSSelectorFromString("toggleVisibility"))
        
        
        // 参考
        // http://ryanipete.com/blog/ios/swift/objective-c/uidebugginginformationoverlay/
        
        
        /****************************************************************/
        
        // 1.View Hierarchy - 查看层次结构
        
        /**
            可以检查任何视图的细节，包括其框架和实例变量。可以在多个窗口之间切换，或者只是想知道如何构建系统窗口
         */
        
        
        
        // 2.VC Hierarchy - VC层次结构屏幕
        
        /**
            与“查看层次结构”屏幕非常相似，只是它显示了主动视图控制器的层次结构。从这里，可以检查任何视图控制器的细节，包括其视图。还可以看到视图控制器是呈现模态还是呈现。
         */
        
        
        
        // 3.Ivar Explorer - Ivar Explorer屏幕
        
        /**
            与“查看层次结构”屏幕非常相似，只是它显示了主动视图控制器的层次结构。从这里，可以检查任何视图控制器的细节，包括其视图。还可以看到视图控制器是呈现模态还是呈现。
         */
        
        
        // 4.Measure - 测量屏幕
        
        
        /**
            可以测量屏幕元素的尺寸（以点为单位）。首先，选择是否要在“水平”或“垂直”轴上查看测量。然后在屏幕上拖动手指，使用控制台内的放大查看器来协助您。有两种模式：
             
             默认模式忽略视图边界。据我所知，此模式将屏幕视为单个光栅化图像，并将颜色变化用作潜在测量的边界。例如，在下面的截图中，我可以测量标签文本的末尾与屏幕边缘之间的距离
         */
        
        
        // 5.Spec Compare - 规格比较屏幕
        
        /**
            将屏幕截图添加到设备，然后从“规格比较”屏幕中选择。所选屏幕截图将显示在实际应用程序的顶部。然后，您可以向下拖动以减少alpha，并将规范与实际实现进行比较。
            需要在Info.plist中包含NSPhotoLibraryUsageDescription键的值。点击“添加”按钮显示一个UIImagePickerController，并且不设置此值将导致您的应用程序崩溃。
         */
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

