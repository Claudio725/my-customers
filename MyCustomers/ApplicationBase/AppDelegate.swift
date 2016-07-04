import UIKit
import MyCustomersCore

let customerRepositoryInMemory = CustomerRepositoryInMemory()
var customersAppRouter: CustomersRouterApp?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.tintColor = UIColor.primary
        window?.makeKeyAndVisible()

        customersAppRouter = CustomersRouterApp(window: window)
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.list()
        }

        return true
    }

}
