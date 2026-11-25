# Personal Planner V2.5 — Chủ đề kiến thức và bộ lọc

## Tính năng mới
- Thư viện kiến thức → **Quản lý chủ đề**: tạo, đổi tên và xóa chủ đề độc lập, không phân cấp.
- **Thêm/Sửa kiến thức**: chọn chủ đề từ danh sách dropdown, không phải nhập thủ công.
- **Lọc theo chủ đề**: tất cả, từng chủ đề hoặc chưa phân loại. Có thể kết hợp lọc với tìm kiếm.
- Đổi tên chủ đề cập nhật tất cả kiến thức thuộc chủ đề.
- Xóa chủ đề không xóa bài kiến thức: các bài sẽ về **Chưa phân loại**, sau khi xác nhận.
- Phòng tránh chủ đề trùng tên không phân biệt chữ hoa/thường.

## Giữ dữ liệu cũ
- Vẫn dùng khóa lưu localStorage `personal_planner_v2_2026`.
- Khi tải dữ liệu V2.4, các tên chủ đề trong các bài kiến thức cũ được nhập thành danh sách chủ đề phẳng, **giữ nguyên nguyên văn** (kể cả tên cũ có dấu `/`).
- Cấu trúc mới thêm mảng `knowledgeTopics`, được lưu khi xuất/nhập JSON và đồng bộ cùng payload Supabase.
- Luôn xuất bản sao lưu JSON trước khi nâng cấp. Nếu mở file HTML ở một địa chỉ khác, sử dụng Nhập JSON.

## Triển khai GitHub Pages
- Upload toàn bộ nội dung ZIP vào repository đã bật GitHub Pages.
- Đồng bộ cần điền URL và anon/publishable key Supabase trong `config.js`; dùng `supabase.sql` nếu chưa tạo bảng. Không bao giờ đưa service_role key vào mã nguồn.

## Lưu ý
- Các tính năng lập lịch, lịch sử, phiên độc lập, mục tiêu và dự án kế thừa V2.4.
- Không tạo đường dẫn phân loại hoặc cây chủ đề. Mỗi kiến thức được gắn một chủ đề.
