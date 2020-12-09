
CREATE TABLE [dbo].[configuracion_facil_pass](
	[id] [int] NOT NULL,
	[Parametro] [varchar](100) NULL,
	[descripcion] [varchar](200) NULL,
	[ValorNumerico] [int] NULL,
	[ValorAlpha] [varchar](150) NULL,
	[ValorMoneda] [decimal](10, 2) NULL,
	[Habilitador] [int] NULL,
	[codigo] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tag](
	[EQUIPMENTOBUID] [varchar](50) NOT NULL,
	[EQUIPMENT_CLASS] [varchar](45) NULL,
	[MANUFACTURER_ID] [varchar](45) NULL,
	[OBE_STATUS] [varchar](45) NULL,
	[OCTETSTRING] [varchar](45) NULL,
	[CONTRACTAUTHENTICATOR] [varchar](45) NULL,
	[VEHICLEWEIGHTLIMITS] [varchar](50) NULL,
	[VEHICLESPECIFICCHARACTERISTICS] [varchar](45) NULL,
	[PAYMENTMEANSBALANCE] [varchar](19) NULL,
	[PAMENTMEANSUNIT] [varchar](45) NULL,
	[PAYMENTMEANS] [varchar](45) NULL,
	[VEHICLELICENCEPLATENUMBER] [varchar](50) NULL,
	[VEHICLECLASS] [varchar](2) NULL,
	[VEHICLEDIMENSIONS] [varchar](45) NULL,
	[VEHICLEAXLES] [varchar](45) NULL,
	[VEHICLEAUTHENTICATOR] [varchar](45) NULL,
	[EQUIPMENTSTATUS] [varchar](2) NULL,
	[RECEIPTDATA1] [varchar](45) NULL,
	[RECEIPTDATA2] [varchar](45) NULL,
	[PAYMENT_TYPE] [int] NULL,
	[VERIFICADOR] [int] NULL,
	[ID_ACCOUNT] [varchar](50) NULL,
	[REG_DATE] [datetime] NULL,
	[transpOatId] [varchar](45) NOT NULL,
	[ESTADO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EQUIPMENTOBUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tb_telepeaje](
	[TELEPEAJE_ID] [varchar](20) NOT NULL,
	[DEVICE_ID] [varchar](50) NULL,
	[OPERATION_TYPE] [int] NULL,
	[OPERATION_VALUE] [int] NULL,
	[TRANSACTION_DATE] [varchar](20) NULL,
	[PLATE] [varchar](12) NULL,
	[CODEC] [varchar](45) NULL,
	[CAT_DAC] [int] NULL,
	[DATE_DAC] [varchar](20) NULL,
	[SENT] [varchar](40) NULL,
	[CATEGORY_CONSOLE] [int] NULL,
	[FECHA_REC] [varchar](20) NULL,
	[TRANSACTION_ID] [varchar](20) NULL,
	[EMISOR] [int] NULL,
	[MANUAL] [varchar](2) NULL,
	[REG_STATE] [int] NULL,
	[transpOatId] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TELEPEAJE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[transp_oat_recd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transpOatId] [varchar](45) NULL,
	[estadoOat] [int] NULL,
	[fechaCreacionOat] [varchar](30) NULL,
	[oatNodoOrigen] [varchar](2) NULL,
	[objetoOat] [nvarchar](max) NULL,
	[ordenTransmisionOat] [int] NULL,
	[tipoOat] [int] NULL,
	[taskType] [varchar](45) NULL,
	[taskId] [varchar](45) NULL,
	[taskEvent] [varchar](2) NULL,
	[requestId] [varchar](45) NULL,
	[createData] [timestamp] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[transp_oat_sent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transpOatId] [varchar](50) NOT NULL,
	[estadoOat] [int] NULL,
	[fechaCreacionOat] [varchar](80) NULL,
	[oatNodoOrigen] [varchar](2) NULL,
	[objetoOat] [text] NULL,
	[ordenTransmisionOat] [int] NULL,
	[tipoOat] [int] NULL,
	[taskType] [varchar](50) NULL,
	[taskId] [varchar](50) NOT NULL,
	[taskEvent] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[transp_oat_sent_events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transpOatId] [varchar](45) NULL,
	[timestamp] [timestamp] NULL,
	[description] [varchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table to record errors
 
CREATE TABLE DB_Errors
         (ErrorID        INT IDENTITY(1, 1),
          UserName       VARCHAR(100),
          ErrorNumber    INT,
          ErrorState     INT,
          ErrorSeverity  INT,
          ErrorLine      INT,
          ErrorProcedure VARCHAR(MAX),
          ErrorMessage   VARCHAR(MAX),
          ErrorDateTime  DATETIME)
GO



CREATE TABLE [dbo].[transp_oat_sent_test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transpOatId] [varchar](50) NULL,
	[estadoOat] [int] NULL,
	[fechaCreacionOat] [varchar](80) NULL,
	[oatNodoOrigen] [varchar](10) NULL,
	[objetoOat] [text] NULL,
	[ordenTransmisionOat] [int] NULL,
	[tipoOat] [int] NULL,
	[taskType] [varchar](50) NULL,
	[taskId] [varchar](50) NULL,
	[taskEvent] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO




CREATE TRIGGER [dbo].[tb_telepeaje_AFTER_INSERT] ON   [dbo].[tb_telepeaje] INSTEAD OF  INSERT  AS
BEGIN

	DECLARE @categoria_oat_ INT
	DECLARE @Trans_CategoriaCon_ TINYINT
	DECLARE @estadoOat Int
	DECLARE @Trans_TipoTurno_  TINYINT

	DECLARE @TELEPEAJE_ID_ varchar(20) 
	DECLARE @DEVICE_ID_ varchar(50) 
	DECLARE @OPERATION_TYPE_ int 
	DECLARE @OPERATION_VALUE_ int 
	DECLARE @PLATE_ varchar(12) 
	DECLARE @CODEC_  nvarchar(45)
	DECLARE @CAT_DAC_ int 
	DECLARE @DATE_DAC_ varchar(20) 
	DECLARE @SENT_ varchar(40) 
	DECLARE @FECHA_REC_ varchar(20) 
	DECLARE @TRANSACTION_ID_ varchar(20) 
	DECLARE @EMISOR_ int 
	DECLARE @MANUAL_ varchar(2) 
	DECLARE @REG_STATE_ int 
	DECLARE @TRANSACTION_DATE_ varchar(20) 
	DECLARE @encode_xml nvarchar(4000)
	
	SELECT @TELEPEAJE_ID_ = TELEPEAJE_ID             from  INSERTED
	SELECT @DEVICE_ID_ = DEVICE_ID                   from  INSERTED 
	SELECT @OPERATION_TYPE_ = OPERATION_TYPE         from  INSERTED 
	SELECT @OPERATION_VALUE_ = OPERATION_VALUE       from  INSERTED 
	SELECT @PLATE_ = PLATE                           from  INSERTED 
	SELECT @CODEC_ = CODEC                           from  INSERTED 
	SELECT @CAT_DAC_ = CAT_DAC                       from  INSERTED 
	SELECT @DATE_DAC_ = DATE_DAC                     from  INSERTED 
	SELECT @SENT_ = SENT                             from  INSERTED 
	SELECT @FECHA_REC_ = FECHA_REC                   from  INSERTED 
	SELECT @TRANSACTION_ID_ = TRANSACTION_ID         from  INSERTED 
	SELECT @EMISOR_ = EMISOR                         from  INSERTED 
	SELECT @MANUAL_ = MANUAL                         from  INSERTED 
	SELECT @REG_STATE_ = REG_STATE                   from  INSERTED 
	


	
	SELECT @categoria_oat_ =CATEGORY_CONSOLE from  INSERTED

	--dato dentro de if borrado 
	SELECT @TRANSACTION_DATE_ = TRANSACTION_DATE from  INSERTED

	   SET @estadoOat = 1
	   SET @encode_xml = [dbo].[create_encode_xml](
				  @TELEPEAJE_ID_, 
				  @DEVICE_ID_, 
				  @OPERATION_TYPE_, 
				  @OPERATION_VALUE_, 
				  @TRANSACTION_DATE_, 
				  @PLATE_, 
				  @CODEC_, 
				  @CAT_DAC_, 
				  @DATE_DAC_, 
				  @SENT_, 
				  @Categoria_oat_, 
				  @FECHA_REC_, 
				  @TRANSACTION_ID_, 
				  @EMISOR_, 
				  @REG_STATE_, 
				  @REG_STATE_)


        BEGIN TRY
		INSERT INTO [dbo].[transp_oat_sent]( 
			   transpOatId,
		  estadoOat,
		  fechaCreacionOat,
		  oatNodoOrigen,
		  objetoOat,
		  ordenTransmisionOat,
		  tipoOat,
		  taskType,
		  taskId,
		  taskEvent) VALUES (
				@CODEC_,
				@estadoOat,
				CONCAT( CONVERT(nvarchar ,getdate(),102) ,getdate(), '-05:00'),
				'ES', 
				@encode_xml, 
				1, 
				75, 
				'TB_TELEPEAJE_5', 
				[dbo].[TO_BASE64](@TELEPEAJE_ID_), 
				'I')
		END TRY
		BEGIN CATCH
        SELECT
            ERROR_NUMBER() AS ErrorNumber,
            ERROR_STATE() AS ErrorState,
            ERROR_SEVERITY() AS ErrorSeverity,
            ERROR_PROCEDURE() AS ErrorProcedure,
            ERROR_LINE() AS ErrorLine,
            ERROR_MESSAGE() AS ErrorMessage;
        END CATCH;

	        DECLARE @ultimo_id_sent varchar(50)
			SELECT @ultimo_id_sent =  [id] FROM [facil_pass].[dbo].[transp_oat_sent] ORDER BY id DESC OFFSET 1 ROWS  FETCH NEXT 1 ROWS ONLY)
			UPDATE [dbo].[transp_oat_sent] SET transpOatId = @ultimo_id_sent where  id= @ultimo_id_sent

			DECLARE @transpOatId INT
			SET @transpOatId = (SELECT [transpOatId] FROM  [dbo].[transp_oat_sent]  ORDER BY id DESC OFFSET 1 ROWS  FETCH NEXT 1 ROWS ONLY)

            BEGIN TRY
			INSERT INTO [dbo].[tb_telepeaje]
           ([TELEPEAJE_ID]
           ,[DEVICE_ID]
           ,[OPERATION_TYPE]
           ,[OPERATION_VALUE]
           ,[TRANSACTION_DATE]
           ,[PLATE]
           ,[CODEC]
           ,[CAT_DAC]
           ,[DATE_DAC]
           ,[SENT]
           ,[CATEGORY_CONSOLE]
           ,[FECHA_REC]
           ,[TRANSACTION_ID]
           ,[EMISOR]
           ,[MANUAL]
           ,[REG_STATE]
           ,[transpOatId])
     VALUES(
           @TELEPEAJE_ID_, 
           @DEVICE_ID_,
           @OPERATION_TYPE_, 
           @OPERATION_VALUE_, 
           @TRANSACTION_DATE_, 
           @PLATE_,
           @CODEC_, 
           @CAT_DAC_,
           @DATE_DAC_,
           @SENT_, 
           @categoria_oat_,
           @FECHA_REC_,
           @TRANSACTION_ID_,
           @EMISOR_,
           @MANUAL_,
           @REG_STATE_,
           @transpOatId)
		   END TRY
		   BEGIN CATCH
           SELECT
              ERROR_NUMBER() AS ErrorNumber,
              ERROR_STATE() AS ErrorState,
              ERROR_SEVERITY() AS ErrorSeverity,
              ERROR_PROCEDURE() AS ErrorProcedure,
              ERROR_LINE() AS ErrorLine,
              ERROR_MESSAGE() AS ErrorMessage;
           END CATCH;

		--  END 
END
GO





CREATE TRIGGER [dbo].[transp_oat_recd_BEFORE_INSERTON] ON [dbo].[transp_oat_recd] INSTEAD OF  INSERT  AS
BEGIN

    DECLARE @transpOatld_INSERT varchar(45)
	SELECT  @transpOatld_INSERT	= transpOatId   from  INSERTED	

	DECLARE @estadoOat_INSERT int
	SELECT  @estadoOat_INSERT	= estadoOat   from  INSERTED	

	DECLARE @fechaCreacionOat_INSERT varchar(45)
	SELECT  @fechaCreacionOat_INSERT	= fechaCreacionOat   from  INSERTED	

	DECLARE @oatNodoOrigen_INSERT varchar(2)
	SELECT  @oatNodoOrigen_INSERT	= oatNodoOrigen   from  INSERTED	

	DECLARE @objetoOat_INSERT nvarchar(max)
	SELECT  @objetoOat_INSERT	= objetoOat   from  INSERTED	

	DECLARE @ordenTransmisionOat_INSERT int
	SELECT  @ordenTransmisionOat_INSERT	= ordenTransmisionOat   from  INSERTED	

	DECLARE @tipoOat_INSERT int
	SELECT  @tipoOat_INSERT	= tipoOat   from  INSERTED	

	DECLARE @taskType_INSERT varchar(45)
	SELECT  @taskType_INSERT	= taskType   from  INSERTED	

	DECLARE @taskId_INSERT varchar(45)
	SELECT  @taskId_INSERT	= taskId   from  INSERTED	

	DECLARE @taskEvent_INSERT varchar(2)
	SELECT  @taskEvent_INSERT	= taskEvent   from  INSERTED	

	DECLARE @requestId_INSERT varchar(45)
	SELECT  @requestId_INSERT	= requestId  from  INSERTED


	DECLARE @createData_INSERT timestamp
	SELECT  @createData_INSERT	= createData  from  INSERTED



      
	DECLARE @xml_ xml
	DECLARE @xml_aux varchar(3000)
    SELECT @xml_aux = objetoOat   from  INSERTED 

	SET @xml_aux =  REPLACE(SUBSTRING(@xml_aux, 1, DATALENGTH(@xml_aux)), '\r\n','')
	SET @xml_ = CONVERT(XML,@xml_aux,1)

	

	--PRINT ' prueba de XML'
	--select CONVERT(NVARCHAR(MAX), @xml_)
	--print @xml_aux


	DECLARE @EQUIPMENTOBUID_  nvarchar(50)
	DECLARE @EQUIPMENT_CLASS_  nvarchar(50)
	DECLARE @OBE_STATUS_  nvarchar(50)
	DECLARE @OCTETSTRING_  nvarchar(50)
	DECLARE @MANUFACTURER_ID_  nvarchar(50)

	DECLARE @CONTRACTAUTHENTICATOR_  nvarchar(50)
	DECLARE @VEHICLEWEIGHTLIMITS_  nvarchar(50)
	DECLARE @VEHICLESPECIFICCHARACTERISTICS_  nvarchar(50)
	DECLARE @PAYMENTMEANSBALANCE_  nvarchar(50)
	DECLARE @PAYMENTMEANSUNIT_  nvarchar(50)
	DECLARE @PAYMENTMEANS_  nvarchar(50)
	DECLARE @VEHICLELICENCEPLATENUMBER_ nvarchar(50)

	DECLARE @VEHICLECLASS_ nvarchar(50)
	DECLARE @VEHICLEDIMENSIONS_ nvarchar(50)
	DECLARE @VEHICLEAXLES_ nvarchar(50)
	DECLARE @VEHICLEAUTHENTICATOR_ nvarchar(50)
	DECLARE @EQUIPMENTSTATUS_  nvarchar(50)
	DECLARE @RECEIPTDATA1_  nvarchar(50)
	DECLARE @RECEIPTDATA2_  nvarchar(50)
	DECLARE @PAYMENT_TYPE_  nvarchar(50)
	DECLARE @ID_ACCOUNT_  nvarchar(50)
	DECLARE @VERIFICADOR_  nvarchar(50)
	DECLARE @REG_DATE_  datetime

	DECLARE @fechaCreacionOat_  nvarchar(50)
	SELECT  @fechaCreacionOat_ = fechaCreacionOat   from  INSERTED

	DECLARE @taskEvent_  nvarchar(50)
	SELECT  @taskEvent_ = taskEvent   from  INSERTED

	DECLARE @transpOatId_  nvarchar(50)
	SELECT  @transpOatId_ = transpOatId   from  INSERTED


	SET @EQUIPMENT_CLASS_ = '0'
	SET @MANUFACTURER_ID_ = '9'
    SET @OBE_STATUS_='9'
    SET @OCTETSTRING_='9'

    SET @VEHICLEWEIGHTLIMITS_ ='0';
    SET @VEHICLESPECIFICCHARACTERISTICS_='0';
    SET @PAYMENTMEANSBALANCE_ = '0'
    SET @PAYMENTMEANSUNIT_ = '0'
    SET @PAYMENTMEANS_ = '0'

    SET @VEHICLEDIMENSIONS_ = '0';
    SET @VEHICLEAXLES_ ='0';
    SET @VEHICLEAUTHENTICATOR_ = '0';

    SET @RECEIPTDATA1_ = '0';
    SET @RECEIPTDATA2_ =  '0';

    SET @VERIFICADOR_ = '0';
    SET @REG_DATE_  = CONVERT(date, @fechaCreacionOat_,114) 

    
	DECLARE @docHandle int;
 
	EXEC sp_xml_preparedocument @docHandle OUTPUT,@xml_;


	SELECT @EQUIPMENTOBUID_ =  [dbo].[DECODE_BASE64]( (SELECT valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'EQUIPMENTOBUID'  ))  

    SELECT @CONTRACTAUTHENTICATOR_ =   (SELECT  valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'CONTRACTAUTHENTICATOR'    )

    SELECT @VEHICLELICENCEPLATENUMBER_ =  [dbo].[DECODE_BASE64]( (SELECT valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'VEHICLELICENCEPLATENUMBER' ))

      SELECT @VEHICLECLASS_ = [dbo].[DECODE_BASE64]( (SELECT valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'VEHICLECLASS' ))



      SELECT @EQUIPMENTSTATUS_ = [dbo].[DECODE_BASE64]( (SELECT valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'EQUIPMENTSTATUS' )) 


      SELECT @PAYMENT_TYPE_ =  (SELECT  valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor   nchar(2000) '.' ) where nombre = 'PAYMENT_TYPE' )


      SELECT @ID_ACCOUNT_ =  (SELECT valor FROM OPENXML(@docHandle,'/objeto_OAT/tablaAsociada/registro/detReg') WITH ( nombre nchar(155) , tipoDato nchar(15), valor  nchar(2000) '.' ) where nombre = 'ID_ACCOUNT'  ) 
	  EXEC sp_xml_removedocument @docHandle
 
	IF(@taskEvent_='IU' OR @taskEvent_='I' OR @taskEvent_='U')
	    BEGIN
	
		IF((SELECT COUNT(*)  FROM tag where EQUIPMENTOBUID = @EQUIPMENTOBUID_ ) = 0)
		     BEGIN
			
			


			INSERT INTO [dbo].[tag]
                  (EQUIPMENTOBUID,
                  EQUIPMENT_CLASS,
                  MANUFACTURER_ID,
                  OBE_STATUS,
                  OCTETSTRING,
                  CONTRACTAUTHENTICATOR,
                  VEHICLEWEIGHTLIMITS,
                  VEHICLESPECIFICCHARACTERISTICS,
                  PAYMENTMEANSBALANCE,
                  PAMENTMEANSUNIT,
                  PAYMENTMEANS,
                  VEHICLELICENCEPLATENUMBER,
                  VEHICLECLASS,
                  VEHICLEDIMENSIONS,
                  VEHICLEAXLES,
                  VEHICLEAUTHENTICATOR,
                  EQUIPMENTSTATUS,
                  RECEIPTDATA1,
                  RECEIPTDATA2,
                  PAYMENT_TYPE,
                  ID_ACCOUNT,
                  VERIFICADOR,
                  REG_DATE,
                  transpOatId,
				  ESTADO)
          values (
                 @EQUIPMENTOBUID_,
                 @EQUIPMENT_CLASS_,
                 @MANUFACTURER_ID_,
                 @OBE_STATUS_,
                 @OCTETSTRING_,
                 @CONTRACTAUTHENTICATOR_,
                 @VEHICLEWEIGHTLIMITS_,
                 @VEHICLESPECIFICCHARACTERISTICS_,
                 @PAYMENTMEANSBALANCE_,
                 @PAYMENTMEANSUNIT_,
                 @PAYMENTMEANS_,
                 @VEHICLELICENCEPLATENUMBER_,
                 @VEHICLECLASS_,
                 @VEHICLEDIMENSIONS_,
                 @VEHICLEAXLES_,
                 @VEHICLEAUTHENTICATOR_,
                 @EQUIPMENTSTATUS_,
                 @RECEIPTDATA1_,
                 @RECEIPTDATA2_,
                 @PAYMENT_TYPE_,
                 @ID_ACCOUNT_,
                 @VERIFICADOR_,
                 @REG_DATE_,
                 @transpOatId_,
				 0
             )
		    END
		 ELSE
		    BEGIN
		
			  DECLARE @objetoOat_  nvarchar(4000) 
			  DECLARE @codigo_cco INT
		
		      SET @codigo_cco = (select ValorNumerico from [dbo].[configuracion_facil_pass] where Parametro ='map_peaje_cco')
              SET @objetoOat_ =  dbo.create_encode_xml_tag(
                                   @EQUIPMENTOBUID_ ,
                                   @EQUIPMENT_CLASS_ ,
                                   @MANUFACTURER_ID_ ,
                                   @OBE_STATUS_ ,
                                   @OCTETSTRING_ ,
                                   @CONTRACTAUTHENTICATOR_,
                                   @VEHICLEWEIGHTLIMITS_,
                                   @VEHICLESPECIFICCHARACTERISTICS_,
                                   @PAYMENTMEANSBALANCE_,
                                   @PAYMENTMEANSUNIT_,
                                   @PAYMENTMEANS_,
                                   @VEHICLELICENCEPLATENUMBER_,
                                   @VEHICLECLASS_ ,
                                   @VEHICLEDIMENSIONS_,
                                   @VEHICLEAXLES_,
                                   @VEHICLEAUTHENTICATOR_,
                                   @EQUIPMENTSTATUS_,
                                   @RECEIPTDATA1_ ,
                                   @RECEIPTDATA2_ ,
                                   @PAYMENT_TYPE_ ,
                                   @VERIFICADOR_ ,
                                   @ID_ACCOUNT_,
                                   ( DATEDIFF(SECOND,getdate(), GETUTCDATE())  ))
				   
		     UPDATE tag SET
                       EQUIPMENT_CLASS = @EQUIPMENT_CLASS_,
                       MANUFACTURER_ID = @MANUFACTURER_ID_,
                       OBE_STATUS = @OBE_STATUS_,
                       OCTETSTRING = @OCTETSTRING_,
                       CONTRACTAUTHENTICATOR = @CONTRACTAUTHENTICATOR_,
                       VEHICLEWEIGHTLIMITS = @VEHICLEWEIGHTLIMITS_,
                       VEHICLESPECIFICCHARACTERISTICS = @VEHICLESPECIFICCHARACTERISTICS_,
                       PAYMENTMEANSBALANCE = @PAYMENTMEANSBALANCE_,
                       PAMENTMEANSUNIT = @PAYMENTMEANSUNIT_,
                       PAYMENTMEANS = @PAYMENTMEANS_,
                       VEHICLELICENCEPLATENUMBER = @VEHICLELICENCEPLATENUMBER_,
                       VEHICLECLASS = @VEHICLECLASS_,
                       VEHICLEDIMENSIONS = @VEHICLEDIMENSIONS_,
                       VEHICLEAXLES = @VEHICLEAXLES_,
                       VEHICLEAUTHENTICATOR = @VEHICLEAUTHENTICATOR_,
                       EQUIPMENTSTATUS = @EQUIPMENTSTATUS_,
                       RECEIPTDATA1 = @RECEIPTDATA1_,
                       RECEIPTDATA2 = @RECEIPTDATA2_,
                       PAYMENT_TYPE = @PAYMENT_TYPE_,
                       ID_ACCOUNT = @ID_ACCOUNT_,
                       VERIFICADOR = @VERIFICADOR_,
                       REG_DATE = @REG_DATE_,
                       transpOatId = @transpOatId_ 
					   WHERE  EQUIPMENTOBUID = @EQUIPMENTOBUID_ 

			  SET  @estadoOat_INSERT = 4
			  	  INSERT INTO [dbo].[transp_oat_sent](
			               transpOatId,
						   estadoOat,
			               fechaCreacionOat,
			               oatNodoOrigen,
			               objetoOat,
			               ordenTransmisionOat,
			               tipoOat,
			               taskType,
			               taskId,
			               taskEvent)VALUES (
			               @transpOatld_INSERT,
			               1,
			               @fechaCreacionOat_INSERT,
			               'ES',
			               REPLACE(@objetoOat_, CHAR(13) + CHAR(10), ''),
			               @ordenTransmisionOat_INSERT,
			               86,
			               'TB_CHANGE_TAG',
			               @taskId_INSERT,
			               'IU'
			               )
				  DECLARE @ultimoId INT
				  SET @ultimoId = (SELECT [id] FROM  [dbo].[transp_oat_sent]  ORDER BY id DESC OFFSET 1 ROWS  FETCH NEXT 1 ROWS ONLY)
				  UPDATE [dbo].[transp_oat_sent] SET transpOatId = CONCAT(@codigo_cco,'00',REPLACE(STR(@ultimoId, 12), SPACE(1), '0'))  where  id= @ultimoId
		
	                  
		    END


	
      END
	ELSE
	    BEGIN
		    IF(@taskEvent_='D' )
			  BEGIN
			     DELETE FROM [dbo].[tag] WHERE EQUIPMENTOBUID=@EQUIPMENTOBUID_;        
                 SET @estadoOat_INSERT = 4
		      END
			ELSE
			  BEGIN
			     SET @estadoOat_INSERT = -1
		      END
	    END	
		
		INSERT INTO [dbo].[transp_oat_recd]
           ([transpOatId]
           ,[estadoOat]
           ,[fechaCreacionOat]
           ,[oatNodoOrigen]
           ,[objetoOat]
           ,[ordenTransmisionOat]
           ,[tipoOat]
           ,[taskType]
           ,[taskId]
           ,[taskEvent]
           ,[requestId]) VALUES 
           (@transpOatld_INSERT
           ,@estadoOat_INSERT
           ,@fechaCreacionOat_INSERT
           ,@oatNodoOrigen_INSERT
           ,@objetoOat_INSERT
           ,@ordenTransmisionOat_INSERT
           ,@tipoOat_INSERT
           ,@taskType_INSERT
           ,@taskId_INSERT
           ,@taskEvent_INSERT
           ,@requestId_INSERT)


END


GO






CREATE  FUNCTION [dbo].[create_encode_xml](
@TELEPEAJE_ID nvarchar(20),
@DEVICE_ID nvarchar(50) ,
@OPERATION_TYPE int ,
@OPERATION_VALUE int ,
@TRANSACTION_DATE nvarchar(20),
@PLATE nvarchar(12) ,
@CODEC nvarchar(45) ,
@CAT_DAC int ,
@DATE_DAC nvarchar (20),
@SENT nvarchar (40),
@CATEGORY_CONSOLE int ,
@FECHA_REC nvarchar(20) ,
@TRANSACTION_ID nvarchar(20) ,
@EMISOR int ,
@MANUAL nvarchar(2) ,
@REG_STATE int

)
RETURNS nvarchar(3000)
BEGIN

 RETURN  CONCAT('<?xml version="1.0" encoding="UTF-8"?>',
'<objeto_OAT  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd"  nombreEvento="TB_TELEPEAJE_5"  nodoOrigen="ES"  tipoOpera="I" >',
'<tablaAsociada  nombreTabla="TB_TELEPEAJE" >',
'<registro>',
'<detReg  nombre="TELEPEAJE_ID"  tipoDato="2"  isPK="1" >',[dbo].[TO_BASE64](@TELEPEAJE_ID),'</detReg>',
'<detReg  nombre="DEVICE_ID"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@DEVICE_ID),']]>','</detReg>',
'<detReg  nombre="OPERATION_TYPE"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@OPERATION_TYPE),'</detReg>',
'<detReg  nombre="OPERATION_VALUE"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@OPERATION_VALUE),'</detReg>',
'<detReg  nombre="TRANSACTION_DATE"  tipoDato="93"  isPK="0" >',[dbo].[TO_BASE64](@TRANSACTION_DATE),'</detReg>',
'<detReg  nombre="PLATE"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@PLATE),']]>','</detReg>',
'<detReg  nombre="CODEC"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@CODEC),']]>','</detReg>',
'<detReg  nombre="CAT_DAC"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@CAT_DAC),'</detReg>',
'<detReg  nombre="DATE_DAC"  tipoDato="93"  isPK="0" >',[dbo].[TO_BASE64](@DATE_DAC),'</detReg>',
'<detReg  nombre="SENT"  tipoDato="12"  isPK="0" >','<![CDATA[MQ==]]>','</detReg>',
'<detReg  nombre="RECEIPT_DATA"  tipoDato="12"  isPK="0" >','<![CDATA[MA==]]>','</detReg>',
'<detReg  nombre="BACKFLOW"  tipoDato="12"  isPK="0" >','<![CDATA[MA==]]>','</detReg>',
'<detReg  nombre="CATEGORY_CONSOLE"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@CATEGORY_CONSOLE),'</detReg>',
'<detReg  nombre="FECHA_REC"  tipoDato="93"  isPK="0" >',[dbo].[TO_BASE64](@FECHA_REC),'</detReg>',
'<detReg  nombre="TRANSACTION_ID"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@TRANSACTION_ID),'</detReg>',
'<detReg  nombre="EMISOR"  tipoDato="2"  isPK="0" >NQ</detReg>',
'<detReg  nombre="MANUAL"  tipoDato="12"  isPK="0" >','<![CDATA[MA==]]>','</detReg>',
'<detReg  nombre="REG_STATE"  tipoDato="2"  isPK="0" >',[dbo].[TO_BASE64](@REG_STATE),'</detReg>',
'</registro>',
'</tablaAsociada>',
'</objeto_OAT>')

END
GO



CREATE  FUNCTION [dbo].[create_encode_xml_tag](
@EQUIPMENTOBUID varchar(50),
@EQUIPMENT_CLASS varchar(45),
@MANUFACTURER_ID varchar(45),
@OBE_STATUS varchar(45),
@OCTETSTRING varchar(45),
@CONTRACTAUTHENTICATOR varchar(45),
@VEHICLEWEIGHTLIMITS varchar(50),
@VEHICLESPECIFICCHARACTERISTICS varchar(45),
@PAYMENTMEANSBALANCE varchar(19),
@PAYMENTMEANSUNIT varchar(45),
@PAYMENTMEANS varchar(45),
@VEHICLELICENCEPLATENUMBER varchar(50),
@VEHICLECLASS varchar(45),
@VEHICLEDIMENSIONS varchar(45),
@VEHICLEAXLES varchar(45),
@VEHICLEAUTHENTICATOR varchar(45),
@EQUIPMENTSTATUS varchar(2),
@RECEIPTDATA1 varchar(45),
@RECEIPTDATA2 varchar(45),
@PAYMENT_TYPE varchar(45),
@VERIFICADOR varchar(45),
@ID_ACCOUNT varchar(45),
@REG_DATE varchar(45)
)
RETURNS nvarchar(3000)
BEGIN

--Sin relacion con el codigo de la funcion
DECLARE @codigo_cco INT
set @codigo_cco = (select ValorNumerico from [dbo].[configuracion_facil_pass] where Parametro ='map_peaje_cco');

 RETURN  CONCAT('<?xml version="1.0" encoding="UTF-8"?>',
'<objeto_OAT  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd"
  nombreEvento="TAG"  nodoOrigen="CC"  tipoOpera="IU" >',
'<tablaAsociada  nombreTabla="TAG" >',
'<registro>',
'<detReg  nombre="EQUIPMENTOBUID"  tipoDato="12"  isPK="1" >',[dbo].[TO_BASE64](CONCAT(@codigo_cco,@EQUIPMENTOBUID)),'</detReg>',
'<detReg  nombre="EQUIPMENT_CLASS"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@EQUIPMENT_CLASS),']]>','</detReg>',
'<detReg  nombre="MANUFACTURER_ID"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@MANUFACTURER_ID),'</detReg>',
'<detReg  nombre="OBE_STATUS"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@OBE_STATUS),'</detReg>',
'<detReg  nombre="OCTETSTRING"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@OCTETSTRING),'</detReg>',
'<detReg  nombre="CONTRACTAUTHENTICATOR"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@CONTRACTAUTHENTICATOR),']]>','</detReg>',
'<detReg  nombre="VEHICLEWEIGHTLIMITS"  tipoDato="12"  isPK="0" >','<![CDATA[',[dbo].[TO_BASE64](@VEHICLEWEIGHTLIMITS),']]>','</detReg>',
'<detReg  nombre="VEHICLESPECIFICCHARACTERISTICS"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@VEHICLESPECIFICCHARACTERISTICS),'</detReg>',
'<detReg  nombre="PAYMENTMEANSBALANCE"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@PAYMENTMEANSBALANCE),'</detReg>',
'<detReg  nombre="PAYMENTMEANSUNIT"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@PAYMENTMEANSUNIT),'</detReg>',
'<detReg  nombre="PAYMENTMEANS"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@PAYMENTMEANS),'</detReg>',
'<detReg  nombre="VEHICLELICENCEPLATENUMBER"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@VEHICLELICENCEPLATENUMBER),'</detReg>',
'<detReg  nombre="VEHICLECLASS"  tipoDato="2"  isPK="0" >',@VEHICLECLASS,'</detReg>',
'<detReg  nombre="VEHICLEDIMENSIONS"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@VEHICLEDIMENSIONS),'</detReg>',
'<detReg  nombre="VEHICLEAXLES"  tipoDato="2"  isPK="0" >',@VEHICLEAXLES,'</detReg>',
'<detReg  nombre="VEHICLEAUTHENTICATOR"  tipoDato="2"  isPK="0" >',@VEHICLEAUTHENTICATOR,'</detReg>',
'<detReg  nombre="EQUIPMENTSTATUS"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@EQUIPMENTSTATUS),'</detReg>',
'<detReg  nombre="RECEIPTDATA1"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@RECEIPTDATA1),'</detReg>',
'<detReg  nombre="RECEIPTDATA2"  tipoDato="12"  isPK="0" >',[dbo].[TO_BASE64](@RECEIPTDATA2),'</detReg>',
'<detReg  nombre="PAYMENT_TYPE"  tipoDato="2"  isPK="0" >',@PAYMENT_TYPE,'</detReg>',
'<detReg  nombre="ID_ACCOUNT"  tipoDato="2"  isPK="0" >',@ID_ACCOUNT,'</detReg>',
'<detReg  nombre="VERIFICADOR"  tipoDato="2"  isPK="0" >',@VERIFICADOR,'</detReg>',
'</registro>',
'</tablaAsociada>',
'</objeto_OAT>')

END
GO



CREATE FUNCTION [dbo].[DECODE_BASE64]
(
   @InputString VARCHAR(1000)
)
RETURNS VARCHAR(2000)
AS
BEGIN
   DECLARE @OUTLINE VARCHAR(2000)
   SET @OUTLINE = (SELECT 
    CONVERT
    (
        VARCHAR(MAX), 
        CAST('' AS XML).value('xs:base64Binary(sql:column("BASE64_COLUMN"))', 'VARBINARY(MAX)')
    ) AS RESULT
FROM
    (
        SELECT @InputString AS BASE64_COLUMN
    ) A)

	RETURN @OUTLINE
   
END
GO



CREATE FUNCTION [dbo].[TO_BASE64]
(
   @InputString VARCHAR(1000)
)
RETURNS VARCHAR(1000)
AS
BEGIN
   RETURN (
SELECT
CAST(N'' AS XML).value(
                 'xs:base64Binary(xs:hexBinary(sql:column("bin")))'
               , 'VARCHAR(MAX)'
           )
       FROM (
           SELECT CAST(@InputString AS VARBINARY(MAX)) AS bin
       ) AS RetVal
   )
END
GO



CREATE FUNCTION [dbo].[xml_attr](@tagname nvarchar, @tagvalue nvarchar) RETURNS nvarchar
BEGIN

IF (@tagvalue IS NULL) 
RETURN null;

RETURN CONCAT(' ', @tagname ,'="',[dbo].[xml_escape](@tagvalue),'" ');
END
GO


CREATE FUNCTION [dbo].[xml_data_encode](@datavalue nvarchar) RETURNS nvarchar
BEGIN
IF (@datavalue IS NULL) 
RETURN  concat('<![CDATA[','0',']]>');

RETURN concat('<![CDATA[',[dbo].[TO_BASE64](@datavalue),']]>');
END 
GO



CREATE FUNCTION [dbo].[xml_escape]( @tagvalue nvarchar) RETURNS nvarchar
BEGIN

IF (@tagvalue IS NULL) 
   RETURN NULL


RETURN REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@tagvalue,'&','&amp;'),'<','&lt;'),'>','&gt;'),'"','&quot;'),'\','&apos;')
END 
GO




CREATE  FUNCTION [dbo].[xml_tag](
@tagname nvarchar,
@tagvalue nvarchar,
@attrs nvarchar,
@subtags nvarchar
)
RETURNS nvarchar
AS BEGIN 

DECLARE @result nvarchar(2000)

SET @result = CONCAT('<' , @tagname)

IF (@attrs IS NOT NULL) 
   SET @result = CONCAT(@result,' ', @attrs)

IF (@tagvalue IS NULL AND @subtags IS NULL) 
   RETURN CONCAT(@result,'/>')


RETURN CONCAT(@result ,'>',ISNULL([dbo].[xml_escape](@tagvalue),''),ISNULL(@subtags,''),'</',@tagname, '>')

END
GO



-- DBCC TRACEON(460, -1);
-- GO
-- TRUNCATE TABLE transp_oat_recd
-- TRUNCATE TABLE tag

-- -- Volcando datos para la tabla facil_pass.transp_oat_recd: ~420 rows (aproximadamente)
-- /*!40000 ALTER TABLE transp_oat_recd DISABLE KEYS */;

-- INSERT INTO transp_oat_recd ( transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005693', 4, '2018-04-26T14:46:22.223-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTZCQzJGRkVFQ0IwMERD]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2QkMyRkZFRUNCMDBEQw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[QlRTODA0]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">15174</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTZCQzJGRkVFQ0IwMERD', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005694', 4, '2018-04-26T14:52:22.593-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNBQzJGRkVFMjQ5RjZF]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzQUMyRkZFRTI0OUY2RQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[NTcwNjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1dOMDE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNBQzJGRkVFMjQ5RjZF', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005695', 4, '2018-04-26T14:52:22.609-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1Q0MyRkZFRUM0RTM2Mg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1dOMDE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005696', 4, '2018-04-26T14:52:36.747-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1Q0MyRkZFRUM0RTM2Mg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1dOMDE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005697', 4, '2018-04-26T14:52:36.762-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1Q0MyRkZFRUM0RTM2Mg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1dOMDE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTVDQzJGRkVFQzRFMzYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005698', 4, '2018-04-26T14:53:58.859-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTMyQzJGRkVFMjQ4NkVD]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzMkMyRkZFRTI0ODZFQw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[NTcwNjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVNBODc4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTMyQzJGRkVFMjQ4NkVD', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005699', 4, '2018-04-26T14:53:58.859-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1MUMyRkZFRUM0RjA1NA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVNBODc4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005700', 4, '2018-04-26T14:54:11.343-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1MUMyRkZFRUM0RjA1NA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVNBODc4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005701', 4, '2018-04-26T14:54:11.359-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1MUMyRkZFRUM0RjA1NA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVNBODc4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9241</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTUxQzJGRkVFQzRGMDU0', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005702', 4, '2018-04-26T14:55:54.148-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJDQzJGRkVFMjQ0RTAz]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyQ0MyRkZFRTI0NEUwMw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MTMwMDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VUNYMDkz]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9711</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJDQzJGRkVFMjQ0RTAz', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005703', 4, '2018-04-26T14:57:45.034-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTdDQzJGRkVFQ0IwNDdE]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3Q0MyRkZFRUNCMDQ3RA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MTMyMDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[RENMMTA4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16108</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTdDQzJGRkVFQ0IwNDdE', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005704', 4, '2018-04-26T14:59:31.687-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNFQzJGRkVFMjRCOUMw]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzRUMyRkZFRTI0QjlDMA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTI5MjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U0tMNjY3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8901</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNFQzJGRkVFMjRCOUMw', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005705', 4, '2018-04-26T14:59:31.702-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJFQzJGRkVFMjRCOUJD]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyRUMyRkZFRTI0QjlCQw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTI5MjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1lVMjMx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Nw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8901</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJFQzJGRkVFMjRCOUJD', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005706', 4, '2018-04-26T14:59:31.718-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTMzQzJGRkVFMjRCQkND]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzM0MyRkZFRTI0QkJDQw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTI5MjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VEZWOTYx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Nw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8901</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTMzQzJGRkVFMjRCQkND', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005707', 4, '2018-04-26T14:59:31.718-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNDQzJGRkVFMjRCN0I1]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzQ0MyRkZFRTI0QjdCNQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTI5MjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVBTMjU4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Nw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8901</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNDQzJGRkVFMjRCN0I1', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005708', 4, '2018-04-26T14:59:31.734-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM3QzJGRkVFMjQ2QzM0]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzN0MyRkZFRTI0NkMzNA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTI5MjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1hWOTg2]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Nw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8901</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM3QzJGRkVFMjQ2QzM0', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005709', 4, '2018-04-26T15:00:11.377-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTZFQzJGRkVFQ0IxNDcw]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2RUMyRkZFRUNCMTQ3MA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[NzAyNzYwMA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VUZYMTMy]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9618</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTZFQzJGRkVFQ0IxNDcw', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005710', 4, '2018-04-26T15:00:11.393-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MUMyRkZFRUM0RUYwOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VUZYMTMy]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9618</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005711', 4, '2018-04-26T15:00:25.762-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MUMyRkZFRUM0RUYwOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VUZYMTMy]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9618</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005712', 4, '2018-04-26T15:00:25.778-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MUMyRkZFRUM0RUYwOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VUZYMTMy]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">9618</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcxQzJGRkVFQzRFRjA5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005713', 4, '2018-04-26T15:04:19.260-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTYwQzJGRkVFQzRCMDYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2MEMyRkZFRUM0QjA2Mg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTc5MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[Q1ZXNjE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">14728</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTYwQzJGRkVFQzRCMDYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005714', 4, '2018-04-26T15:04:36.608-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTQwQzJGRkVFMjQxODRD]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE0MEMyRkZFRTI0MTg0Qw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[NTYwNDAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[S1VOODkx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8855</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTQwQzJGRkVFMjQxODRD', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005715', 4, '2018-04-26T15:04:36.624-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2N0MyRkZFRUM0RjVGMg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[S1VOODkx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8855</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005716', 4, '2018-04-26T15:04:48.698-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2N0MyRkZFRUM0RjVGMg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[S1VOODkx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8855</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005717', 4, '2018-04-26T15:04:48.698-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2N0MyRkZFRUM0RjVGMg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[S1VOODkx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8855</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTY3QzJGRkVFQzRGNUYy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005718', 4, '2018-04-26T15:22:52.598-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTY4QzJGRkVFQzQ5RjVB]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2OEMyRkZFRUM0OUY1QQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVVSNzg5]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16575</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTY4QzJGRkVFQzQ5RjVB', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005719', 4, '2018-04-26T15:22:57.605-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTYwQzJGRkVFQzQ4RkRC]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE2MEMyRkZFRUM0OEZEQg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[SUtYODA5]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16576</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTYwQzJGRkVFQzQ4RkRC', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005720', 4, '2018-04-26T15:22:58.354-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTUzQzJGRkVFQzRBM0I5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1M0MyRkZFRUM0QTNCOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[UkRYNjQw]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16577</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTUzQzJGRkVFQzRBM0I5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005721', 4, '2018-04-26T15:52:41.996-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTU2QzJGRkVFQzRDMDk5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1NkMyRkZFRUM0QzA5OQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ4MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0ZRMzE4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16503</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTU2QzJGRkVFQzRDMDk5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005722', 4, '2018-04-26T15:52:42.900-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTU1QzJGRkVFQzRCQzg2]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE1NUMyRkZFRUM0QkM4Ng==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ4MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0ZSMTI1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16503</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTU1QzJGRkVFQzRCQzg2', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005723', 4, '2018-04-26T16:04:30.735-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcyQzJGRkVFQ0IyN0Iy]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MkMyRkZFRUNCMjdCMg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MTAyMDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[RUlVOTQ0]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16127</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcyQzJGRkVFQ0IyN0Iy', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005724', 4, '2018-04-26T16:12:13.150-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTMxQzJGRkVFMjQ1RDRG]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzMUMyRkZFRTI0NUQ0Rg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjA1NjAw]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[QkpXMjE1]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8586</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTMxQzJGRkVFMjQ1RDRG', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005725', 4, '2018-04-26T16:15:26.044-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcxQzJGRkVFQ0IyRkEx]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MUMyRkZFRUNCMkZBMQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[ODg4MTEwMA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09PNDA3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcxQzJGRkVFQ0IyRkEx', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005726', 4, '2018-04-26T16:15:26.060-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3N0MyRkZFRUNCMjRGRg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09PNDA3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005727', 4, '2018-04-26T16:15:42.486-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3N0MyRkZFRUNCMjRGRg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09PNDA3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005728', 4, '2018-04-26T16:15:42.502-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3N0MyRkZFRUNCMjRGRg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09PNDA3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTc3QzJGRkVFQ0IyNEZG', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005729', 4, '2018-04-26T16:17:42.918-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTgwQzJGRkVFQ0IyOUI0]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE4MEMyRkZFRUNCMjlCNA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[ODg0NzYwMA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09RMzUz]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTgwQzJGRkVFQ0IyOUI0', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005730', 4, '2018-04-26T16:17:42.934-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTcwQzJGRkVFQ0IyNThC]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3MEMyRkZFRUNCMjU4Qg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U09RMzUz]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Ng==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[MTU=]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">16037</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTcwQzJGRkVFQ0IyNThC', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005731', 4, '2018-04-26T16:17:43.730-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTdGQzJGRkVFQ0IwOEM2]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE3RkMyRkZFRUNCMDhDNg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ5Mjk=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[SEJNNTk3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">15238</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTdGQzJGRkVFQ0IwOEM2', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005732', 4, '2018-04-26T16:17:43.730-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJGQzFGRkVFQTE2RjM4]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyRkMxRkZFRUExNkYzOA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTc1MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VERMMTE2]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8356</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJGQzFGRkVFQTE2RjM4', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005733', 4, '2018-04-26T16:17:43.745-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTQwQzJGRkVFMjQ5RkYx]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDE0MEMyRkZFRTI0OUZGMQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTc1MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0VQNzYz]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8356</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTQwQzJGRkVFMjQ5RkYx', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005734', 4, '2018-04-26T16:17:43.745-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM4QzJGRkVFMjVBQTAz]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzOEMyRkZFRTI1QUEwMw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[LTc1MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1lSNjcx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[Mw==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8356</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM4QzJGRkVFMjVBQTAz', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005735', 4, '2018-04-26T16:17:47.645-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM4QzJGRkVFMjRDMDIw]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzOEMyRkZFRTI0QzAyMA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U0tNNDAz]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM4QzJGRkVFMjRDMDIw', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005736', 4, '2018-04-26T16:17:47.661-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJEQzJGRkVFMjRCRTEw]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyREMyRkZFRTI0QkUxMA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1BQOTQx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJEQzJGRkVFMjRCRTEw', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005737', 4, '2018-04-26T16:17:47.661-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNCQzJGRkVFMjRDMjIz]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzQkMyRkZFRTI0QzIyMw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1BRNTgx]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNCQzJGRkVFMjRDMjIz', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005738', 4, '2018-04-26T16:17:47.661-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM4QzJGRkVFMjRBMDVE]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzOEMyRkZFRTI0QTA1RA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1BSMDIw]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM4QzJGRkVFMjRBMDVE', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005739', 4, '2018-04-26T16:17:47.676-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJCQzJGRkVFMjRBRDU3]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyQkMyRkZFRTI0QUQ1Nw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1FCNDc0]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJCQzJGRkVFMjRBRDU3', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005740', 4, '2018-04-26T16:17:47.692-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNFQzJGRkVFMjRBRjcz]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzRUMyRkZFRTI0QUY3Mw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1ZDMTk4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNFQzJGRkVFMjRBRjcz', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005741', 4, '2018-04-26T16:17:47.692-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM5QzJGRkVFMjRBRjc3]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzOUMyRkZFRTI0QUY3Nw==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1ZDMjY4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM5QzJGRkVFMjRBRjc3', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005742', 4, '2018-04-26T16:17:47.708-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTM0QzJGRkVFMjQ5OUM2]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzNEMyRkZFRTI0OTlDNg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1pPNzA2]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTM0QzJGRkVFMjQ5OUM2', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005743', 4, '2018-04-26T16:17:47.723-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTMwQzJGRkVFMjQ5RTI5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzMEMyRkZFRTI0OUUyOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[U1pPNzA3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTMwQzJGRkVFMjQ5RTI5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005744', 4, '2018-04-26T16:17:47.739-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTMzQzJGRkVFMjQ5QkY5]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzM0MyRkZFRTI0OUJGOQ==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[VVNaOTM5]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[MQ==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTMzQzJGRkVFMjQ5QkY5', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005745', 4, '2018-04-26T16:17:47.770-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNCQzJGRkVFMjQ5QkZE]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzQkMyRkZFRTI0OUJGRA==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0ZVNDk3]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNCQzJGRkVFMjQ5QkZE', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005746', 4, '2018-04-26T16:17:47.786-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTNCQzJGRkVFMjQ4N0RG]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEzQkMyRkZFRTI0ODdERg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0ZVNDk4]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTNCQzJGRkVFMjQ4N0RG', 'IU', '1524840685');
-- INSERT INTO transp_oat_recd (transpOatId, estadoOat, fechaCreacionOat, oatNodoOrigen, objetoOat, ordenTransmisionOat, tipoOat, taskType, taskId, taskEvent, requestId) VALUES( '1005747', 4, '2018-04-26T16:17:47.786-05:00', 'CC', '<?xml version="1.0" encoding="UTF-8"?>\r\n<objeto_OAT xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="objeto_OAT_Integracion.xsd" nombreEvento="TAG" nodoOrigen="CC" tipoOpera="IU"><tablaAsociada nombreTabla="TAG"><registro><detReg nombre="EQUIPMENTOBUID" tipoDato="12" isPK="1"><![CDATA[RTIwMDM0MTIwMTJFQzJGRkVFMjQ4QzVC]]></detReg><detReg nombre="EQUIPMENT_CLASS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="MANUFACTURER_ID" tipoDato="12" isPK="0"><![CDATA[OQ==]]></detReg><detReg nombre="OBE_STATUS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="OCTETSTRING" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="CONTRACTAUTHENTICATOR" tipoDato="2" isPK="0">5</detReg><detReg nombre="VEHICLEWEIGHTLIMITS" tipoDato="12" isPK="0"><![CDATA[MDEyRUMyRkZFRTI0OEM1Qg==]]></detReg><detReg nombre="VEHICLESPECIFICCHARACTERISTICS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANSBALANCE" tipoDato="12" isPK="0"><![CDATA[MjQ2MDA=]]></detReg><detReg nombre="PAYMENTMEANSUNIT" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENTMEANS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLELICENCEPLATENUMBER" tipoDato="12" isPK="0"><![CDATA[V0ZVNDk5]]></detReg><detReg nombre="VEHICLECLASS" tipoDato="12" isPK="0"><![CDATA[Mg==]]></detReg><detReg nombre="VEHICLEDIMENSIONS" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAXLES" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="VEHICLEAUTHENTICATOR" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="EQUIPMENTSTATUS" tipoDato="12" isPK="0"><![CDATA[NA==]]></detReg><detReg nombre="RECEIPTDATA1" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="RECEIPTDATA2" tipoDato="12" isPK="0"><![CDATA[MA==]]></detReg><detReg nombre="PAYMENT_TYPE" tipoDato="2" isPK="0">1</detReg><detReg nombre="ID_ACCOUNT" tipoDato="2" isPK="0">8773</detReg><detReg nombre="VERIFICADOR" tipoDato="2" isPK="0">0</detReg></registro></tablaAsociada></objeto_OAT>\r\n', 1, 83, 'TAG', 'RTIwMDM0MTIwMTJFQzJGRkVFMjQ4QzVC', 'IU', '1524840685');





-- DBCC TRACEON(460, -1);
-- GO
-- TRUNCATE TABLE tb_telepeaje
-- TRUNCATE TABLE transp_oat_sent

-- -- Volcando datos para la tabla facil_pass.tb_telepeaje: ~51 rows (aproximadamente)
-- /*!40000 ALTER TABLE tb_telepeaje DISABLE KEYS */;
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001837', 'E2003412013AFA000E0383E3', 1, 9600, '1567429914000', 'EDX017', '7901', 1, '1567429921000', '1', 1, '1567400400000', '7901000000001837', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001850', 'E2003412016FC2FFEECB32B0', 1, 46900, '1567444548000', 'FNL703', '7901', 5, '1567444563000', '1', 5, '1567400400000', '7901000000001850', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001853', 'E20034120136FA000E03946A', 1, 9600, '1567445886000', 'DGU996', '7901', 1, '1567445896000', '1', 1, '1567400400000', '7901000000001853', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001854', 'E2003412012DFA000E03D0B8', 1, 23400, '1567446206000', 'GET692', '7901', 3, '1567446218000', '1', 3, '1567400400000', '7901000000001854', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001856', 'E20034120132FA000E0393E5', 1, 9600, '1567449275000', 'KFX878', '7901', 1, '1567449284000', '1', 1, '1567400400000', '7901000000001856', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001857', 'E2003412012EFA000E03941C', 1, 9600, '1567450445000', 'KFX850', '7901', 1, '1567450453000', '1', 1, '1567400400000', '7901000000001857', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001861', 'E2003412013AFA000E03C2A9', 1, 9600, '1567456289000', 'FNS782', '7901', 1, '1567456295000', '1', 1, '1567400400000', '7901000000001861', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001862', 'E20034120171C2FFEEC4558F', 1, 46900, '1567457579000', 'SVD332', '7901', 5, '1567457594000', '1', 5, '1567400400000', '7901000000001862', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001863', 'E20034120136FA000E03DE00', 1, 46900, '1567460518000', 'SZT118', '7901', 5, '1567460530000', '1', 5, '1567400400000', '7901000000001863', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001867', 'E20034120177C2FFEEC4694C', 1, 46900, '1567464187000', 'WTO426', '7901', 5, '1567464200000', '1', 5, '1567400400000', '7901000000001867', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001874', 'E2003412013AFA000E0393FD', 1, 9600, '1567473434000', 'KFX715', '7901', 1, '1567473449000', '1', 1, '1567400400000', '7901000000001874', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001875', 'E2003412012DFA000E03947D', 1, 9600, '1567473983000', 'DRZ215', '7901', 1, '1567473990000', '1', 1, '1567400400000', '7901000000001875', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001876', 'E20034120138FA000E03DE20', 1, 47300, '1567475518000', 'SVD372', '7901', 6, '1567475534000', '1', 6, '1567400400000', '7901000000001876', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001877', 'E2003412012AFA000E03DE37', 1, 46900, '1567484960000', 'SVD373', '7901', 5, '1567484974000', '1', 5, '1567400400000', '7901000000001877', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001878', 'E20034120132FA000E0393E5', 1, 9600, '1567488267000', 'KFX878', '7901', 1, '1567488275000', '1', 1, '1567486800000', '7901000000001878', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001879', 'E20034120136FA000E03941D', 1, 9600, '1567488887000', 'KFX659', '7901', 1, '1567488896000', '1', 1, '1567486800000', '7901000000001879', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001880', 'E2003412012DFA000E03C228', 1, 46900, '1567494207000', 'TFP915', '7901', 5, '1567494222000', '1', 5, '1567486800000', '7901000000001880', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001881', 'E2003412017AC2FFEEC49611', 1, 15100, '1567495369000', 'EQY883', '7901', 3, '1567495382000', '1', 2, '1567486800000', '7901000000001881', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001882', 'E2003412017AC2FFEEC49611', 5, 4800, '1567496216000', 'EQY883', '7901', 3, '1567495382000', '1', 2, '1567486800000', '7901000000001881', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001883', 'E2003412016DC2FFEECB42C4', 1, 47300, '1567497023000', 'TFP687', '7901', 6, '1567497043000', '1', 6, '1567486800000', '7901000000001883', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001884', 'E20034120176C2FFEEC45134', 1, 23400, '1567497567000', 'EQO441', '7901', 3, '1567497582000', '1', 3, '1567486800000', '7901000000001884', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001885', 'E2003412016FC2FFEECB4348', 1, 47300, '1567501293000', 'TBZ158', '7901', 6, '1567501303000', '1', 6, '1567486800000', '7901000000001885', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001886', 'E20034120172C2FFEECB4230', 1, 46900, '1567501578000', 'TFP907', '7901', 5, '1567501591000', '1', 5, '1567486800000', '7901000000001886', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001887', 'E20034120177C2FFEECB44E8', 1, 46900, '1567503070000', 'TAT481', '7901', 5, '1567503088000', '1', 5, '1567486800000', '7901000000001887', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001888', 'E2003412012FFA000E038694', 1, 47300, '1567504258000', 'WOT513', '7901', 6, '1567504275000', '1', 6, '1567486800000', '7901000000001888', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001889', 'E20034120131FA000E03E022', 1, 9600, '1567505828000', 'JEZ961', '7901', 1, '1567505834000', '1', 1, '1567486800000', '7901000000001889', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001890', 'E2003412016EC2FFEECB0FAC', 1, 47300, '1567506299000', 'SXO914', '7901', 6, '1567506313000', '1', 6, '1567486800000', '7901000000001890', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001891', 'E20034120139C2FFEE241B49', 1, 47300, '1567506404000', 'TRK423', '7901', 6, '1567506418000', '1', 6, '1567486800000', '7901000000001891', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001892', 'E20034120137FA000E03D71E', 1, 47300, '1567506424000', 'TRK426', '7901', 6, '1567506441000', '1', 6, '1567486800000', '7901000000001892', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001893', 'E2003412017DC2FFEECB4530', 1, 47300, '1567508489000', 'SXO918', '7901', 6, '1567508500000', '1', 6, '1567486800000', '7901000000001893', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001894', 'E2003412012AFA000E03DCE5', 1, 9600, '1567508908000', 'RBU962', '7901', 1, '1567508914000', '1', 1, '1567486800000', '7901000000001894', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001898', 'E2003412012FFA000E0383DC', 1, 9600, '1567515378000', 'JBY894', '7901', 1, '1567515390000', '1', 1, '1567486800000', '7901000000001898', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001899', 'E2003412012FFA000E0383C2', 1, 9600, '1567517822000', 'NBZ212', '7901', 1, '1567517828000', '1', 1, '1567486800000', '7901000000001899', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001900', 'E20034120132FA000E03945D', 1, 9600, '1567518639000', 'HFQ171', '7901', 1, '1567518644000', '1', 1, '1567486800000', '7901000000001900', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001901', 'E20034120134FA000E039444', 1, 9600, '1567519449000', 'KFX651', '7901', 1, '1567519466000', '1', 1, '1567486800000', '7901000000001901', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001904', 'E2003412013BFA000E03954D', 1, 34300, '1567520998000', 'SVQ275', '7901', 4, '1567521009000', '1', 4, '1567486800000', '7901000000001904', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001905', 'E20034120172C2FFEECB4D32', 1, 15100, '1567521397000', 'WFI903', '7901', 3, '1567521406000', '1', 2, '1567486800000', '7901000000001905', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001906', 'E20034120172C2FFEECB4D32', 5, 4800, '1567522228000', 'WFI903', '7901', 3, '1567521406000', '1', 2, '1567486800000', '7901000000001905', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001911', 'E20034120136FA000E03941D', 1, 9600, '1567526980000', 'KFX659', '7901', 1, '1567526989000', '1', 1, '1567486800000', '7901000000001911', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001913', 'E20034120136FA000E03941D', 1, 9600, '1567530720000', 'KFX659', '7901', 1, '1567530730000', '1', 1, '1567486800000', '7901000000001913', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001914', 'E2003412013AFA000E039445', 1, 9600, '1567532808000', 'IUW029', '7901', 1, '1567532817000', '1', 1, '1567486800000', '7901000000001914', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001917', 'E20034120139FA000E0393DC', 1, 9600, '1567535974000', 'WGQ641', '7901', 1, '1567535981000', '1', 1, '1567486800000', '7901000000001917', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001919', 'E2003412017BC2FFEECB48FF', 1, 47300, '1567537908000', 'ICK665', '7901', 6, '1567537922000', '1', 6, '1567486800000', '7901000000001919', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001920', 'E20034120136FA000E03941D', 1, 9600, '1567540573000', 'KFX659', '7901', 1, '1567540581000', '1', 1, '1567486800000', '7901000000001920', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001922', 'E2003412012DFA000E03C228', 1, 46900, '1567546287000', 'TFP915', '7901', 5, '1567546300000', '1', 5, '1567486800000', '7901000000001922', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001923', 'E20034120172C2FFEECB4230', 1, 46900, '1567547170000', 'TFP907', '7901', 5, '1567547183000', '1', 5, '1567486800000', '7901000000001923', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001925', 'E2003412013AFA000E0393FD', 1, 9600, '1567558973000', 'KFX715', '7901', 1, '1567558980000', '1', 1, '1567486800000', '7901000000001925', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001926', 'E20034120136FA000E03DE30', 1, 46900, '1567569004000', 'SVB829', '7901', 5, '1567569016000', '1', 5, '1567486800000', '7901000000001926', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001927', 'E20034120134FA000E0389C7', 1, 9600, '1567569350000', 'MPN864', '7901', 1, '1567569358000', '1', 1, '1567486800000', '7901000000001927', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000001928', 'E20034120134FA000E039444', 1, 9600, '1567574231000', 'KFX651', '7901', 1, '1567574243000', '1', 1, '1567573200000', '7901000000001928', 5, '1', 2);
-- INSERT INTO tb_telepeaje (TELEPEAJE_ID, DEVICE_ID, OPERATION_TYPE, OPERATION_VALUE, TRANSACTION_DATE, PLATE, CODEC, CAT_DAC, DATE_DAC, SENT, CATEGORY_CONSOLE, FECHA_REC, TRANSACTION_ID, EMISOR, MANUAL, REG_STATE ) VALUES('7901000000009999', 'E2003412013AFA000E0383E3', 1, 9600, '1567429914000', 'EDX017', '7901', 1, '1567429921000', '1', 1, '1567400400000', '7901000000001837', 5, '1', 2);

-- /*!40000 ALTER TABLE tb_telepeaje ENABLE KEYS */;

-- /*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
-- /*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

-- GO