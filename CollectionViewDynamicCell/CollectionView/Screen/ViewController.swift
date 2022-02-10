import UIKit

class ViewController: UIViewController {

  private struct Constants {
    static let Title = "Main"
  }

  init() {
    super.init(nibName: nil, bundle: nil)
    self.title = Constants.Title
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}

