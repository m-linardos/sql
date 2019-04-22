IsActive 				tinyint(1) 		default 1 not null,
DateCreated 			datetime 		default current_timestamp not null,
DateUpdated 			datetime 		default current_timestamp on update current_timestamp not null,
UpdatedByUser 			integer 		default 1 not null,