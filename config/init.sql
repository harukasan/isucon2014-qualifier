ALTER TABLE `login_log` DEFAULT CHARSET=ascii ROW_FORMAT=DYNAMIC, convert to character set ascii;
ALTER TABLE `users` DEFAULT CHARSET=ascii ROW_FORMAT=DYNAMIC, convert to character set ascii;

ALTER TABLE `login_log` ADD INDEX `ip_succeeded`(`ip`, `succeeded`);
ALTER TABLE `login_log` ADD INDEX `user_id_succeeded`(`user_id`, `succeeded`);
