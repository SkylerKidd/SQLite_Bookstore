from flask import Flask, g, render_template
import sqlite3

DATABASE = 'BOOKSTORE.db'
app = Flask(__name__)

def connect_db():
    return sqlite3.connect(DATABASE)

@app.before_request
def before_request():
    g.db = connect_db()

@app.after_request
def after_request(response):
    g.db.close()
    return response

def query_db(query, args=(), one=False):
    cur = g.db.execute(query, args)
    rv = [dict((cur.description[idx][0], value)
               for idx, value in enumerate(row)) for row in cur.fetchall()]
    return (rv[0] if rv else None) if one else rv

@app.route('/')
def index():
    return 'I should put something on the home page... :I'
    
@app.route('/books/')
def show_books():
    books = query_db('select * from book;')
    # for book in books:
    #     print book['ISBN'], 'has the title', book['Title']
    return render_template('books.html', books=books)

@app.route('/<user>/history/')
def show_history(user=None):
    sold_query = 'select * from transact, listing, book where Book=ISBN and SellerUN=Seller and BookID=Book and SellerUN="'+str(user)+'"'
    bought_query = 'select * from transact, listing, book where Book=ISBN and SellerUN=Seller and BookID=Book and BuyerUN="'+str(user)+'"'
    userInfo = query_db('select * from user where Username="'+str(user)+'"')[0] # Query returns an array, so I have to grab the 0th (only) index to use it.
    sold = query_db(sold_query)
    bought = query_db(bought_query)
    return render_template('history.html', sold=sold, bought=bought, userInfo=userInfo)

@app.route('/<user>/')
def show_profile(user=None):
    userInfo = query_db('select * from user where Username="'+str(user)+'"')[0]
    return render_template('profile.html', userInfo=userInfo)
    
if __name__ == '__main__':
    app.run(debug=True)
