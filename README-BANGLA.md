# SNK Cloud Hosting — Free Local Starter (Windows)

এটি cPanel-এর মতো একটি **শুরুর প্রোটোটাইপ**, পূর্ণাঙ্গ public hosting service নয়। এটি আপনার Windows PC-তে লোকালি চলে। ইন্টারনেটে অন্যদের জন্য চালু করার আগে নিরাপত্তা, আলাদা user permissions, domain routing, HTTPS, backups, quotas, monitoring ও production server architecture যোগ করতে হবে।

## যা আছে
- Admin login
- Website project তৈরি (প্রতি সাইটের আলাদা `sites/<slug>/` ফোল্ডার)
- `index.html` edit/save
- Local website preview
- Website delete
- কোনো third-party npm package লাগে না

## ধাপ ১ — Node.js ইনস্টল
1. `https://nodejs.org/` খুলুন।
2. Windows-এর LTS version ইনস্টল করুন।
3. ইনস্টল শেষে এই ফোল্ডারে ফিরে আসুন।

## ধাপ ২ — চালু করুন
1. `START-SNK-CLOUD.bat`-এ ডাবল ক্লিক করুন।
2. একটি ব্যক্তিগত admin password লিখুন।
3. Browser-এ `http://127.0.0.1:8787` খুলুন।
4. আপনি যে password দিলেন সেটি দিয়ে লগইন করুন।

যদি password prompt-এ কিছু না লিখে Enter দেন, demo password `change-this-password` ব্যবহার হবে—এটি এড়িয়ে চলুন।

## ধাপ ৩ — Website তৈরি
1. Dashboard-এ Website name লিখুন।
2. Create website চাপুন।
3. Edit-এ ক্লিক করে `index.html` পরিবর্তন করুন।
4. Save changes চাপুন এবং Preview দেখুন।

## ফাইলের পথ
- `server.js` — লোকাল web server ও dashboard routes
- `package.json` — project metadata
- `START-SNK-CLOUD.bat` — Windows launcher
- `sites/` — আপনার তৈরি website files
- `public/` — পরবর্তী UI asset-এর জন্য খালি folder

## নিরাপত্তা সতর্কতা — খুব গুরুত্বপূর্ণ
- Server শুধু `127.0.0.1`-এ bind করা; অন্য ডিভাইস/ইন্টারনেট থেকে সরাসরি access করার জন্য নয়।
- Router port forwarding, public tunnel বা public IP দিয়ে এটি প্রকাশ করবেন না। এটি production security review পাস করেনি।
- Dashboard-এর HTML editor trusted local use-এর জন্য; customer-facing hosting-এ ব্যবহার করবেন না।
- Website files নিয়মিত backup করুন।

## Free plan বাস্তবতা
এই starter চালাতে software cost শূন্য, যদি আপনার PC ও internet আগে থেকেই থাকে। PC বন্ধ থাকলে site বন্ধ হবে। Domain, static IP, electricity, backup drive বা commercial service-এর খরচ হতে পারে।

## Production-এ যাওয়ার আগে
পরবর্তী পর্যায়ে Linux server/VM, reverse proxy (Caddy/Nginx), TLS certificates, per-customer isolation, upload validation, quota enforcement, audit logs, automated backups, monitoring, abuse controls ও billing দরকার হবে। Windows PC-তে demo চালানো আর নিরাপদ public hosting business চালানো এক জিনিস নয়।
