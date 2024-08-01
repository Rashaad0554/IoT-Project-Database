CREATE TABLE `Sensors` (
  `sensorID` INT,
  `sensorName` VARCHAR(50),
  `location` VARCHAR(75),
  PRIMARY KEY (`sensorID`)
);

CREATE TABLE `Topics` (
  `topicID` INT,
  `sensorID` INT,
  `topicName` VARCHAR(75),
  `gasName` VARCHAR(30),
  `unitOfMeasurement` VARCHAR(20),
  PRIMARY KEY (`topicID`),
  FOREIGN KEY (`sensorID`) REFERENCES `Sensors`(`sensorID`)
);

CREATE TABLE `Logs` (
  `logID` INT,
  `topicID` INT,
  `measurement` FLOAT,
  `timestamp` TIMESTAMP,
  PRIMARY KEY (`logID`),
  FOREIGN KEY (`topicID`) REFERENCES `Topics`(`topicID`)
);
