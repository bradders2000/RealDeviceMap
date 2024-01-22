CREATE EVENT IF NOT EXISTS `clear_s2cell` ON SCHEDULE EVERY 1 DAY
DO DELETE FROM s2cell WHERE updated <= UNIX_TIMESTAMP() - 604800;
