# SQLite_Bookstore
An example SQLite implementation of an Online Bookstore

## Setup

#### SQLite
Make sure you have [SQLite](https://www.sqlite.org/download.html) installed.

#### Webpage
If you want to use the webpage elements, make sure you have a version of Python 2.X (2.6 or higher).
Then install [Flask](http://flask.pocoo.org/docs/0.10/installation/#installation).

## Usage

#### SQLite
Run ```sqlite3``` to open up the SQLite shell.

Run ```.read create.sql``` to create the tables and then ```.read populate.sql``` to insert the dummy data.

You can now run whatever queries you'd like on the data to test it out.

#### Webpage
Run ```python views.py``` and navigate to the provided link. (Probably [127.0.0.1:5000](http://127.0.0.1:5000/))

[127.0.0.1:5000/books/](http://127.0.0.1:5000/books/) will display the book list, while [127.0.0.1:5000/skyler/history](http://127.0.0.1:5000/skyler/history) will display the transaction history for the USER with the username 'skyler'.
This can be done for any user in the system.