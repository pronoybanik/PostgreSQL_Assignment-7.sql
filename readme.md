1.  What is PostgreSQL?
Answer:PostgreSQL, একটি বিনামূল্যের, ওপেন-সোর্স ডাটাবেস ম্যানেজমেন্ট সিস্টেম যা রিলেশনাল এবং নন-রিলেশনাল উভয় ধরণের ডেটা সমর্থন করে।

2. What is the purpose of a database schema in PostgreSQL?
Answer: ডাটাবেস স্কিমা হলো ডাটাবেসের একটি লজিক্যাল স্ট্রাকচার বা কাঠামো। এটি ডাটাবেসের টেবিল, ভিউ, ইন্ডেক্স এবং অন্যান্য অবজেক্ট গুলি সংগঠিত ও পরিচালনার জন্য ব্যবহৃত হয়। স্কিমা ব্যবহারে ডাটাবেসে বিভিন্ন ইউজার বা অ্যাপ্লিকেশনের ডাটা আলাদা রাখাও সহজ হয়।

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Answer: Primary Key: একটি টেবিলের কলাম এর id  যা প্রতিটি রেকর্ডকে অনন্যভাবে শনাক্ত করে।
Foreign Key: একটি টেবিলের কলাম যা অন্য একটি টেবিলের Primary Key-কে রেফার করে। এটি টেবিলগুলোর মধ্যে সম্পর্ক স্থাপন করতে ব্যবহৃত হয়।

4. What is the difference between the VARCHAR and CHAR data types?
Answer: VARCHAR: এটি একটি পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং যা সর্বোচ্চ একটি নির্দিষ্ট দৈর্ঘ্য পর্যন্ত ডাটা সংরক্ষণ করতে পারে।
CHAR: এটি একটি স্থির দৈর্ঘ্যের স্ট্রিং। নির্ধারিত দৈর্ঘ্যের চেয়ে ছোট ডাটা থাকলেও বাকি অংশ ফাঁকা (space) দিয়ে পূরণ হয়।

5. Explain the purpose of the WHERE clause in a SELECT statement.
Answer: WHERE ক্লজ ডাটাবেস থেকে নির্দিষ্ট শর্ত পূরণকারী রেকর্ড ফিল্টার করতে ব্যবহৃত হয়।

6. What are the LIMIT and OFFSET clauses used for?
Answer: LIMIT: টেবিল থেকে কতো সংখ্যক রেকর্ড ফেরত আনতে হবে তা নির্ধারণ করে।
OFFSET: টেবিল থেকে শুরুতে নির্দিষ্ট সংখ্যক রেকর্ড বাদ দিয়ে পরবর্তী রেকর্ড আনে।

7. How can you modify data using UPDATE statements?
Answer: UPDATE স্টেটমেন্ট ব্যবহার করে টেবিলের বিদ্যমান ডাটা পরিবর্তন করা যায়।

8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
Answer: INNER JOIN: উভয় টেবিলে মিল থাকা রেকর্ড দেখায়।
LEFT JOIN: বাম টেবিলের সমস্ত রেকর্ড এবং ডান টেবিলের মিল থাকা রেকর্ড দেখায়।
RIGHT JOIN: ডান টেবিলের সমস্ত রেকর্ড এবং বাম টেবিলের মিল থাকা রেকর্ড দেখায়।

9. Explain the GROUP BY clause and its role in aggregation operations.
Answer:GROUP BY  ক্লজ ডাটাকে নির্দিষ্ট কলাম অনুযায়ী গ্রুপ করে। এটি সাধারণত অ্যাগ্রিগেট ফাংশনের (যেমন: COUNT, SUM) সঙ্গে ব্যবহৃত হয়।

10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?
Answer:AVG(): নির্দিষ্ট কলামের গড় মান বের করে।
SUM(): নির্দিষ্ট কলামের মানগুলোর যোগফল দেয়।
COUNT(): মোট রেকর্ড সংখ্যা গণনা করে।

