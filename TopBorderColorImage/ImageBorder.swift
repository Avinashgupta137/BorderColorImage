import UIKit

@IBDesignable
class BorderedImageView: UIImageView {

    @IBInspectable var topBorderColor: UIColor = UIColor.clear {
        didSet {
            topBorderLayer.backgroundColor = topBorderColor.cgColor
        }
    }

    @IBInspectable var bottomBorderColor: UIColor = UIColor.clear {
        didSet {
            bottomBorderLayer.backgroundColor = bottomBorderColor.cgColor
        }
    }

    @IBInspectable var leftBorderColor: UIColor = UIColor.clear {
        didSet {
            leftBorderLayer.backgroundColor = leftBorderColor.cgColor
        }
    }

    @IBInspectable var rightBorderColor: UIColor = UIColor.clear {
        didSet {
            rightBorderLayer.backgroundColor = rightBorderColor.cgColor
        }
    }
    private var topBorderLayer: CALayer = CALayer()
    private var bottomBorderLayer: CALayer = CALayer()
    private var leftBorderLayer: CALayer = CALayer()
    private var rightBorderLayer: CALayer = CALayer()

    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()
    }

    private func configure() {
        topBorderLayer.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 5)
        topBorderLayer.backgroundColor = topBorderColor.cgColor
        layer.addSublayer(topBorderLayer)

        bottomBorderLayer.frame = CGRect(x: 0, y: frame.size.height - 5, width: frame.size.width, height: 5)
        bottomBorderLayer.backgroundColor = bottomBorderColor.cgColor
        layer.addSublayer(bottomBorderLayer)

        leftBorderLayer.frame = CGRect(x: 0, y: 0, width: 5, height: frame.size.height)
        leftBorderLayer.backgroundColor = leftBorderColor.cgColor
        layer.addSublayer(leftBorderLayer)

        rightBorderLayer.frame = CGRect(x: frame.size.width - 5, y: 0, width: 5, height: frame.size.height)
        rightBorderLayer.backgroundColor = rightBorderColor.cgColor
        layer.addSublayer(rightBorderLayer)
    }

    
}
