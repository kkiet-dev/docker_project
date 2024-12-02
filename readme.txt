Snake Game
🐍 Snake Game là một trò chơi con rắn cổ điển được viết bằng Python. Dự án sử dụng thư viện pygame và hỗ trợ chạy ứng dụng trong môi trường Docker để đảm bảo tính nhất quán.

Giới Thiệu
Trò chơi con rắn là một game vui nhộn, phù hợp cho mọi lứa tuổi. Mục tiêu của trò chơi là điều khiển con rắn ăn càng nhiều thức ăn càng tốt, đồng thời tránh va chạm với chính nó hoặc biên giới màn hình.

Ngôn ngữ: Python
Thư viện: Pygame
Đóng gói: Docker

Tính Năng
Điều khiển con rắn bằng bàn phím.
Thức ăn xuất hiện ngẫu nhiên trên màn hình.
Hiển thị điểm số khi chơi.
Chạy được trên mọi môi trường thông qua Docker.

Cài Đặt
Yêu Cầu Hệ Thống
Python >= 3.8
Docker >= 20.10

Cài Đặt Thủ Công
Clone repository:

bash
Sao chép mã
git clone https://github.com/username/snake-game.git
cd snake-game
Cài đặt các gói Python cần thiết:

bash
Sao chép mã
pip install -r requirements.txt
Chạy trò chơi:

bash
Sao chép mã
python snake_game.py
Sử Dụng Docker
Build Docker image:

bash
Sao chép mã
docker build -t snake-game .
Chạy container:

bash
Sao chép mã
docker run -it --rm snake-game
Lưu ý: Để hiển thị đồ họa, bạn cần cấu hình thêm hỗ trợ đồ họa trên Docker (ví dụ: X11 forwarding trên Linux hoặc sử dụng phần mềm tương thích trên Windows).

Cách Chơi
Sử dụng các phím mũi tên (↑, ↓, ←, →) để điều khiển con rắn.
Ăn thức ăn để tăng điểm số và chiều dài của rắn.
Tránh va chạm với biên màn hình hoặc chính mình.

Sử Dụng Docker
Nếu muốn chạy trò chơi trong Docker mà không cần cấu hình phức tạp, bạn có thể sử dụng một hệ thống hỗ trợ đồ họa như sau:

Linux

Cấp quyền cho X server:
bash
Sao chép mã
xhost +local:docker
Chạy container với hỗ trợ đồ họa:
bash
Sao chép mã
docker run -it --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  snake-game