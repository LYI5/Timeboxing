-- CreateTable
CREATE TABLE `User` (
    `idUser` INTEGER NOT NULL AUTO_INCREMENT,
    `Name` VARCHAR(50) NOT NULL,
    `Gmail` VARCHAR(60) NOT NULL,
    `Pwd` VARCHAR(60) NOT NULL,
    `start_time` DATETIME(3) NOT NULL,
    `End_time` DATETIME(3) NOT NULL,

    PRIMARY KEY (`idUser`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Task` (
    `idTask` INTEGER NOT NULL AUTO_INCREMENT,
    `Title` VARCHAR(50) NOT NULL,
    `Priority` VARCHAR(55) NOT NULL,
    `Descrip` VARCHAR(60) NOT NULL,
    `Status` VARCHAR(50) NOT NULL,
    `Taskcol` VARCHAR(50) NOT NULL,
    `User_idUser` INTEGER NOT NULL,

    PRIMARY KEY (`idTask`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Activities` (
    `idActivities` INTEGER NOT NULL AUTO_INCREMENT,
    `Title` VARCHAR(50) NOT NULL,
    `Start_time` DATETIME(3) NOT NULL,
    `End_time` DATETIME(3) NOT NULL,
    `Status` VARCHAR(50) NOT NULL,
    `Date` DATETIME(3) NOT NULL,
    `Descrip` VARCHAR(45) NOT NULL,
    `Task_idTask` INTEGER NOT NULL,

    PRIMARY KEY (`idActivities`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Task` ADD CONSTRAINT `Task_User_idUser_fkey` FOREIGN KEY (`User_idUser`) REFERENCES `User`(`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Activities` ADD CONSTRAINT `Activities_Task_idTask_fkey` FOREIGN KEY (`Task_idTask`) REFERENCES `Task`(`idTask`) ON DELETE CASCADE ON UPDATE CASCADE;
