ALTER TABLE `login_log` DEFAULT CHARSET=ascii ROW_FORMAT=DYNAMIC, convert to character set ascii;
ALTER TABLE `users` DEFAULT CHARSET=ascii ROW_FORMAT=DYNAMIC, convert to character set ascii;

ALTER TABLE `login_log` ADD INDEX `ip`(`ip`);
ALTER TABLE `login_log` ADD INDEX `user_id`(`user_id`);
ALTER TABLE `login_log` ADD INDEX `succeeded`(`succeeded`);
