-- Вставка категорий
INSERT INTO categories (category_name) VALUES 
('Электроника'),
('Одежда'),
('Книги')
ON CONFLICT (category_id) DO NOTHING;

-- Вставка клиентов
INSERT INTO customers (customer_name, region) VALUES 
('Иван Петров', 'Москва'),
('Мария Сидорова', 'Санкт-Петербург'),
('Алексей Козлов', 'Новосибирск'),
('Елена Волкова', 'Москва')
ON CONFLICT (customer_id) DO NOTHING;

-- Вставка продуктов
INSERT INTO products (product_name, category_id, price) VALUES 
('Смартфон', 1, 29999.99),
('Ноутбук', 1, 79999.99),
('Футболка', 2, 1999.99),
('Джинсы', 2, 3999.99),
('Книга по программированию', 3, 1499.99),
('Наушники', 1, 4999.99),
('Куртка', 2, 8999.99)
ON CONFLICT (product_id) DO NOTHING;

-- Вставка продаж
INSERT INTO sales (sale_date, customer_id, product_id, quantity) VALUES 
('2024-01-15', 1, 1, 1),
('2024-01-20', 2, 2, 1),
('2024-01-25', 3, 3, 2),
('2024-02-01', 4, 4, 1),
('2024-02-05', 1, 5, 1),
('2024-02-10', 2, 6, 2),
('2024-02-15', 3, 7, 1),
('2024-02-20', 4, 1, 1),
('2024-03-01', 1, 2, 1),
('2024-03-05', 2, 3, 3),
('2024-03-10', 3, 4, 1),
('2024-03-15', 4, 5, 2)
ON CONFLICT (sale_id) DO NOTHING;
