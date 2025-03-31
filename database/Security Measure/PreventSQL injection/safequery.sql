--Unsafe Query (Vulnerable to SQL Injection)
EXECUTE IMMEDIATE 'SELECT * FROM Users WHERE Login = ''' || p_Login || ''' AND Pass = ''' || p_Pass || '''';


--Safe Query (Using Bind Variables)
DECLARE v_count INT;
BEGIN
    SELECT COUNT(*) INTO v_count FROM Users WHERE Login = :p_Login AND Pass = :p_Pass;
END;
