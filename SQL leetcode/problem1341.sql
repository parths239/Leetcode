# Write your MySQL query statement below
SELECT 
    results FROM
    (SELECT 
                u.user_id,
                u.name as results,
                count(r.rating) as total_rating

            FROM 
                users as u
            JOIN
                MovieRating as r
            ON  
                u.user_id = r.user_id
            GROUP BY
                r.user_id
            ORDER BY
                total_rating DESC,
                name ASC
            LIMIT 
                1) as first

UNION ALL

SELECT 
    results 
    FROM
        (SELECT 
            m.movie_id,
            m.title as results,
            r.user_id,
            avg(r.rating) as average_rating,
            r.created_at
        FROM 
            movies as m
        RIGHT JOIN
            MovieRating as r
        ON  
            m.movie_id = r.movie_id
        WHERE
            month(r.created_at) = 2 AND year(r.created_at) = 2020
        GROUP BY
            r.movie_id
        ORDER BY
            average_rating DESC,
            title ASC
        LIMIT 
            1) as second