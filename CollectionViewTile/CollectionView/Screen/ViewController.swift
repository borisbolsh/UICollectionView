import UIKit

class ViewController: UIViewController {

  private struct Constants {
    static let spacing: CGFloat = 16.0
    static let itemHeight: CGFloat = 300.0
    static let titleMain = "Main"
  }

  var profiles: [Profile] = Profile.dummyData

  private let collectionView: UICollectionView = {
    let viewLayout = UICollectionViewFlowLayout()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
    collectionView.backgroundColor = .white
    return collectionView
  }()

  init() {
    super.init(nibName: nil, bundle: nil)
    self.title = Constants.titleMain
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    setupLayouts()
    collectionView.reloadData()
  }

  private func setupViews() {
    view.backgroundColor = .white
    view.addSubview(collectionView)

    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.register(ProfileCell.self, forCellWithReuseIdentifier: ProfileCell.identifier)
  }

  private func setupLayouts() {
    collectionView.translatesAutoresizingMaskIntoConstraints = false

    // Layout constraints for `collectionView`
    NSLayoutConstraint.activate([
      collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
      collectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
    ])
  }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profiles.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCell.identifier, for: indexPath) as! ProfileCell

        let profile = profiles[indexPath.row]
        cell.setup(with: profile)
        cell.contentView.backgroundColor = .red
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = itemWidth(
          for: view.frame.width,
          spacing: Constants.spacing
        )

        return CGSize(
          width: width,
          height: Constants.itemHeight
        )
    }

    func itemWidth(for width: CGFloat, spacing: CGFloat) -> CGFloat {
        let itemsInRow: CGFloat = 2

        let totalSpacing: CGFloat = 2 * spacing + (itemsInRow - 1) * spacing
        let finalWidth = (width - totalSpacing) / itemsInRow

        return floor(finalWidth)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(
          top: Constants.spacing,
          left: Constants.spacing,
          bottom: Constants.spacing,
          right: Constants.spacing
        )
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.spacing
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.spacing
    }
}
