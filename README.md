# Private Events

![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red)
![Rails](https://img.shields.io/badge/Rails-7.1.2-red)
![License](https://img.shields.io/badge/license-MIT-green)

A Ruby on Rails application that allows users to create events and manage user signups. Users can create events and send invitations to other users. Events take place at a specific date and location. This project is part of [The Odin Project's](https://www.theodinproject.com/lessons/ruby-on-rails-private-events) Ruby on Rails curriculum.

## Features

- User authentication with Devise
- Create and manage events
- Attend events created by other users
- View past and upcoming events
- User profiles showing created and attended events

## Technologies Used

- Ruby 3.2.2
- Rails 7.1.2
- PostgreSQL
- Devise for authentication
- HTML/CSS
- Git for version control

## Getting Started

### Prerequisites

- Ruby 3.2.2
- Rails 7.1.2
- PostgreSQL

### Installation

1. Clone the repository

```bash
git clone https://github.com/yourusername/private-events.git
cd private-events
```

2. Install dependencies

```bash
bundle install
```

3. Setup database

```bash
rails db:create
rails db:migrate
```

4. Start the server

```bash
rails server
```

5. Visit `http://localhost:3000` in your browser

## Database Structure

The application uses the following models:

- User (devise authentication)
- Event (title, date, location)
- UserEvent (join table for managing event attendance)

## Learning Objectives

This project was built as part of The Odin Project's Ruby on Rails curriculum. Key learning points include:

- ActiveRecord Associations
- Through Associations
- Foreign Keys and Class Names
- Devise Authentication
- Model and Controller Organization
- Rails Forms and Nested Attributes

## Project Requirements

Based on [The Odin Project's specifications](https://www.theodinproject.com/lessons/ruby-on-rails-private-events), this project implements:

- User authentication
- Event creation and management
- Event attendance functionality
- Separation of past and upcoming events
- Association of events with creators and attendees

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- [The Odin Project](https://www.theodinproject.com) for the project requirements and learning resources
- [Ruby on Rails Guides](https://guides.rubyonrails.org/) for the excellent documentation
- [Devise](https://github.com/heartcombo/devise) for authentication

## Author

- Zeyad Hassan
---
_This project is part of [The Odin Project](https://www.theodinproject.com) curriculum._
