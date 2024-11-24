-- we did a self join first and created a table that has machine_id, process_id, end, start, processing time for each machine and process
-- then we did subquerry and used the first table to get machine_id and average processing time by grouping those processing time by machine_id

SELECT 
FinalTable.machine_id,
Round(avg(processing_time),3) as processing_time
FROM (SELECT 
        endTable.machine_id,
        endTable.process_id,
        endTable.timestamp as end,
        startTable.timestamp as start,
        (endTable.timestamp - startTable.timestamp) as processing_time
    FROM 
        Activity as endTable
    JOIN 
        Activity as startTable
    ON 
        endTable.machine_id = startTable.machine_id
        And endTable.process_id = startTable.process_id
        And endTable.activity_type = 'end'
        AND startTable.activity_type = 'start') as FinalTable

GROUP BY FinalTable.machine_id;