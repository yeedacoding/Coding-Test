SELECT ugb.TITLE,
       ugb.BOARD_ID,
       ugr.REPLY_ID,
       ugr.WRITER_ID,
       ugr.CONTENTS,
       DATE_FORMAT(ugr.CREATED_DATE, '%Y-%m-%d') CREATED_DATE
FROM used_goods_board ugb
     JOIN used_goods_reply ugr ON ugb.BOARD_ID = ugr.BOARD_ID
WHERE ugb.created_date LIKE '2022-10%'
ORDER BY ugr.CREATED_DATE, ugb.TITLE;