# Source-code-Lof-mini
 Mã Nguồn Mở Của League of FPS
Bạn Có thể xây dựng phần mềm, bằng ngôn ngữ AutoitV3

League of Fps Pro cũng được xây dựng từ bản mini nhưng mình sẽ không chia sẻ code vì lí do bảo mật vì các thông tin của server mình đã lưu trữ trên google drive và chỉ có 1 chiều đọc dữ liệu, ko có chiều up thông tin ngược lên. , mong các bạn thông cảm.

Để có thể tự build bản League of Fps Pro, các bạn hãy tham khảo những gợi ý sau:
1. chức năng dọn ram, bạn có thể tải và sử dụng emptystandbylist.exe và chạy lệnh cmd "EmptyStandbyList.exe workingsets"
2. chức năng chạy game ở chế độ tối ưu hóa vẫn như cũ, nằm ở mục thuvien/start_lol.au3, thực chất là lấy command line của riotclientservices.exe sau đó chạy lại để có thể vào đc game và tắt các tác vụ của garena. các bạn có thể tạo funcion cho gọn
3. chức năng tạo reg tối ưu bạn có thể tham khảo tại thư mục : Reg- tối ưu., sau khi đã có các reg thì bạn tiến thành tạo code add reg là xong.
4. phần dx11betarender, các bạn sẽ thêm vào file config của game là : game.cfg, phần [General] DX11BetaTest=1
5. phần độ phân giải siêu thấp các bạn hãy thay đổi trong file config là [General]Height=600 Width=800. 
6. để bật chế độ hiệu năng , các bạn sẽ sử dụng cmd, lệnh "powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" đây là lệnh chuyển trạng thái tiêu thụ điện của windows sang Ultimate Performance 
các bạn có thể tự build tương tự như mình đã hướng dẫn

chúc các bạn sử dụng phần mềm vui vẻ
🧐 fb/starpbiibk
