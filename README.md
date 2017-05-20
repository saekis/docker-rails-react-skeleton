## BookRoll
BookRoll is a book manager in your office.

## Outline
- Registration of books
- Management lending status of books
- Searching books in your office

## DB design
- books
  - book_id integer
  - name string
- rentals
  - rental_id integer
  - book_id integer
  - start_date date
  - due_date date
  - user_name string
  - status integer
