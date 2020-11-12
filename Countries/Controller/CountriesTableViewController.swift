import UIKit

struct Place {
    var SubHeading: String
    var name: String
}

class CountriesTableViewController: UITableViewController {

    let Places = [
        Place(SubHeading: "p1", name: "Place1"),
        Place(SubHeading: "p2", name: "Place2"),
        Place(SubHeading: "p3", name: "Place3"),
        Place(SubHeading: "p4", name: "Place4"),
        Place(SubHeading: "p5", name: "Place4"),
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let Place = Places[indexPath.row]
        cell.textLabel?.text = Place.name
        cell.detailTextLabel?.text = Place.SubHeading
        cell.imageView?.image = UIImage(named: "place")
        

        return cell
    }

}
