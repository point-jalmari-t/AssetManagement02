CREATE TABLE AssetLocation
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Code] NVARCHAR(100),
	[Name] NVARCHAR(200),
	[Address] NVARCHAR(500),
);

CREATE TABLE Assets
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Code] NVARCHAR(100),
	[Type] NVARCHAR(200),
	[Model] NVARCHAR(500),
);

CREATE TABLE AssetLocations
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[LocationId] INT,
	[AssetId] INT,
	[LastSeen] DATETIME,
	CONSTRAINT FK_AssetLocations_Locations FOREIGN KEY (LocationId) REFERENCES AssetLocation (ID),
	CONSTRAINT FK_AssetLocations_Assets FOREIGN KEY (AssetId) REFERENCES Assets (ID),
);

--DROP TABLE AssetLocations

--SELECT * FROM AssetLocations