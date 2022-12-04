INSERT INTO 'client_marketing_stage' ('id', 'name') VALUES (1, 'Prospect');
INSERT INTO 'client_marketing_stage' ('id', 'name') VALUES (2, 'Client');
INSERT INTO 'client_marketing_stage' ('id', 'name') VALUES (3, 'Partner');

INSERT INTO 'language' ('id', 'name') VALUES (1, 'English');
INSERT INTO 'language' ('id', 'name') VALUES (2, 'French');
INSERT INTO 'language' ('id', 'name') VALUES (3, 'German');
INSERT INTO 'language' ('id', 'name') VALUES (4, 'Spanish');

INSERT INTO 'country' ('id', 'name', 'language_id') VALUES (1, 'United States', 1);
INSERT INTO 'country' ('id', 'name', 'language_id') VALUES (2, 'France', 2);
INSERT INTO 'country' ('id', 'name', 'language_id') VALUES (3, 'Germany', 3);
INSERT INTO 'country' ('id', 'name', 'language_id') VALUES (4, 'Spain', 4);

INSERT INTO 'event_type' ('id', 'name') VALUES (1, 'Phone Call');
INSERT INTO 'event_type' ('id', 'name') VALUES (2, 'Meeting');
INSERT INTO 'event_type' ('id', 'name') VALUES (3, 'Email');

INSERT INTO 'software' ('id', 'name', 'isonmarket') VALUES (1, 'Oracle', 'Y');
INSERT INTO 'software' ('id', 'name', 'isonmarket') VALUES (2, 'Microsoft', 'Y');
INSERT INTO 'software' ('id', 'name', 'isonmarket') VALUES (3, 'SAP', 'Y');
INSERT INTO 'software' ('id', 'name', 'isonmarket') VALUES (4, 'IBM', 'Y');

INSERT INTO 'tags' ('id', 'name') VALUES (1, 'Oracle');
INSERT INTO 'tags' ('id', 'name') VALUES (2, 'Microsoft');
INSERT INTO 'tags' ('id', 'name') VALUES (3, 'SAP');
INSERT INTO 'tags' ('id', 'name') VALUES (4, 'IBM');

INSERT INTO 'client_tags' ('client_id', 'tags_id') VALUES (1, 1);
INSERT INTO 'client_tags' ('client_id', 'tags_id') VALUES (2, 2);
INSERT INTO 'client_tags' ('client_id', 'tags_id') VALUES (3, 3);
INSERT INTO 'client_tags' ('client_id', 'tags_id') VALUES (4, 4);

INSERT INTO 'user' ('id', 'name', 'login_id', 'pass', 'department') VALUES (1, 'John', 'john', 'john', 'Sales');
INSERT INTO 'user' ('id', 'name', 'login_id', 'pass', 'department') VALUES (2, 'Mary', 'mary', 'mary', 'Marketing');
INSERT INTO 'user' ('id', 'name', 'login_id', 'pass', 'department') VALUES (3, 'Peter', 'peter', 'peter', 'IT');
INSERT INTO 'user' ('id', 'name', 'login_id', 'pass', 'department') VALUES (4, 'Paul', 'paul', 'paul', 'IT');


INSERT INTO 'client' ('id', 'name', 'address', 'client_marketing_stage_id', 'country_id', 'language_id') VALUES (1, 'Oracle', 'Oracle address', 1, 1, 1);
INSERT INTO 'client' ('id', 'name', 'address', 'client_marketing_stage_id', 'country_id', 'language_id') VALUES (2, 'Microsoft', 'Microsoft address', 2, 2, 2);
INSERT INTO 'client' ('id', 'name', 'address', 'client_marketing_stage_id', 'country_id', 'language_id') VALUES (3, 'SAP', 'SAP address', 3, 3, 3);
INSERT INTO 'client' ('id', 'name', 'address', 'client_marketing_stage_id', 'country_id', 'language_id') VALUES (4, 'IBM', 'IBM address', 1, 4, 4);


INSERT INTO 'contact' ('id', 'name', 'role', 'client_id', 'language_id') VALUES (1, 'John', 'CEO', 1, 1);
INSERT INTO 'contact' ('id', 'name', 'role', 'client_id', 'language_id') VALUES (2, 'Mary', 'CEO', 2, 2);
INSERT INTO 'contact' ('id', 'name', 'role', 'client_id', 'language_id') VALUES (3, 'Peter', 'CEO', 3, 3);
INSERT INTO 'contact' ('id', 'name', 'role', 'client_id', 'language_id') VALUES (4, 'Paul', 'CEO', 4, 4);

INSERT INTO 'events' ('id', 'description', 'start', 'end', 'contact_id', 'user_id', 'event_type_id') VALUES (1, 'Phone Call', '2015-01-01', '2015-01-01', 1, 1, 1);
INSERT INTO 'events' ('id', 'description', 'start', 'end', 'contact_id', 'user_id', 'event_type_id') VALUES (2, 'Meeting', '2015-01-01', '2015-01-01', 2, 2, 2);
INSERT INTO 'events' ('id', 'description', 'start', 'end', 'contact_id', 'user_id', 'event_type_id') VALUES (3, 'Email', '2015-01-01', '2015-01-01', 3, 3, 3);
INSERT INTO 'events' ('id', 'description', 'start', 'end', 'contact_id', 'user_id', 'event_type_id') VALUES (4, 'Phone Call', '2015-01-01', '2015-01-01', 4, 4, 1);

INSERT INTO 'licence_folder' ('software_id', 'id', 'billing_quarter', 'billing_frequency', 'client_id') VALUES (1, 1, 'Q1', 'Monthly', 1);
INSERT INTO 'licence_folder' ('software_id', 'id', 'billing_quarter', 'billing_frequency', 'client_id') VALUES (2, 2, 'Q2', 'Monthly', 2);
INSERT INTO 'licence_folder' ('software_id', 'id', 'billing_quarter', 'billing_frequency', 'client_id') VALUES (3, 3, 'Q3', 'Monthly', 3);
INSERT INTO 'licence_folder' ('software_id', 'id', 'billing_quarter', 'billing_frequency', 'client_id') VALUES (4, 4, 'Q4', 'Monthly', 4);

INSERT INTO 'licence_bill' ('licence_folder_id', 'id', 'start', 'end', 'billing_amount', 'previous_billing_ammount', 'ispaid', 'currency') VALUES (1, 1, '2022-03-01', '2022-05-01', 100, 100, 'Y', 'USD');
INSERT INTO 'licence_bill' ('licence_folder_id', 'id', 'start', 'end', 'billing_amount', 'previous_billing_ammount', 'ispaid', 'currency') VALUES (2, 2, '2017-05-01', '2020-01-01', 200, 200, 'Y', 'USD');
INSERT INTO 'licence_bill' ('licence_folder_id', 'id', 'start', 'end', 'billing_amount', 'previous_billing_ammount', 'ispaid', 'currency') VALUES (3, 3, '2010-09-01', '2012-01-01', 300, 300, 'Y', 'USD');
INSERT INTO 'licence_bill' ('licence_folder_id', 'id', 'start', 'end', 'billing_amount', 'previous_billing_ammount', 'ispaid', 'currency') VALUES (4, 4, '2015-10-01', '2016-01-01', 400, 400, 'Y', 'USD');

INSERT INTO 'billing_detail' ('id', 'ammount', 'description', 'licence_bill_id') VALUES (1, 100, 'Oracle', 1);
INSERT INTO 'billing_detail' ('id', 'ammount', 'description', 'licence_bill_id') VALUES (2, 200, 'Microsoft', 2);
INSERT INTO 'billing_detail' ('id', 'ammount', 'description', 'licence_bill_id') VALUES (3, 300, 'SAP', 3);
INSERT INTO 'billing_detail' ('id', 'ammount', 'description', 'licence_bill_id') VALUES (4, 400, 'IBM', 4);