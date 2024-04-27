
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        let homer = Simpson(name: "Homer", job: "İnşaat", image: UIImage(named: "homer")!)
        let lisa = Simpson(name: "Lisa", job: "Yazılım", image: UIImage(named: "lisa")!)
        let dede = Simpson(name: "Dede", job: "Manav", image: UIImage(named: "dede")!)
        let bebek = Simpson(name: "Bebek", job: "İşçi", image: UIImage(named: "bebek")!)
        let bart = Simpson(name: "Bart", job: "Mühendis", image: UIImage(named: "bart")!)

        
        
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(dede)
        mySimpsons.append(bebek)
        mySimpsons.append(bart)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let desc = segue.destination as! detailsVC
            desc.selectedSimpson = chosenSimpson
        }
    }
    
}

