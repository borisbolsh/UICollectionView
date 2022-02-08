import UIKit

final class HeaderCollectionReusableView: UICollectionReusableView {
  static let identifier = "HeaderCollectionReusableView"

  private let imageView: UIImageView = {
    let imageView = UIImageView(image: UIImage(named: "headerImg"))
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    return imageView
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(imageView)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    imageView.frame = bounds
  }

}
