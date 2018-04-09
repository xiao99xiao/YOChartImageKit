import WatchKit


class SmoothLineGradientChartInterfaceController: BaseInterfaceController {

    override func didAppear() {
        super.didAppear()

        let chart = YOChart.SmoothLineChartGradient
        let frame = CGRect(x: 0, y: 0, width: contentFrame.width, height: contentFrame.height / 1.5)
        let image = chart.drawImage(frame: frame, scale: WKInterfaceDevice.current().screenScale) as! UIImage
        self.imageView.setImage(image)
    }

}
