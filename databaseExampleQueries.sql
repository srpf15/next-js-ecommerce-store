-- this file will not run, it's created only to save the quearies so we can have easy access to it.

-- Create a products table
CREATE TABLE products (
  id integer PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(30) NOT NULL,
  type varchar(30) NOT NULL,
  price integer NOT NULL,
  description varchar(100) NOT NULL
);

-- Insert products
INSERT INTO products
  (name, type, price, description)
VALUES
( 'man1', 'Pullover', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'man2','Jeans', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'man3', 'Pants', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'woman1', 'Sweater', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'woman2', 'Purse', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'woman3', 'Trousers', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'kids1', 'LinenJumpsuit', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'kids2', 'ShirtandPants', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
( 'kids3', 'PulloverandJoggers', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor');


-- Read products
SELECT * FROM products;

-- -------------------------------------

-- export function getProductById(id: number) {
--   return products1.find((product) => product.id === id);
-- }
