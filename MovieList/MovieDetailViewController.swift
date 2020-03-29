//
// MovieDetailViewController.swift
// MovieList
//
// Created for MovieList on 29/03/20.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var moviePlotLabel: UILabel!
    @IBOutlet weak var movieTrailerButton: UIButton!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        
        print("Created MovieDetailViewController")
        
        configureUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMovieTrailer" {
            let destinationViewController = segue.destination as? TrailerViewController
            destinationViewController?.url = sender as? URL
        }
    }
    
    func configureUI() {
        
        guard let movieUnwrapped = movie else {
            print("Movie is nil and it shouldn't")
            return
        }
        
        if movieUnwrapped.trailerURL == nil  {
            print("URL Not valid")
            movieTrailerButton.isHidden = true
        }
        
        movieImageView.image = movieUnwrapped.image
        movieTitleLabel.text = movieUnwrapped.name
        movieYearLabel.text = "\(movieUnwrapped.year)"
        moviePlotLabel.text = movieUnwrapped.plot
    }
    
    @IBAction func didTouchAtTrailer(_ button: UIButton) {
        let url = movie?.trailerURL
        performSegue(withIdentifier: "showMovieTrailer", sender: url)
    }
}
