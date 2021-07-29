SELECT *
FROM pg_Indexes
WHERE tablename = 'books';

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE quantity > 18;

CREATE INDEX quantity_idx ON orders (order_id);

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE quantity > 18;

ALTER TABLE customers
  ADD CONSTRAINT customers_pkey
    PRIMARY KEY (customer_id);

EXPLAIN ANALYZE SELECT *
FROM customers
WHERE customer_id < 100;

CLUSTER customers using customers_pkey;

CREATE INDEX customer_idx_book_idx_quantity_idx ON orders (customer_id, book_id, order_id );

CREATE INDEX author_idx_title_idx ON orders(book_id);

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE quantity * price_base > 100;

CREATE INDEX totalprice_idx ON orders (order_id);

EXPLAIN ANALYZE SELECT *
FROM orders
WHERE quantity * price_base > 100;