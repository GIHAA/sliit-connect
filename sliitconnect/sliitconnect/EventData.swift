//  EventData.swift
//  sliitconnect
//
//  Created by Gihan Sudeepa on 2025-03-08.
//

import Foundation

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let time: String
    let venue: String
    let tags: [String] // For search purposes
    let photoURL: String // Add photoURL for the image
    let latitude: Double  // Added latitude for the event location
    let longitude: Double // Added longitude for the event location
}

let sampleEvents: [Event] = [
    Event(
        title: "Wiramaya",
        description: "Annual cultural event showcasing traditional performances, organized by SLIIT’s drama society.",
        time: "2025/06/10",
        venue: "Main Auditorium",
        tags: ["Culture", "Drama", "Performance"],
        photoURL: "https://i.ibb.co/v6FvGLVj/images.jpg",
        latitude: 6.9147,
        longitude: 79.9728
    ),
    Event(
        title: "SLIIT’s Got Talent by FESC",
        description: "A talent competition by the Faculty of Engineering Student Community highlighting student skills in music, dance, drama and more.",
        time: "2025/07/05",
        venue: "Malabe Campus Grounds",
        tags: ["Talent Show", "FESC", "Entertainment"],
        photoURL: "https://i.ibb.co/Q7N70hNY/images.jpg",
        latitude: 6.9147,
        longitude: 79.9728
    ),
    Event(
        title: "SLIIT Walk",
        description: "An annual walk to promote unity and well-being among students and staff, featuring music, charity fundraising, and fun activities.",
        time: "2025/08/15",
        venue: "From SLIIT to Parliament Grounds",
        tags: ["Walk", "Community", "Charity"],
        photoURL: "https://i.ibb.co/6RfpL0tz/SLIIT-Walk-2023-1.jpg",
        latitude: 6.9147,
        longitude: 79.9728
    ),
    Event(
        title: "Blood Donation by FCSC",
        description: "Organized by the Faculty of Computing Student Community, this drive encourages students to donate blood and support healthcare.",
        time: "2025/09/10",
        venue: "New Academic Building Lobby",
        tags: ["Health", "Charity", "FCSC"],
        photoURL: "https://i.ibb.co/gMx8Dh3q/FCSC-organized-Annual-Blood-Donation-Campaign-Drops-of-hope24.jpg",
        latitude: 6.9147,
        longitude: 79.9728
    ),
    Event(
        title: "Codefest",
        description: "SLIIT's annual hackathon and coding competition. Join to showcase your programming skills, solve real-world problems, and win exciting prizes.",
        time: "2025/10/20",
        venue: "Computer Lab Complex",
        tags: ["Coding", "Hackathon", "Competition"],
        photoURL: "https://i.ibb.co/C59zx9S1/SLIIT-video-coverage-Codefest.jpg",
        latitude: 6.9147,
        longitude: 79.9728
    )
]
