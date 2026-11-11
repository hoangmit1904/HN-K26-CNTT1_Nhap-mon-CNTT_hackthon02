# BÀI LÀM – HACKATHON 02

- **Mã đề:** 06
- **Họ tên:**Nguyễn Đăng Hoàng
- **Lớp:**CNTT1
- **Link repository:**
- **Hệ điều hành (Windows/macOS):**windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
 cd C:\Users\User\Downloads\starter-kit\xuong-in-website
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> get-childitem -force
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> mv yeu_cau_khach_hang.txt docs
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> mkdir backup
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> cp data/don_in_thang_6.xlsx backup
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> remove-item ./temp_606.tmp
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> get-childitem -force -recurse
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website


Mode               LastWriteTime
----               -------------
d-----      11/11/2026   7:49 AM
d-----      11/11/2026   7:39 AM
d-----      11/11/2026   7:45 AM
d-----      11/11/2026   7:35 AM
d-----      11/11/2026   7:39 AM
d-----       11/3/2026   7:07 AM
-a----       11/3/2026   7:07 AM
-a----      11/11/2026   7:53 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\backup


Mode               LastWriteTime
----               -------------
-a----       11/3/2026   7:07 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\data


Mode               LastWriteTime
----               -------------
-a----       11/3/2026   7:07 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\docs


Mode               LastWriteTime
----               -------------
-a----       11/3/2026   7:07 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\logs


Mode               LastWriteTime
----               -------------
-a----       11/3/2026   7:07 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\web


Mode               LastWriteTime
----               -------------
d-----       11/3/2026   7:07 AM
-a----       11/3/2026   7:07 AM
-a----       11/3/2026   7:07 AM
-a----       11/3/2026   7:07 AM


    Directory: C:\Users\User\Dow
    nloads\starter-kit\xuong-in-
    website\web\images


Mode               LastWriteTime
----               -------------
-a----       11/3/2026   7:07 AM


```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
 get-content ./logs/order_logs |select-string "status=500" |set-content ./logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-06-28 08:15:01 POST /api/thanh-toan status=500
2026-06-28 08:34:07 POST /api/tai-file status=500


```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> get-content ./logs/order_logs |select-string "status=404".count

```

```text

```2026-06-28 08:03:17 GET /dat-in status=200
2026-06-28 08:12:50 GET /bang-gia status=200
2026-06-28 08:15:01 POST /api/thanh-toan status=500
2026-06-28 08:19:12 GET /images/poster-2.jpg status=404
2026-06-28 08:37:18 POST /api/dat-in status=500
2026-06-28 08:45:51 GET /js/app.js status=200
2026-06-28 08:52:13 POST /api/thanh-toan status=500
2026-06-28 09:01:46 GET /js/app.js status=304

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
PS C:\Users\User\Downloads\starter-kit\xuong-in-website> get-content

```

### Nội dung file logs/tong_hop.txt

```text
# Script: tong_hop.ps1
# Tac gia: Sinh Vien
# Ngay tao: 11/11/2026
Write-host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
Get-Content ./logs/order_logs | Select-string "status=404" | foreach-Object { $_.Line } >> /logs/tong_hop.txt
(Get-Content ./logs/order.logs | Select-String "status=500").Count >> ./logs/tong_hop.txt
Write-Host "Hoan thanh!"



```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |  |  |  |
| 2 |  |  |  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
(Ghi câu tìm kiếm vào đây – xoá dòng này)

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_in_thang_6.xlsx`, không cần ghi vào đây.
