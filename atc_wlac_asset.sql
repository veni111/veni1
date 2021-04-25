   CREATE OR REPLACE TRIGGER   MGR_HERO.atc_wlac_asset_biu_trg
              BEFORE INSERT OR UPDATE ON MGR_HERO.atc_wlac
                 FOR EACH ROW
   BEGIN
      IF UPDATING THEN
         
			:NEW.date_changed := sysdate;
			:NEW.user_changed := nvl(v('APP_USER'),user);

      END IF;



      IF INSERTING THEN
       
			:NEW.date_created := sysdate;
			:NEW.user_created := nvl(v('APP_USER'),user);
			:NEW.date_changed := sysdate;
			:NEW.user_changed := nvl(v('APP_USER'),user);

      END IF;
   END;
/
