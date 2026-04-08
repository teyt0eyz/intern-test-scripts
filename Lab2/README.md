# intern-test
PHOLX Internship Technical Test (Bash)

Objective

แบบทดสอบนี้ใช้เพื่อประเมินความสามารถพื้นฐานด้าน Linux และ Bash scripting สำหรับนักศึกษาฝึกงาน

------------------------

Time Limit

2 ชั่วโมง

-----------------------

Rules

- ใช้ Bash Script เท่านั้น
- ทำงานผ่าน Linux Terminal
- Script ต้องสามารถ run ได้จริง
- สามารถใช้คำสั่ง Linux พื้นฐานได้ เช่น
  "grep", "awk", "sed", "ps", "df", "free", "ping"
- ห้ามใช้ ai tools ทุกชนิด เช่น ChatGPT,Copilot หรือเครืื่องมือช่วยเขียนโค้ดอัตโนมัติ
- ต้องเป็น ผลงานที่ผู้สมัครเขียนเองเท่านั้น
หากตรวจพบการใช้ ai หรือคัดลอกผลงานจากแหล่งอื่น อาจถูกยกเลิกการพิจารณาเข้าฝึกงาน

-------------------------

Tasks

ให้สร้าง Bash Script ตามรายการต่อไปนี้

1. cpu-info.sh

แสดงข้อมูล CPU ของระบบ

-------------------------

2. ram-info.sh

แสดงข้อมูล RAM ของระบบ

-------------------------

3. disk-info.sh

แสดง Disk usage ของระบบ

-------------------------

4. process-count.sh

แสดงจำนวน process ที่กำลังทำงานอยู่ในระบบ

---

5. top-cpu.sh

แสดง process ที่ใช้ CPU มากที่สุด

------------------------------

6. create-project.sh

สร้างโครงสร้างโฟลเดอร์ดังนี้

project/
src/
logs/
backup/

----------------------------

7. log.sh

สร้างไฟล์ "system.log" และบันทึก

- วันที่
- เวลา
- ข้อความ "System checked"

---------------------------

8. find-log.sh

ค้นหาไฟล์ ".log" ภายในโฟลเดอร์

/var/log

----------------------------

9. network-test.sh

สร้าง script ที่

- แสดง IP address ของเครื่อง
- ping ไปที่ "google.com" จำนวน 3 ครั้ง

------------------------------

10. system-info.sh

แสดงข้อมูลระบบรวม

ต้องมี

- CPU
- RAM
- Disk
- Process count

------------------------------

Project Structure

intern-test
│
├── cpu-info.sh
├── ram-info.sh
├── disk-info.sh
├── process-count.sh
├── top-cpu.sh
├── create-project.sh
├── log.sh
├── find-log.sh
├── network-test.sh
└── system-info.sh

------------------------------

Submission

ส่งงานผ่าน Git Repository

ขั้นตอน

1. สร้าง Git repository
2. เพิ่มไฟล์ script ทั้งหมด
3. Commit และ Push
4. ส่ง Git repository link
