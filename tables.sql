CREATE TABLE management (
    l_id         int            NOT NULL,
    l_name       VARCHAR2 (50)  NOT NULL,
    l_pwd        VARCHAR2 (20)  NOT NULL,
    l_contact_no VARCHAR2 (13)  NOT NULL,
    l_address    VARCHAR2 (100) NOT NULL,
    l_email      VARCHAR2 (50)  NOT NULL,
    PRIMARY KEY (l_id)
);

CREATE TABLE account (
    barcode NUMBER(10) NOT NULL,
    m_id    NUMBER(10) NOT NULL,
    l_id    NUMBER(10) NOT NULL,
    PRIMARY KEY (barcode, m_id, l_id),
    FOREIGN KEY (l_id) REFERENCES management(l_id),
    FOREIGN KEY (m_id) REFERENCES member(m_id),
    FOREIGN KEY (barcode) REFERENCES book(barcode)
);

CREATE TABLE author (
    author_id   NUMBER(10)          NOT NULL,
    author_name VARCHAR2 (50) NOT NULL,
    PRIMARY KEY (author_id)
);

CREATE TABLE book (
    barcode      NUMBER(10)          NOT NULL,
    subject      VARCHAR2 (50) NOT NULL,
    book_name    VARCHAR2 (50) NOT NULL,
    book_edition NUMBER(10)          NOT NULL,
    no_of_copy   NUMBER(10)          NOT NULL,
    author_id    NUMBER(10)          NOT NULL,
    PRIMARY KEY (barcode),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

CREATE TABLE member (
    m_id         NUMBER(10)           NOT NULL,
    m_name       VARCHAR2 (50) NOT NULL,
    m_pwd        VARCHAR2 (20) NOT NULL,
    m_type       VARCHAR2 (50) NOT NULL,
    m_contact_no VARCHAR2 (13) NOT NULL,
    m_email      VARCHAR2 (50) NOT NULL,
    branch       VARCHAR2 (30) NOT NULL,
    join_date    DATE         NOT NULL,
    expiry_date  DATE         NOT NULL,
    status       VARCHAR2 (10) NOT NULL,
    fee_amount   NUMBER(10)          NULL,
    fee_date     DATE         NULL,
    PRIMARY KEY (m_id)
);


CREATE TABLE issue (
    barcode     NUMBER(10)  NOT NULL,
    m_id        NUMBER(10)  NOT NULL,
    issue_date  DATE NOT NULL,
    return_date DATE NOT NULL,
    fine_amount NUMBER(10)  NULL,
    fine_date   DATE NULL,
    PRIMARY KEY (barcode, m_id),
    FOREIGN KEY (m_id) REFERENCES member(m_id),
    FOREIGN KEY (barcode) REFERENCES book(barcode)
);

