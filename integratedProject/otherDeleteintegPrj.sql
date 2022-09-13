delete from orderOfMeal
where dateOfOrder between to_date('01-08-2016','dd-mm-yyyy') and to_date('15-08-2016','dd-mm-yyyy');
commit;

delete from meal
where descriptionOfMeal in (select descriptionOfMeal
                            from meal
                            where descriptionOfMeal in ('tasty','delicious');
commit;
