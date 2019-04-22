-- Select s.FirstName, s.LastName, c.Subject, c.Number 
	-- from Student s
    -- INNER JOIN Course c
    -- ON S.id = C.;
    
    Select i.FirstName, i.LastName, c.Subject, c.Number, c.Name
		From Instructor i
			Inner Join Course c
				On i.CourseID = c.ID;