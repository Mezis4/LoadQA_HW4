-- удаление
delete from wp_comments ;

-- комментатор v1
CALL dorepeat_v1(2);

-- комментатор v2
CALL dorepeat_v2(1, 'мой комментарий');

select * from wp_comments order by comment_ID asc;

-- Открытие всех постов
SELECT * FROM wp_posts wp WHERE comment_status = 'open';

-- Чтение комментариев
SELECT wc.comment_author, wc.comment_date, wc.comment_content FROM wp_comments wc WHERE comment_post_ID =1;