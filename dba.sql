set current schema = 'XXXX';

drop function decimal_replace;
CREATE function decimal_replace (INP_DECIMAL decimal(15, 2))
	  RETURNS varchar(50)                                    
      SPECIFIC decimal_replace
      NOT DETERMINISTIC
      NO EXTERNAL ACTION
      ALLOW PARALLEL
      RETURNS NULL ON NULL INPUT          
RETURN
(
	select varchar9(decimal(INP_DECIMAL, 15, 2), ',')
	from sysibm.sysdummyu	
)
;

-- testing 
select decimal_replace(0.00) from SYSIBM.SYSDUMMY1;
