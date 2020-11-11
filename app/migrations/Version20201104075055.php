<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20201104075055 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        $sql = '
DROP PROCEDURE IF EXISTS GETSTUDENTSDATA;

CREATE PROCEDURE GETSTUDENTSDATA() BEGIN
DROP TABLE IF EXISTS `tmp_table`;
CREATE
TEMPORARY TABLE tmp_table AS
SELECT ROUND(AVG(`mark`),
             1) AS `average`,
       CONCAT(`s`.`first_name`,
              " ",
              `s`.`last_name`) AS `full_name`,
       `sub`.`name` AS `subject`,
       `u`.`name` AS `university`,
       `sub`.`code` AS `code`
FROM `mark` m
LEFT JOIN `student` `s` ON `s`.`id` = `m`.`student_id`
LEFT JOIN `university` `u` ON `u`.`id` = `s`.`university_id`
LEFT JOIN `subject` `sub` ON `sub`.`id` = `m`.`subject_id`
GROUP BY `m`.`student_id`,
         `m`.`subject_id`;
SELECT CONCAT(\'SELECT full_name, IFNULL(university, "-") university, \',
              res_columns,
              \'
             FROM tmp_table
              GROUP BY full_name\') INTO @query
FROM
  (SELECT GROUP_CONCAT(CONCAT(\'IFNULL(ROUND(AVG(CASE WHEN code=\'\'\', code, \'\'\' THEN average END),1), \'\'-\'\') AS "\', code, \'"\')) res_columns
   FROM
     (SELECT DISTINCT `code`
      FROM `tmp_table` AS column_values) RESULT) finished; PREPARE stmt
FROM @query; EXECUTE stmt; DEALLOCATE PREPARE stmt; END;
        ';
        $this->addSql($sql);
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs

    }
}
