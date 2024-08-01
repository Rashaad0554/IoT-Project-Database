CREATE TABLE `Sensors` (
  `sensorID` integer,
  `sensorName` varchar(50),
  `location` varchar(75),
  PRIMARY KEY (`sensorID`)
);

CREATE TABLE `Topics` (
  `topicID` <type>,
  `sensorID` <type>,
  `topicName` <type>,
  `gasName` <type>,
  `unitOfMeasurement` <type>,
  PRIMARY KEY (`topicID`),
  FOREIGN KEY (`sensorID`) REFERENCES `Sensors`(`sensorID`)
);

CREATE TABLE `Logs` (
  `logID` integer,
  `topicID` integer,
  `measurement` float,
  `date` date,
  `time` time,
  PRIMARY KEY (`logID`),
  FOREIGN KEY (`topicID`) REFERENCES `Topics`(`topicID`)
);
