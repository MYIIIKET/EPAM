DELIMITER $$
CREATE TRIGGER CheckOnAmount 
BEFORE INSERT ON Transaction FOR EACH ROW
BEGIN
	IF (NEW.Amount > (select card_id,expirydate from card inner join account on card.Account_id=account.Account_id where New.card_id=Card_id)) THEN
		SIGNAL sqlstate '45002' set message_text = 'Not enough money';
	END IF;
END;
