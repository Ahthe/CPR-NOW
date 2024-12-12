import WatchKit
import Foundation


class Adult: WKInterfaceController {
    
    @IBOutlet weak var myTimer: WKInterfaceTimer!
    @IBOutlet weak var start: WKInterfaceButton!
    @IBOutlet weak var reset: WKInterfaceButton!
    
    var isTimerStarted = false
    var startTime = Date()
    var elapsedTime: TimeInterval = 0.0
    
    override func willActivate() {
        
    }
    
    @IBAction func startBtn() {
        isTimerStarted = !isTimerStarted
        if isTimerStarted {
            startTime = Date()
            start.setTitle("Stop")
            //myTimer.setDate(Date())
            myTimer.setDate(Date(timeIntervalSinceNow: elapsedTime))
            myTimer.start()
        }
        else {
            let stopTime = Date()
            elapsedTime -= stopTime.timeIntervalSince(startTime)
            start.setTitle("Start")
            myTimer.stop()
        }
    }
    
    @IBAction func resetnBtn() {
        start.setTitle("Start")
        elapsedTime = 0.0
        myTimer.setDate(Date(timeIntervalSinceNow: elapsedTime))
        myTimer.stop()
    }
}

