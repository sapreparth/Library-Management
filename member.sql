
INSERT
INTO member
  (
    m_id,
    m_name,
    m_pwd,
    m_type,
    m_contact_no,
    m_email,
    branch,
    status
  )
  VALUES
  ( 7,
  'abc',
  'abc123',
    'faculty',
    9904034367,
    'abcd1990@gmail.com',
    'computer',
    'active'
  );


create or replace trigger issuing
BEFORE
insert on member
for each row
begin
  if inserting then
    :NEW.JOIN_DATE := sysdate;
    :NEW.EXPIRY_DATE := add_months(sysdate,48);
  end if;
end;

create or replace trigger issuebook
BEFORE
insert on issue
for each row
begin
  if inserting then
    :NEW.issue_DATE := sysdate;
    :NEW.return_DATE := add_months(sysdate,1);
  end if;
end;

INSERT
INTO issue
  ( BARCODE,
    m_id,
    FINE_AMOUNT,
    FINE_DATE
  )
  VALUES
  ( 305,
    1,
    75,
    to_char(sysdate)
  );