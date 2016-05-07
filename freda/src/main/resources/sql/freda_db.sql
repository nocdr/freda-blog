CREATE database freda_db;
use freda_db;
-- 文章表
CREATE TABLE `article` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `TITLE` varchar(100) COLLATE utf8_bin NOT NULL,
  `AUTHOR` varchar(45) COLLATE utf8_bin NOT NULL,
  `PREVIEW` longtext COLLATE utf8_bin,
  `CONTENT` longtext COLLATE utf8_bin,
  `TAG` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '标签',
  `CREATE_TIME` datetime NOT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章表';

-- 用户表
CREATE TABLE `user` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `username` varchar(45) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# id, TITLE, AUTHOR, PREVIEW, CONTENT, TAG, CREATE_TIME, UPDATE_TIME
INSERT INTO `freda_db`.`article`
(`id`,
`TITLE`,
`AUTHOR`,
`PREVIEW`,
`CONTENT`,
`TAG`,
`CREATE_TIME`,
`UPDATE_TIME`) values
('27951044086f4a56827c30694b8f5d10', 'NOCODER', 'Jason Yang', '<font face=\"Comic Sans MS\">Welcome to nocoder.</font><br>', '<p><b><font face=\"Comic Sans MS\">Welcome to nocoder.</font></b><br></p><p><img data-filename=\"logo.jpg\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDABQODxIPDRQSEBIXFRQYHjIhHhwcHj0sLiQySUBMS0dARkVQWnNiUFVtVkVGZIhlbXd7gYKBTmCNl4x9lnN+gXz/2wBDARUXFx4aHjshITt8U0ZTfHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHz/wAARCAKAAoADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDjKMcZoooAKKKKACiiigAoooNABRRRQAUUUUAFOLfLtptFABRRRQAUCiigBWxnjpSUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABS54xSUUAFGKKXJNACUUUUAFFFFABRRRQAUUUUAFFFFACkYpKKKACiiigAooooAKKKKACiiigBV9aDyaQGigAooooAKKKKADpRSuQxyKQUAFFFFABRRRQAUUUUAFFFFABRRRQAUUYooAKKKKACiiigApQBg5NJRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFA+tABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRmiigAooooAKKKKACiiigAooooAUHHFJRS0AJRRRQAUUUUAFFFFABRRRQAUZoooAKKKKACgdeaKKAFOM8UpA2g02igApcZpKKACiiigApRSdqKACiiigAoopeKAEooooAKKKKACiiigAooooAKKKKACiiigAHvQaM0HHagAoxRQKACiiigAooooAKKUYxzSUAFFFFABRRRQAUUUoGTxQAlFBGDg0UAFFFFACkYHNJTgwK4NNoAKKKKACgUUUAFFKKSgAooooAKKUKT0GamW1fq/wAo9TQBBRVgxwR/ebf9KTzkX7iD/gXNArkGKKn+0n/nmn/fNKLojrHH/wB80gK9FWDOjdYwPpQrW56q350Bcr0VcFvBJ9yTB9DUM1s8J55HrQCdyGiiimMXpSUdqKACijFFABRRRQAUUopKACiiigAoooFABRRRQAGig+1FABRRRQAUUUUAFFLSUAFFFFABRRRQAUoNJRQAUUUUAFFFFABRRRQAUUUUAFFFFAAaKKKACiiigAooooAKKKKACgUUUABGKKKKACiiigAo5FFFAATk80UUUAFFFFABQKKKACiiigAooPNFABRRTlXjc3SgAVGc8CpdkUf323N6DpTDISMLwKIoXlYBRknikFiT7UVGIlCCoi0kjdyTVzybe3H75jI391e1JJcPKu2KJUC9CBzQFiuLS4bpC5/4Cad9huv+feT/AL5NWQ88AzLcupH8Abmo5NSuDwk8wHu1AyA2lwOsMg/4CajMbg4KkfhU4uruQ486Q/jT1wvM5Yt9aCWyoQR1FJitYSWqplsE+9QSS27H5QBRclSb6FEEjpUi3DqMZ470SshJwPyqKmUSExucn5fpSERdmP5UyigCbZDj77flTfKz0YfiajooAcyMvUU2nrKR15HoaUlGHAwaBkdFO2+4pCpFACUUUoHFACUUppBQAUUUUAFBoooAKKKKACjNFFAB1ooooAKKKKACiiigAooooAKMUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUvFJQAUUUUAGKKKKACjtRRQAUUUUAFFFFABS9qAcUlABRS4pKACigUUAFFFLgetACUUUUAFBoooAKKKUDJoAfHHkF24UU123H27VJO2AIx0WoelAizBCNm9+nYetbllpMrxb2+Xd29BWRpzeZeRhgWA6D0ruIz8o6ZHXFceJqyprQ3gkzFTQo2mJb7i9z3NV76NIf3VuAPU+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FABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQB/9k=\" style=\"width: 422.5px; float: none; height: 422.5px;\"></p>', 'NOCODER', '2016-04-04 02:49:03', NULL);