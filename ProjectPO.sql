#Youtube Top Players


#1a. Top continent in the YouTube space; Uploads, Views, Earnings and Subs
# SELECT
#
#
#
#
#         CASE
#     WHEN Country IN ('Algeria', 'Angola', 'Benin', 'Botswana', 'Burkina Faso', 'Burundi', 'Cabo Verde', 'Cameroon', 'Central African',
#                     'Chad', 'Comoros', 'Congo, Dem. Rep', 'Congo, Rep', 'Cote d\'Ivo ire', 'Djibouti', 'Egypt', 'Equatorial Guinea', 'Eritrea',
#                     'Eswatini (formerly Swaziland)', 'Ethiopia', 'Gabon', 'Gambia', 'Ghana', 'Guinea', 'Guinea-Bissau', 'Kenya', 'Lesotho',
#                     'Liberia', 'Libya', 'Madagascar', 'Malawi', 'Mali', 'Mauritania', 'Mauritius', 'Morocco', 'Mozambique', 'Namibia',
#                     'Niger', 'Nigeria', 'Rwanda', 'Sao Tome and Principe', 'Senegal', 'Seychelles', 'Sierra Leone', 'Somalia', 'South Africa',
#                     'South Sudan', 'Sudan', 'Tanzania', 'Togo', 'Tunisia', 'Uganda', 'Zambia', 'Zimbabwe') THEN 'Africa'
#
#     WHEN Country IN ('Albania', 'Andorra', 'Armenia', 'Austria', 'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina',
#                     'Bulgaria', 'Croatia', 'Cyprus', 'Czechia', 'Denmark', 'Estonia', 'Finland', 'France', 'Georgia', 'Germany',
#                     'Greece', 'Hungary', 'Iceland', 'Ireland', 'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
#                     'Luxembourg', 'Malta', 'Moldova', 'Monaco', 'Montenegro', 'Netherlands', 'Macedonia, FYR', 'Norway', 'Poland', 'Portugal',
#                     'Romania', 'Russia', 'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 'Switzerland', 'Turkey',
#                     'Ukraine', 'United Kingdom', 'Vatican City') THEN 'Europe'
#
#     WHEN Country IN ('Afghanistan', 'Armenia', 'Azerbaijan', 'Bahrain', 'Bangladesh', 'Bhutan', 'Brunei', 'Cambodia', 'China', 'Cyprus',
#                     'Georgia', 'India', 'Indonesia', 'Iran', 'Iraq', 'Israel', 'Japan', 'Jordan', 'Kazakhstan', 'Kuwait', 'Kyrgyzstan', 'Laos',
#                     'Lebanon', 'Malaysia', 'Maldives', 'Mongolia', 'Myanmar', 'Nepal', 'North Korea', 'Oman', 'Pakistan', 'Palestine', 'Philippines',
#                     'Qatar', 'Russia', 'Saudi Arabia', 'Singapore', 'South Korea', 'Sri Lanka', 'Syria', 'Taiwan', 'Tajikistan', 'Thailand',
#                     'Timor-Leste', 'Turkey', 'Turkmenistan', 'United Arab Emirates', 'Uzbekistan', 'Vietnam', 'Yemen') THEN 'Asia'
#
#     WHEN Country IN ('Antigua and Barbuda', 'Bahamas', 'Barbados', 'Belize', 'Canada', 'Costa Rica', 'Cuba', 'Dominica',
#                     'Dominican Republic', 'El Salvador', 'Grenada', 'Guatemala', 'Haiti', 'Honduras', 'Jamaica', 'Mexico',
#                     'Nicaragua', 'Panama', 'Saint Vincent and the Grenadines', 'United States') THEN 'North_America'
#
#     WHEN Country IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Guyana', 'Paraguay', 'Peru', 'Suriname',
#                     'Uruguay', 'Venezuela') THEN 'South_America'
#
#     WHEN Country IN ('Australia', 'Fiji', 'Kiribati', 'Marshall Islands', 'Micronesia', 'Nauru', 'New Zealand', 'Palau',
#                     'Papua New Guinea', 'Samoa', 'Solomon Islands', 'Tonga', 'Tuvalu', 'Vanuatu') THEN 'Australia_and_Oceania'
# END AS continents,
#         sum(Subscribers) as total_subs,
#         sum(Upload) as total_uploads,
#         sum(`Video Views`) as total_views,
#         round(sum(`Highest Yearly Earnings`)) as total_earnings,
#         count(Youtubers) as num_of_youtubers
#
#
# FROM youtubedata5
# GROUP BY continents
# ORDER BY 5 desc
#
# ;
#
#

#b. pct of pay per continent

# With pct_pay as (
# SELECT
#
#
#
#
#         CASE
#     WHEN Country IN ('Algeria', 'Angola', 'Benin', 'Botswana', 'Burkina Faso', 'Burundi', 'Cabo Verde', 'Cameroon', 'Central African',
#                     'Chad', 'Comoros', 'Congo, Dem. Rep', 'Congo, Rep', 'Cote d\'Ivo ire', 'Djibouti', 'Egypt', 'Equatorial Guinea', 'Eritrea',
#                     'Eswatini (formerly Swaziland)', 'Ethiopia', 'Gabon', 'Gambia', 'Ghana', 'Guinea', 'Guinea-Bissau', 'Kenya', 'Lesotho',
#                     'Liberia', 'Libya', 'Madagascar', 'Malawi', 'Mali', 'Mauritania', 'Mauritius', 'Morocco', 'Mozambique', 'Namibia',
#                     'Niger', 'Nigeria', 'Rwanda', 'Sao Tome and Principe', 'Senegal', 'Seychelles', 'Sierra Leone', 'Somalia', 'South Africa',
#                     'South Sudan', 'Sudan', 'Tanzania', 'Togo', 'Tunisia', 'Uganda', 'Zambia', 'Zimbabwe') THEN 'Africa'
#
#     WHEN Country IN ('Albania', 'Andorra', 'Armenia', 'Austria', 'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina',
#                     'Bulgaria', 'Croatia', 'Cyprus', 'Czechia', 'Denmark', 'Estonia', 'Finland', 'France', 'Georgia', 'Germany',
#                     'Greece', 'Hungary', 'Iceland', 'Ireland', 'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
#                     'Luxembourg', 'Malta', 'Moldova', 'Monaco', 'Montenegro', 'Netherlands', 'Macedonia, FYR', 'Norway', 'Poland', 'Portugal',
#                     'Romania', 'Russia', 'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 'Switzerland', 'Turkey',
#                     'Ukraine', 'United Kingdom', 'Vatican City') THEN 'Europe'
#
#     WHEN Country IN ('Afghanistan', 'Armenia', 'Azerbaijan', 'Bahrain', 'Bangladesh', 'Bhutan', 'Brunei', 'Cambodia', 'China', 'Cyprus',
#                     'Georgia', 'India', 'Indonesia', 'Iran', 'Iraq', 'Israel', 'Japan', 'Jordan', 'Kazakhstan', 'Kuwait', 'Kyrgyzstan', 'Laos',
#                     'Lebanon', 'Malaysia', 'Maldives', 'Mongolia', 'Myanmar', 'Nepal', 'North Korea', 'Oman', 'Pakistan', 'Palestine', 'Philippines',
#                     'Qatar', 'Russia', 'Saudi Arabia', 'Singapore', 'South Korea', 'Sri Lanka', 'Syria', 'Taiwan', 'Tajikistan', 'Thailand',
#                     'Timor-Leste', 'Turkey', 'Turkmenistan', 'United Arab Emirates', 'Uzbekistan', 'Vietnam', 'Yemen') THEN 'Asia'
#
#     WHEN Country IN ('Antigua and Barbuda', 'Bahamas', 'Barbados', 'Belize', 'Canada', 'Costa Rica', 'Cuba', 'Dominica',
#                     'Dominican Republic', 'El Salvador', 'Grenada', 'Guatemala', 'Haiti', 'Honduras', 'Jamaica', 'Mexico',
#                     'Nicaragua', 'Panama', 'Saint Vincent and the Grenadines', 'United States') THEN 'North_America'
#
#     WHEN Country IN ('Argentina', 'Bolivia', 'Brazil', 'Chile', 'Colombia', 'Ecuador', 'Guyana', 'Paraguay', 'Peru', 'Suriname',
#                     'Uruguay', 'Venezuela') THEN 'South_America'
#
#     WHEN Country IN ('Australia', 'Fiji', 'Kiribati', 'Marshall Islands', 'Micronesia', 'Nauru', 'New Zealand', 'Palau',
#                     'Papua New Guinea', 'Samoa', 'Solomon Islands', 'Tonga', 'Tuvalu', 'Vanuatu') THEN 'Australia_and_Oceania'
# END AS continents,
#
#         round(sum(`Highest Yearly Earnings`),0) as total_earnings
#
#
# FROM youtubedata5
# GROUP BY 1
# ORDER BY 2 desc
#
# )
#
# SELECT
#     sum(total_earnings) as total_earnings,
#
#     round(1.0 * sum(case when continents = 'Africa' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_africa,
#     round(1.0 * sum(case when continents = 'Asia' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_Asia,
#     round(1.0 * sum(case when continents = 'North_America' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_North_America,
#     round(1.0 * sum(case when continents = 'Europe' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_Europe,
#     round(1.0 * sum(case when continents = 'South_America' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_South_America,
#     round(1.0 * sum(case when continents = 'Australia_and_Oceania' then total_earnings else 0 end) / nullif(sum(total_earnings), 0)*100,2) as pct_earnings_Australia_and_Oceania
#
#
#
#
#
# from pct_pay
# ;

# 2. Top 8 Country, pct pay

#
# WITH country_pct as(
# SELECT
#     Country,
#     round(SUM(`Highest Yearly Earnings`)) as total_earnings
# From youtubedata5
# GROUP BY 1
# Order by 2 desc
# )
#
# select
# sum(total_earnings) as total_earnings,
#
#
# round(1.0* sum(case when Country = 'United States' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_us,
# round(1.0* sum(case when Country = 'India' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_india,
# round(1.0* sum(case when Country = 'Brazil' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_brazil,
# round(1.0* sum(case when Country = 'South Korea' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_southKorea,
# round(1.0* sum(case when Country = 'United Kingdom' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_uk,
# round(1.0* sum(case when Country = 'Pakistan' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_paskistan,
# round(1.0* sum(case when Country = 'Argentina' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_argentina,
# round(1.0* sum(case when Country = 'Russia' then total_earnings else 0 end) / nullif(sum(total_earnings), 0) * 100,2) as p_russia
#
# from country_pct
# ;

# 3. Top 8 Channel Types, sum views

SELECT


    `Channel Type`,
    SUM(`Video Views`) as total_views
From youtubedata5
GROUP BY 1
ORDER BY 2 desc
Limit 8
;



