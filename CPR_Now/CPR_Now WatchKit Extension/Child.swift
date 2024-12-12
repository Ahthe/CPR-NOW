import UIKit
import WatchKit
import Foundation

class Child: WKInterfaceController {
    
    @IBOutlet weak var childFace: WKInterfaceImage!
    
    
    override func awake(withContext context: Any?) {
           super.awake(withContext: context)
           
//        watchFace.setImageNamed("progress")
//        watchFace.startAnimating()
           
           /**
               Range - progress0 to progress80 images will be animated
               Duration - Animation time
               Repeatcount - how many time animation will performed. -1 mean infinite
           */
            childFace.setImageNamed("progress")
            childFace.startAnimatingWithImages(in: NSMakeRange(0, 100), duration: 60, repeatCount: -1)
       }
       
       override func willActivate() {
           super.willActivate()
       }
       
       override func didDeactivate() {
           super.didDeactivate()
       }
    
    func startProgress(bar: WKInterfaceImage, color: UIColor, range: NSRange) {
            let animation = UIImage.animatedImage(with: self.animateImage("progress", color), duration: 4)
            bar.setImage(animation)
        bar.startAnimatingWithImages(in: range, duration: 20, repeatCount: 1)
        }
        
        func animateImage(_ imageName: String, _ color: UIColor) -> [UIImage] {
            var images: [UIImage] = []
            (0...100).forEach { (index) in
                if let img = UIImage(named: "\(imageName)\(index)") {
                    images.append(img.imageOverlay(with: color))
                }
            }
            return images
        }
    }
extension UIImage {
    func imageOverlay(with maskColor: UIColor) -> UIImage {
        let imageRect = CGRect(x: 0.0, y: 0.0, width: self.size.width, height: self.size.height)
        var newImage: UIImage? = nil
        UIGraphicsBeginImageContextWithOptions(imageRect.size, false, self.scale)
        do {
            let context = UIGraphicsGetCurrentContext()!
            context.scaleBy(x: 1.0, y: -1.0)
            context.translateBy(x: 0.0, y: -(imageRect.size.height))
            context.clip(to: imageRect, mask: self.cgImage!)
            context.setFillColor(maskColor.cgColor)
            context.fill(imageRect)	
            newImage = UIGraphicsGetImageFromCurrentImageContext()!
        }
        UIGraphicsEndImageContext()
        return newImage!
    }
    
}

extension UIColor {
    
    @objc class func hexColor (hex:String) -> UIColor {
        
        var hexWithoutSymbol:String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        
        if (hexWithoutSymbol.hasPrefix("#")) {
            hexWithoutSymbol = (hexWithoutSymbol as NSString).substring(from: 1)
        }
        
        let scanner = Scanner(string: hexWithoutSymbol)
        var hexInt:UInt32 = 0x0
        scanner.scanHexInt32(&hexInt)
        
        var r:UInt32!, g:UInt32!, b:UInt32!
        switch (hexWithoutSymbol.count) {
        case 3: // #RGB
            r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
            g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
            b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
            break;
        case 6: // #RRGGBB
            r = (hexInt >> 16) & 0xff
            g = (hexInt >> 8) & 0xff
            b = hexInt & 0xff
            break;
        default:
            r = 0
            g = 0
            b = 0
            break;
        }
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
}

