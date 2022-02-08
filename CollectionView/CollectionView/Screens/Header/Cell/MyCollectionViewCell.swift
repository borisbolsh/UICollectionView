import UIKit

final class MyCollectionViewCell: UICollectionViewCell {
  static let identifier = "UICollectionViewCell"

  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.backgroundColor = .green
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
