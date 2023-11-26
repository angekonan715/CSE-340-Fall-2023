-- Data for table 'account'

INSERT INTO public.account (
    account_firstname,
    account_lastname,
    account_email,
    account_password
)
VALUES   (
    'Tony',
    'Stark',
    'tony@starkent.com',
    'Iam1r0nM@n'
    );


-- Update account_type from the account table
UPDATE public.account SET account_type = 'Admin'
WHERE account_firstname = 'Tony';


-- Delete the Tony Stark record from the database
DELETE FROM public.account
WHERE account_firstname = 'Tony';


-- Modify the "GM Hummer" record to read "a huge interior" rather than "small interiors" using a single query
UPDATE 
   public.inventory
SET 
   inv_description = REPLACE(inv_description,'small interiors','a huge interior')
WHERE 
   inv_make = 'GM' AND inv_model = 'Hummer';


/*** Use an inner join to select the make and model fields from the inventory table and the classification name field from the classification table for inventory items that belong to the "Sport" category ***/

select inv.inv_make, inv.inv_model, clas.classification_name
from public.inventory inv
inner join public.classification clas
on inv.classification_id = clas.classification_id
where clas.classification_name = 'Sport';

-- Update all records in the inventory table to add "/vehicles" to the middle of the file path in the inv_image and inv_thumbnail columns 
UPDATE public.inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');


