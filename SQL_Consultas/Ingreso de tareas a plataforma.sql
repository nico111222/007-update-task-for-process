 /*Tablas necesarias*/
 use TEST
 go
 CREATE TABLE General_Process_Wip (
    ID_Process_Wip INT IDENTITY(1,1) PRIMARY KEY,
    Process_wip NVARCHAR(100) NOT NULL
);

INSERT INTO General_Process_Wip (Process_wip) VALUES
('Fabric'),
('Cutting'),
('Fussing'),
('Sorting'),
('ScreenPrinting'),
('ScreenPrinting-CP'),
('Embroidery'),
('Embroidery-CP'),
('Embroidery-Direct'),
('Sublimated-CP'),
('Laser'),
('HeatTransfer-CP'),
('Plotter'),
('Plotter-CP'),
('Logo-Nameplate'),
('Logo'),
('Plotter-Desing'),
('Logo-HeatTransfer'),
('Logo-Pad Print'),
('Warehouse'),
('Ready to Sew'),
('Sewing'),
('LogisticFG'),
('ScreenPrinting-FG'),
('Embroidery-FG'),
('HeatTransfer-FG'),
('Packing'),
('ScreenPrinting-Nameplate'),
('Plotter-Roll'),
('Sublimated-Roll');

select*from  General_Process_Wip
 --insertar nueva columna y relacionarla
 select*from General_WipTask

ALTER TABLE dbo.General_WipTask
ADD ID_Process_Wip INT;

ALTER TABLE dbo.General_WipTask
ADD CONSTRAINT FK_GeneralWipTask_ProcessWip
FOREIGN KEY (ID_Process_Wip) REFERENCES dbo.General_Process_Wip(ID_Process_Wip);

UPDATE dbo.General_WipTask SET ID_Process_Wip = 3 WHERE ID_General_WipTask = 12;
--insertar informacion de nueva columna
UPDATE dbo.General_WipTask SET ID_Process_Wip = 1 WHERE ID_General_WipTask = 1;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 1 WHERE ID_General_WipTask = 2;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 3;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 4;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 5;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 6;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 7;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 8;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 9;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 10;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 3 WHERE ID_General_WipTask = 11;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 3 WHERE ID_General_WipTask = 12;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 4 WHERE ID_General_WipTask = 13;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 14;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 15;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 6 WHERE ID_General_WipTask = 16;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 17;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 18;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 19;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 8 WHERE ID_General_WipTask = 20;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 21;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 22;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 23;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 9 WHERE ID_General_WipTask = 24;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 7 WHERE ID_General_WipTask = 25;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 10 WHERE ID_General_WipTask = 26;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 10 WHERE ID_General_WipTask = 27;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 10 WHERE ID_General_WipTask = 28;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 10 WHERE ID_General_WipTask = 29;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 30;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 12 WHERE ID_General_WipTask = 31;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 12 WHERE ID_General_WipTask = 32;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 12 WHERE ID_General_WipTask = 33;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 34;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 35;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 36;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 14 WHERE ID_General_WipTask = 37;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 15 WHERE ID_General_WipTask = 38;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 39;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 15 WHERE ID_General_WipTask = 40;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 41;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 42;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 43;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 17 WHERE ID_General_WipTask = 44;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 45;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 46;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 47;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 18 WHERE ID_General_WipTask = 48;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 49;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 50;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 51;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 19 WHERE ID_General_WipTask = 52;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 16 WHERE ID_General_WipTask = 53;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 54;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 55;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 56;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 57;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 20 WHERE ID_General_WipTask = 58;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 21 WHERE ID_General_WipTask = 59;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 22 WHERE ID_General_WipTask = 60;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 61;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 22 WHERE ID_General_WipTask = 62;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 22 WHERE ID_General_WipTask = 63;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 23 WHERE ID_General_WipTask = 64;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 5 WHERE ID_General_WipTask = 65;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 24 WHERE ID_General_WipTask = 66;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 24 WHERE ID_General_WipTask = 67;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 24 WHERE ID_General_WipTask = 68;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 25 WHERE ID_General_WipTask = 69;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 25 WHERE ID_General_WipTask = 70;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 25 WHERE ID_General_WipTask = 71;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 25 WHERE ID_General_WipTask = 72;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 73;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 26 WHERE ID_General_WipTask = 74;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 26 WHERE ID_General_WipTask = 75;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 26 WHERE ID_General_WipTask = 76;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 27 WHERE ID_General_WipTask = 77;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 27 WHERE ID_General_WipTask = 78;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 27 WHERE ID_General_WipTask = 79;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 2 WHERE ID_General_WipTask = 80;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 81;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 28 WHERE ID_General_WipTask = 82;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 83;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 84;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 85;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 11 WHERE ID_General_WipTask = 86;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 13 WHERE ID_General_WipTask = 87;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 29 WHERE ID_General_WipTask = 88;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 30 WHERE ID_General_WipTask = 89;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 30 WHERE ID_General_WipTask = 90;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 30 WHERE ID_General_WipTask = 91;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 30 WHERE ID_General_WipTask = 92;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 28 WHERE ID_General_WipTask = 93;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 28 WHERE ID_General_WipTask = 94;
UPDATE dbo.General_WipTask SET ID_Process_Wip = 28 WHERE ID_General_WipTask = 95;



 -----
/*Consulta general*/

WITH Conteo AS (
    SELECT
        GW.*,
        P.Process,
        GSP.Process AS Subprocess,
        GPW.Process_Wip,
        COUNT(*) OVER (PARTITION BY P.Process, GW.Task, GW.Tittle) AS Repeticiones
    FROM General_WipTask GW
    INNER JOIN General_SubProcess GSP ON GW.IDSubProcess = GSP.IDSubProcess
    INNER JOIN General_Process P ON GSP.IDProcess = P.IDProcess
    INNER JOIN General_Process_Wip GPW ON GW.ID_Process_Wip = GPW.ID_Process_Wip
),

DuplicadosNumerados AS (
    SELECT DISTINCT
        Process,
        Task,
        Tittle,
        DENSE_RANK() OVER (
            PARTITION BY Process ORDER BY Task, Tittle
        ) AS GrupoDuplicado
    FROM Conteo
    WHERE Repeticiones > 1
)

SELECT
    c.ID_General_WipTask,
    -- c.ID_General_Status,
    -- c.ID_General_Locations,
    -- c.IDSubProcess,
    c.TypeTask,
    c.Task,
    c.Tittle,
    c.ID_Process_Wip,
    c.Process_Wip,
    c.Process,
    c.Subprocess,
    CASE
        WHEN c.Repeticiones > 1 THEN CAST(dn.GrupoDuplicado AS VARCHAR)
        ELSE ''
    END AS EstadoDuplicado
FROM Conteo c
LEFT JOIN DuplicadosNumerados dn 
    ON c.Process = dn.Process 
    AND c.Task = dn.Task 
    AND c.Tittle = dn.Tittle
ORDER BY c.ID_General_WipTask;



/*
procedimiento almacenado para cambiar informacion de las tareas solo por proceso
*/
USE test
GO

CREATE PROCEDURE dbo.SP_General_Wiptask_Process_Wip_Update
    @TypeTask VARCHAR(20),
    @ID_Process_Wip INT,
    @NewTask VARCHAR(1500),
    @NewTittle VARCHAR(1500)
AS
BEGIN
    SET NOCOUNT ON;

    -- Ver registros que se van a actualizar (sin mostrar Task ni Tittle antiguos)
    SELECT 
        GW.ID_General_WipTask,
        GW.TypeTask,
        GPW.Process_Wip,
        P.Process,
        GSP.Process AS Subprocess
    FROM General_WipTask GW
    INNER JOIN General_SubProcess GSP ON GW.IDSubProcess = GSP.IDSubProcess
    INNER JOIN General_Process P ON GSP.IDProcess = P.IDProcess
    INNER JOIN General_Process_Wip GPW ON GW.ID_Process_Wip = GPW.ID_Process_Wip
    WHERE GW.TypeTask = @TypeTask
      AND GW.ID_Process_Wip = @ID_Process_Wip;

    -- Actualizar todos los registros coincidentes
    UPDATE General_WipTask
    SET Task = @NewTask,
        Tittle = @NewTittle
    WHERE ID_Process_Wip = @ID_Process_Wip
      AND TypeTask = @TypeTask;
END
GO


--Ejecutable
EXEC dbo.SP_General_Wiptask_Process_Wip_Update
     @TypeTask = 'ON',
     @ID_Process_Wip = 2,
     @NewTask = 'WorkTasks.TaskName LIKE ''%Cutting Rea%''',
     @NewTittle = 'Addresses5.ContactTitle LIKE ''%1.0- Cortado%''';

																										
	--me muestra que id modifique



	