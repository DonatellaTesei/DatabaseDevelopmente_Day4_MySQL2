select students.first_name, students.last_name, courses.name from courses
INNER JOIN enroll on courses.id = enroll.fk_course_id  # enroll.fk_course_id =  courses.id
INNER JOIN students on enroll.fk_student_id = students.id;

select students.first_name, students.last_name, courses.name from courses right JOIN enroll on courses.id = enroll.fk_course_id  # enroll.fk_course_id =  courses.id
right JOIN students on enroll.fk_student_id = students.id

SELECT client.first_name, client.last_name, address.street_name, address.post_code, buy.price, buy.payment_method, books.title, books.category
FROM address JOIN client on address.address_id = client.fk_address_id
JOIN buy on buy.fk_client_id = client.client_id
JOIN books on books.book_id = buy.fk_book_id

SELECT students.first_name, students.last_name, courses.name
FROM `students`
RIGHT JOIN `enroll` on enroll.fk_student_id = students.id
RIGHT JOIN `courses` on enroll.fk_course_id = courses.id


SELECT students.first_name, students.last_name, courses.name
FROM `students`
JOIN `enroll` on enroll.fk_student_id = students.id
RIGHT JOIN `courses` on enroll.fk_course_id = courses.id
