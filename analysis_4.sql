-- Calculate the percentage contribution of each pizza type to total revenue.alter

SELECT 
    pizza_types.category,
    ROUND((SUM(pizzas.price * order_details.quantity) / (SELECT 
                    ROUND(SUM(order_details.quantity * pizzas.price),
                                2) AS total_sales
                FROM
                    order_details
                        JOIN
                    pizzas ON pizzas.pizza_id = order_details.pizza_id) * 100),
            1) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;

-- Analyze the cumulative revenue generated over time.

select date_,
 sum(revenue) over(order by date_) as cum_revenue
 from
(select orders.order_date as date_, 
sum(pizzas.price * order_details.quantity) as revenue
from pizzas join order_details 
ON order_details.pizza_id = pizzas.pizza_id
join orders
on orders.order_id = order_details.order_id
group by date_ order by date_ asc) as sales;

-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name, revenue from
(select category, name, revenue,
rank() over(partition by category order by revenue desc) as rn
from(
SELECT 
    pizza_types.name, pizza_types.category as category,
    ROUND((SUM(pizzas.price * order_details.quantity)),1) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name, category
ORDER BY revenue DESC) as sub) as sub2 where rn < 4;