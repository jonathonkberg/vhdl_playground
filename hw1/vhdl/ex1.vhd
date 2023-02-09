ENTITY full_adder IS
  PORT(A,B,CIN:IN BIT; COUT,SUM:OUT BIT);
END full_adder;

ARCHITECTURE adder_flow OF full_adder IS
BEGIN
  
  COUT <= '0' WHEN A='0' AND B='0' AND CIN='0' ELSE
          '0' WHEN A='0' AND B='0' AND CIN='1' ELSE
          '0' WHEN A='0' AND B='1' AND CIN='0' ELSE
          '1' WHEN A='0' AND B='1' AND CIN='1' ELSE
          '0' WHEN A='1' AND B='0' AND CIN='0' ELSE
          '1' WHEN A='1' AND B='0' AND CIN='1' ELSE
          '1' WHEN A='1' AND B='1' AND CIN='0' ELSE
          '1' WHEN A='1' AND B='1' AND CIN='1' ELSE
          '0';
          
   SUM <= '0' WHEN A='0' AND B='0' AND CIN='0' ELSE
          '1' WHEN A='0' AND B='0' AND CIN='1' ELSE
          '1' WHEN A='0' AND B='1' AND CIN='0' ELSE
          '0' WHEN A='0' AND B='1' AND CIN='1' ELSE
          '1' WHEN A='1' AND B='0' AND CIN='0' ELSE
          '0' WHEN A='1' AND B='0' AND CIN='1' ELSE
          '0' WHEN A='1' AND B='1' AND CIN='0' ELSE
          '1' WHEN A='1' AND B='1' AND CIN='1' ELSE
          '0';
          
END adder_flow;


