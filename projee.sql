CREATE OR REPLACE PROCEDURE UYESIL (memberid NUMBER)
AS
BEGIN
DELETE FROM USERSS WHERE id = memberid;
END UYESIL;

CREATE OR REPLACE TRIGGER mybook AFTER INSERT ON LENDBOOK 
FOR EACH ROW 
BEGIN
INSERT INTO MyBooks (memberid, bookid)
VALUES (memberid, bookid);
END mybook;

CREATE TRIGGER increment_book
AFTER INSERT ON BOOKSS 
FOR EACH ROW 
BEGIN
UPDATE book_count SET book_count.bookss = book_count.bookss+1 ;
END increment_book;