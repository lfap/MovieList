//
// MovieListViewController.swift
// MovieList
//
// Created for MovieList on 21/03/20.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let movieList = movies
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("Will present a new controller")
        
        if segue.identifier == "showMovieDetail" {
            let destinationViewController = segue.destination as? MovieDetailViewController
            destinationViewController?.movie = sender as? Movie
        }
    }
}

extension MovieListViewController: UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create or reuse a 'table view cell'
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")!
        
        let movie: Movie = movieList[indexPath.row]
        
        cell.textLabel?.text = movie.name
     
        return cell
    }
}

extension MovieListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Clicked at a movie")
        
        let movie = movies[indexPath.row]
        performSegue(withIdentifier: "showMovieDetail", sender: movie)
    }
    
}
