-- This is an empty migration.

CREATE EVENT END_AUCTIONS
ON SCHEDULE EVERY 1 MINUTE 
STARTS (TIMESTAMP(CURRENT_DATE))
DO
UPDATE Auction SET status = 'ENDED' WHERE endsAt <= NOW();