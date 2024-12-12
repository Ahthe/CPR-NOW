import WatchKit
import Foundation


class TypePerson: WKInterfaceController {
    
    @IBOutlet weak var adultBtn: WKInterfaceButton!
    
    
    @IBAction func adultFunc() {
        WKInterfaceDevice.current().play(.click)
    }
}
