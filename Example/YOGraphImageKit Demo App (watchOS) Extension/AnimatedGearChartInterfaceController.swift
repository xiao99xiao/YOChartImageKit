import WatchKit


class AnimatedGearChartInterfaceController: BaseInterfaceController {
    
    override func didAppear() {
        super.didAppear()
        
        let chart = YOChart.AnimatedGearChart
        let frame = CGRect(x: 0, y: 0, width: contentFrame.width, height: contentFrame.height / 1.5)
        let imgs = chart.drawImage(frame: frame, scale: WKInterfaceDevice.current().screenScale) as! [UIImage]
        self.imageView.setImage(UIImage.animatedImage(with: imgs, duration: 0.75))
        self.imageView.startAnimatingWithImages(in: NSRange.init(location: 0, length: imgs.count), duration: 0.75, repeatCount: 1)
    }
    
}

