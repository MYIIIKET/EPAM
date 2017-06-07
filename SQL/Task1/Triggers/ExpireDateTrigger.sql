DELIMITER $$
CREATE TRIGGER CheckOnExpireDate 
BEFORE INSERT ON Transaction FOR EACH ROW
BEGIN
	IF (NEW.Date < (select expirydate from transaction left join card on transaction.Card_id=Card.card_id where new.card_id=card.card_id)) THEN
		SIGNAL sqlstate '45001' set message_text = 'Expiry date passed';
	END IF;
END;