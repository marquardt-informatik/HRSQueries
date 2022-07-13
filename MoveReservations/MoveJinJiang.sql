BEGIN TRANSACTION

INSERT INTO [DynNavHRS].[dbo].[HRS-CN$Agency Header]([Reservation No_],[Client No_],[Hotel No_],[Reservation Activator],[Reservation State],[Reservation Date],[Reservation Time],[Reservation Source],[Arrival Date],[Departure Date],[Client Company],[Client Guestname 1],[Client Guestname 2],[Commission Status],[Description],[MuseID],[Currency Code],[Currency Factor],[Chain ID],[Brand ID],[Handbooking],[timestamp Source],[IFC Version],[Total Rate],[Total Rate incl_],[Discount %],[MusePassword],[ProcessNumber],[Job No_],[Customer No_],[Booking Status],[Inserted by User],[Inserted at],[Modified by User],[Modified at],[Insert Header],[Error Code],[Contract Code],[Contract Group Code],[Agency Business Rules Code],[Loyality Rewards Account No_],[Parent Reservation No_],[Confirmed Reservation No_],[Quality by User],[Quality at],[Company No_],[Ranking Booster],[Payment Type],[Corporate Rate Discount],[Booking Comment],[Multisourced],[Segment],[TAF Business Rules Code],[TAF Contract Code])
SELECT [Reservation No_],[Client No_],[Hotel No_],[Reservation Activator],[Reservation State],[Reservation Date],[Reservation Time],[Reservation Source],[Arrival Date],[Departure Date],[Client Company],[Client Guestname 1],[Client Guestname 2],[Commission Status],[Description],[MuseID],[Currency Code],[Currency Factor],[Chain ID],[Brand ID],[Handbooking],[timestamp Source],[IFC Version],[Total Rate],[Total Rate incl_],[Discount %],[MusePassword],[ProcessNumber],[Job No_],[Customer No_],[Booking Status],[Inserted by User],[Inserted at],[Modified by User],[Modified at],[Insert Header],[Error Code],[Contract Code],[Contract Group Code],[Agency Business Rules Code],[Loyality Rewards Account No_],[Parent Reservation No_],[Confirmed Reservation No_],[Quality by User],[Quality at],[Company No_],[Ranking Booster],[Payment Type],[Corporate Rate Discount],[Booking Comment],[Multisourced],[Segment],[TAF Business Rules Code],[TAF Contract Code]
  FROM [DynNavHRS].[dbo].[HRS$Agency Header]
 WHERE [MuseID] = 'JINJIANG'
 
INSERT INTO [DynNavHRS].[dbo].[HRS-CN$Agency Line]([Reservation No_],[Position No_],[Reservation Status],[Reservation Date from],[Reservation Date to],[Number of Rooms],[Room Type],[Rate Description],[Room Price],[Breakfast Type],[Breakfast Price],[Commission Type],[Commission Rate],[Commission Fix],[Rate Type],[Rate Key],[Currency Code],[Currency Faktor],[Room Number],[Activity Code],[Number of Person],[Hotel No_],[Commission Tax Type],[timestamp Source],[Price Type],[Process Number],[Inserted by User],[Inserted at],[Modified by User],[Modified at],[Number of Nights],[Commission Base Amount],[Commission Amount],[Commission Base Amount (LCY)],[Commission Amount (LCY)],[Foreign Tax %],[Foreign Tax Amount],[Line Amount],[Line Amount (LCY)],[Foreign Tax Base Amount],[Hotel sales incl_ VAT],[Calculated with Contract Code],[Calculated with Function ID],[Calculated with Function Desc_],[Loyality Rewards Account No_],[Chain],[Brand],[Client No_],[Country_Region Code],[Ranking Booster],[Payment Type],[Corporate Rate Discount],[Net Room Price],[Net Breakfast Price],[Foreign Tax % Roomnight],[Foreign Tax % Breakf],[Agency Business Rules Code],[Deduction Type],[Deductible Amount],[Reason For Change],[TAF Business Rules Code],[Breakfast Approval Status],[Rate Plan Code],[Agency Line Amount],[Agency Line Amount (LCY)],[TAF Line Amount],[TAF Line Amount (LCY)],[TAF Type],[TAF Rate],[TAF Fix],[TAF Contract Code],[TAF Function ID],[TAF Function Desc_])
SELECT [Reservation No_],[Position No_],[Reservation Status],[Reservation Date from],[Reservation Date to],[Number of Rooms],[Room Type],[Rate Description],[Room Price],[Breakfast Type],[Breakfast Price],[Commission Type],[Commission Rate],[Commission Fix],[Rate Type],[Rate Key],[Currency Code],[Currency Faktor],[Room Number],[Activity Code],[Number of Person],[Hotel No_],[Commission Tax Type],[timestamp Source],[Price Type],[Process Number],[Inserted by User],[Inserted at],[Modified by User],[Modified at],[Number of Nights],[Commission Base Amount],[Commission Amount],[Commission Base Amount (LCY)],[Commission Amount (LCY)],[Foreign Tax %],[Foreign Tax Amount],[Line Amount],[Line Amount (LCY)],[Foreign Tax Base Amount],[Hotel sales incl_ VAT],[Calculated with Contract Code],[Calculated with Function ID],[Calculated with Function Desc_],[Loyality Rewards Account No_],[Chain],[Brand],[Client No_],[Country_Region Code],[Ranking Booster],[Payment Type],[Corporate Rate Discount],[Net Room Price],[Net Breakfast Price],[Foreign Tax % Roomnight],[Foreign Tax % Breakf],[Agency Business Rules Code],[Deduction Type],[Deductible Amount],[Reason For Change],[TAF Business Rules Code],[Breakfast Approval Status],[Rate Plan Code],[Agency Line Amount],[Agency Line Amount (LCY)],[TAF Line Amount],[TAF Line Amount (LCY)],[TAF Type],[TAF Rate],[TAF Fix],[TAF Contract Code],[TAF Function ID],[TAF Function Desc_]
  FROM [DynNavHRS].[dbo].[HRS$Agency Line]
 WHERE [Reservation No_] IN (SELECT [Reservation No_] FROM [HRS$Agency Header] WHERE [MuseID] = 'JINJIANG')
 
DELETE
  FROM [DynNavHRS].[dbo].[HRS$Agency Line]
 WHERE [Reservation No_] IN (SELECT [Reservation No_] FROM [HRS$Agency Header] WHERE [MuseID] = 'JINJIANG') 
  
DELETE
  FROM [DynNavHRS].[dbo].[HRS$Agency Header]
 WHERE [MuseID] = 'JINJIANG' 

DELETE 
  FROM [HRS$Agency Display Line]
 WHERE [Display Case No_] IN (SELECT [Case No_] FROM [HRS$Agency Display Header] WITH (NOLOCK) WHERE [MuseID] = 'JINJIANG'  AND [Status] = 0 AND [Posted Invoice No_]='')
 
DELETE
  FROM [HRS$Agency Display Header]
 WHERE [MuseID] = 'JINJIANG'  
   AND [Status] = 0 
   AND [Posted Invoice No_]='' 
 
COMMIT
--ROLLBACK