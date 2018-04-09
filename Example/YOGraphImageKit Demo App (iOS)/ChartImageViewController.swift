import UIKit

class ChartImageViewController: UIViewController {

    var chart = YOChart.SolidLineChart

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let result = chart.drawImage(frame: self.imageView.frame, scale: UIScreen.main.scale)
        if let img = result as? UIImage {
            imageView.image = img;
        }
        else {
            imageView.image = nil;
            imageView.animationImages = result as! [UIImage]
            imageView.animationRepeatCount = 1
            imageView.animationDuration = 0.5
            imageView.image = (result as! [UIImage]).last
            imageView.startAnimating()
        }
        
        
    }
}
