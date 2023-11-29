-- a. Liệt kê các bài viết về các bài hát thuộc thể loại Nhạc trữ tình:
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE tl.ten_tloai = 'Nhạc trữ tình';

-- b. Liệt kê các bài viết của tác giả "Nhacvietplus":
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE tg.ten_tgia = 'Nhacvietplus';

-- c. Liệt kê các thể loại nhạc chưa có bài viết cảm nhận nào:
SELECT tl.ma_tloai, tl.ten_tloaiFROM theloai tl
LEFT JOIN baiviet bv ON tl.ma_tloai = bv.ma_tloai
WHERE bv.ma_bviet IS NULL;

-- d. Liệt kê các bài viết với các thông tin sau: mã bài viết, tên bài viết, tên bài hát, tên tác giả, tên thể loại, ngày viết:
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai;

-- e. Tìm thể loại có số bài viết nhiều nhất:
SELECT tl.ten_tloai, COUNT(bv.ma_bviet) AS so_baiviet
FROM theloai tl
LEFT JOIN baiviet bv ON tl.ma_tloai = bv.ma_tloai
GROUP BY tl.ten_tloai
ORDER BY so_baiviet DESC
LIMIT 1;

-- f. Liệt kê 2 tác giả có số bài viết nhiều nhất:
SELECT tg.ten_tgia, COUNT(bv.ma_bviet) AS so_baiviet
FROM tacgia tg
LEFT JOIN baiviet bv ON tg.ma_tgia = bv.ma_tgia
GROUP BY tg.ten_tgia
ORDER BY so_baiviet DESC
LIMIT 2;

-- g. Liệt kê các bài viết về các bài hát có tựa bài hát chứa 1 trong các từ "yêu", "thương", "anh", "em":
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE bv.ten_bhat LIKE '%yêu%' OR bv.ten_bhat LIKE '%thương%' OR bv.ten_bhat LIKE '%anh%' OR bv.ten_bhat LIKE '%em%';

-- h. Liệt kê các bài viết về các bài hát có tiêu đề bài viết hoặc tựa bài hát chứa 1 trong các từ "yêu", "thương", "anh", "em":
SELECT bv.ma_bviet, bv.tieude, bv.ten_bhat, tg.ten_tgia, tl.ten_tloai, bv.ngayviet
FROM baiviet bv
JOIN tacgia tg ON bv.ma_tgia = tg.ma_tgia
JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
WHERE bv.tieude LIKE '%yêu%' OR bv.tieude LIKE '%thương%' OR bv.tieude LIKE '%anh%' OR bv.tieude LIKE '%em%'
OR bv.ten_bhat LIKE '%yêu%' OR bv.ten_bhat LIKE '%thương%' OR bv.ten_bhat LIKE '%anh%' OR bv.ten_bhat LIKE '%em%';

-- l. Bổ sung thêm bảng Users để lưu thông tin Tài khoản đăng nhập và sử dụng cho chức năng Đăng nhập/Quản trị trang web.
CREATE TABLE Users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


