//
// Movie.swift
// MovieList
//
// Created for MovieList on 29/03/20.
//

import UIKit

class Movie {
    
    let image: UIImage
    let trailerURL: URL?
    let name: String
    let year: Int
    let plot: String
    
    init(image: UIImage, trailerURL: URL?, name: String, year: Int, plot: String) {
        self.image = image
        self.trailerURL = trailerURL
        self.name = name
        self.year = year
        self.plot = plot
    }
}

let fast1Image: UIImage = UIImage(named: "fast1")!
let fast1URL = URL(string: "https://www.youtube.com/watch?v=2TAOizOnNPo")

let fast2Image: UIImage = UIImage(named: "fast2")!
let fast2URL = URL(string: "https://www.youtube.com/watch?v=F_VIM03DXWI")

let fast3Image: UIImage = UIImage(named: "fast3")!
let fast3URL = URL(string: "https://www.youtube.com/watch?v=xZ96tl5MrfU")

let fast4Image: UIImage = UIImage(named: "fast4")!
let fast4URL = URL(string: "https://www.youtube.com/watch?v=k98tBkRsGl4")

let fast5Image: UIImage = UIImage(named: "fast5")!
let fast5URL = URL(string: "https://www.youtube.com/watch?v=mw2AqdB5EVA")

let movies: [Movie] = [
    Movie(image: fast1Image, trailerURL: fast1URL, name: "The Fast and the Furious", year: 2001, plot: "Very awesome movie Awesome"),
    Movie(image: fast2Image, trailerURL: fast2URL, name: "The Fast and the Furious 2", year: 2003, plot: "Very awesome movie Awesome"),
    Movie(image: fast3Image, trailerURL: fast3URL, name: "The Fast and the Furious 3", year: 2005, plot: "Very awesome movie Awesome"),
    Movie(image: fast4Image, trailerURL: fast4URL, name: "The Fast and the Furious 4", year: 2007, plot: "Very awesome movie Awesome"),
    Movie(image: fast5Image, trailerURL: fast5URL, name: "The Fast and the Furious 5", year: 2009, plot: "Very awesome movie Awesome")
]

