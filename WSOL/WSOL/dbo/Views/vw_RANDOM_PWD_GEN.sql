-- create view for function call
CREATE VIEW vw_RANDOM_PWD_GEN
AS
SELECT randval = CRYPT_GEN_RANDOM (8)