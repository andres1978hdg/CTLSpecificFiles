-- loader.ctl
OPTIONS (SKIP=1)  -- Skip the header row
LOAD DATA
INFILE 'supplier.csv'
INTO TABLE supplier
FIELDS TERMINATED BY '|'
OPTIONALLY ENCLOSED BY '"'
TRAILING NULLCOLS
(
    entitypk CHAR,
    instancepk CHAR,
    branchpk CHAR,
    supplierpk CHAR,
    suppliernationalid CHAR,
    country CHAR,
    taxregimefk CHAR,
    taxcertificatefk CHAR,
    bookinglegalentity CHAR,
    lastevent CHAR,
    processtimestamp DATE "YYYY-MM-DD",
    versionid INTEGER EXTERNAL,
    status CHAR,
    data_date_part DATE "YYYY-MM-DD",
    sourcesystemid CHAR,
    bookingoperationalentity CHAR,
    datatimestamppart TIMESTAMP "YYYY-MM-DD HH24:MI:SS.FF"
)
