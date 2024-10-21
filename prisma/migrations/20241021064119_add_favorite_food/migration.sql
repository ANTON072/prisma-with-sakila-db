/*
  Warnings:

  - The primary key for the `person` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `personId` on the `person` table. All the data in the column will be lost.
  - Added the required column `person_id` to the `person` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `person` DROP PRIMARY KEY,
    DROP COLUMN `personId`,
    ADD COLUMN `person_id` SMALLINT UNSIGNED NOT NULL,
    ADD PRIMARY KEY (`person_id`);

-- CreateTable
CREATE TABLE `favorite_food` (
    `person_id` SMALLINT UNSIGNED NOT NULL,
    `food` VARCHAR(20) NOT NULL,

    PRIMARY KEY (`person_id`, `food`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `favorite_food` ADD CONSTRAINT `favorite_food_person_id_fkey` FOREIGN KEY (`person_id`) REFERENCES `person`(`person_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
