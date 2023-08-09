USE ecommerce;
DESC users_data;
SELECT * FROM users_data LIMIT 100;
SELECT COUNT(DISTINCT country) COUNTRY,COUNT(DISTINCT language) LANGUAGE FROM users_data;
SELECT Gender,SUM(socialNbFollowers) FOLLOWERS FROM users_data GROUP BY Gender; 
SELECT 'Profile Picture in their Profile'USERS,COUNT(*) TOTAL_USERS FROM users_data WHERE hasProfilePicture = 'TRUE'
UNION 
SELECT 'Application for Ecommerce platform',COUNT(*) FROM users_data WHERE hasAnyApp = 'TRUE'
UNION
SELECT 'Android app',COUNT(*) FROM users_data WHERE hasAndroidApp = 'TRUE'
UNION
SELECT 'ios app',COUNT(*) FROM users_data WHERE hasIosApp = 'TRUE';
SELECT Count(productsBought)Num_of_Buyers,Country FROM users_data WHERE productsBought <> 0 GROUP BY Country ORDER BY  count(productsBought) desc;
SELECT count(productsSold)Num_of_Sold,Country FROM users_data WHERE productsSold <> 0 GROUP BY Country ORDER BY  count(productsSold) asc;
SELECT max(productsPassRate),country FROM users_data GROUP BY country limit 10;
SELECT 'F'GENDER,'Product wish'Product, SUM(productsWished) Sum FROM users_data WHERE gender ='F'
UNION 
SELECT 'F','Product Like' ,SUM(socialProductsLiked) FROM users_data WHERE gender ='F';
SELECT language,COUNT(identifierHash) Users FROM  users_data GROUP BY language;
SELECT 'F'GENDER,'Product wish'Product,SUM(productsWished) Sum FROM users_data WHERE gender ='F'  UNION 
SELECT 'F ','Product Like',SUM(socialProductsLiked) FROM users_data WHERE gender ='F';
SELECT country,SUM(productsBought) FROM users_data GROUP BY country ORDER BY SUM(productsBought) DESC;
SELECT country,productsSold FROM users_data WHERE productsSold = 0 LIMIT 10;
SELECT identifierHash,daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin ASC LIMIT 110;
SELECT identifierHash, gender,COUNT(daysSinceLastLogin) FROM users_data WHERE gender ='F' AND daysSinceLastLogin >=100 GROUP BY gender ;
SELECT country,COUNT(*) FROM users_data WHERE gender ='F' GROUP BY country ORDER BY country;
SELECT country,COUNT(*) FROM users_data WHERE gender ='M' GROUP BY country ORDER BY country;
SELECT country,AVG(productsSold),AVG(productsBought) FROM users_data WHERE gender ='M' GROUP BY country;   



















