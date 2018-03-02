# AdvancedTableNCollectionView
### Takeaway

##### How to make the height of the table view cell dynamic and depend on the size of the content? The layout of the cell should be configured using auto layout. Then you need to set the row height to UITableViewAutomaticDimension like the following.
```swift
tableView.rowHeight = UITableViewAutomaticDimension
```



##### How to make the collection view have cells with different dimensions? You should should subclass UICollectionViewLayout and override the required properties and methods according to the [documentation](https://developer.apple.com/documentation/uikit/uicollectionviewlayout). After that, you should set the layout of the collection view to be an instance of your newly created subclass.
```swift
let layout = MyCollectionViewLayout()
collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
```
