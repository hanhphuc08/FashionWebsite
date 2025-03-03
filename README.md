# HỆ THỐNG WEBSITE CỬA HÀNG QUẦN ÁO ONLINE P2TS SHOP

## Giới thiệu
P2TS Shop là một hệ thống website cửa hàng trực tuyến, cho phép khách hàng mua sắm quần áo một cách dễ dàng và tiện lợi. Dự án sử dụng các công nghệ hiện đại để đảm bảo hiệu suất và bảo mật cao.

## Công cụ và Ngôn ngữ Sử dụng
- **Ngôn ngữ Lập trình:** Java
- **Web Framework:** Servlet, JSP/JSTL
- **Front-end:** Bootstrap
- **Cơ sở dữ liệu:** SQLServer/MySQL/PostgreSQL
- **ORM:** JDBC
- **Thư viện và Công cụ Khác:**
  - **Sitemesh Decorator:** Sử dụng để tạo các bố cục trang web chung.
  - **JWT (JSON Web Tokens):** Sử dụng cho việc xác thực và ủy quyền.

## Tính năng chính

### Chức năng của Quản trị viên

#### Quản lý Danh mục Sản phẩm
- Thêm, sửa, xóa danh mục sản phẩm
- Phân cấp danh mục sản phẩm (danh mục chính, danh mục con)
- Sắp xếp danh mục sản phẩm theo thứ tự mong muốn

#### Quản lý Sản phẩm
- Thêm, sửa, xóa sản phẩm
- Cập nhật thông tin sản phẩm (tên sản phẩm, mô tả, giá bán, hình ảnh, ...)
- Phân loại sản phẩm theo danh mục
- Quản lý kho hàng (số lượng sản phẩm tồn kho)

#### Quản lý Khách hàng
- Cho phép khách hàng tạo tài khoản mới
- Quản lý thông tin khách hàng (tên, địa chỉ, số điện thoại, email, ...)
- Theo dõi lịch sử mua hàng của khách hàng

#### Quản lý Đơn đặt hàng của Khách hàng
- Xem danh sách đơn đặt hàng
- Xử lý đơn đặt hàng (xác nhận, đóng gói, giao hàng, ...)
- Theo dõi trạng thái đơn hàng
- Thống kê doanh thu theo đơn hàng

#### Các chức năng Thống kê
- Thống kê doanh thu theo sản phẩm, danh mục sản phẩm, khách hàng, thời gian
- Thống kê số lượng truy cập website
- Phân tích hành vi người dùng
- Báo cáo dữ liệu thống kê

### Chức năng của Người dùng

#### Xem Danh sách các Sản phẩm
- Xem danh sách sản phẩm theo loại
- Xem các sản phẩm mới nhất
- Xem các sản phẩm bán chạy nhất
- Tìm kiếm sản phẩm theo tên, giá bán, thương hiệu

#### Tìm kiếm Sản phẩm
- Tìm kiếm sản phẩm theo tên, giá bán, thương hiệu
- Lọc sản phẩm theo danh mục, loại sản phẩm
- Sắp xếp sản phẩm theo giá bán, độ phổ biến

#### Xem Chi tiết một Sản phẩm
- Xem thông tin chi tiết về sản phẩm (tên sản phẩm, mô tả, giá bán, hình ảnh, ...)
- Đọc đánh giá sản phẩm của người dùng khác
- So sánh sản phẩm với các sản phẩm khác

#### Quản lý Giỏ hàng, Đặt hàng
- Thêm sản phẩm vào giỏ hàng
- Xóa sản phẩm khỏi giỏ hàng
- Cập nhật số lượng sản phẩm trong giỏ hàng
- Thanh toán giỏ hàng
- Theo dõi trạng thái đơn hàng

## Hướng dẫn Cài đặt
1. **Clone repository:**
   ```bash
   git clone https://github.com/hanhphuc08/FashionWebsite.git
2. **Cài đặt phụ thuộc:**
   - Đảm bảo bạn đã cài đặt Java Development Kit (JDK) và hệ quản trị cơ sở dữ liệu (SQLServer/MySQL/PostgreSQL). 
   - Sử dụng Maven hoặc Gradle để tải các thư viện cần thiết. Chạy lệnh sau trong thư mục dự án:
     ```bash
     mvn install
     ```

3. **Cấu hình cơ sở dữ liệu:**
   - Tạo một cơ sở dữ liệu mới trong SQLServer/MySQL/PostgreSQL.
   - Cập nhật tệp cấu hình (ví dụ: `application.properties` hoặc `web.xml`) với thông tin kết nối đến cơ sở dữ liệu của bạn:
     ```properties
     db.username=your_username
     db.password=your_password
     ```

4. **Chạy ứng dụng:**
   - Sử dụng một máy chủ ứng dụng như Apache Tomcat hoặc Jetty để triển khai ứng dụng.
   - Đặt tệp WAR của ứng dụng vào thư mục `webapps` của máy chủ Tomcat.
   - Khởi động máy chủ và truy cập vào địa chỉ:
     ```
     http://localhost:8080/FashionWebsite
     ```

5. **Đăng ký tài khoản:**
   - Mở trình duyệt và truy cập vào trang chủ của P2TS Shop.
   - Nhấp vào “Đăng ký” để tạo tài khoản mới.

6. **Bắt đầu mua sắm:**
   - Đăng nhập vào tài khoản của bạn và bắt đầu trải nghiệm

## Kết luận
P2TS Shop được thiết kế để cung cấp trải nghiệm mua sắm trực tuyến tốt nhất cho người dùng. Với các tính năng quản lý mạnh mẽ và giao diện thân thiện, chúng tôi hy vọng bạn sẽ có những trải nghiệm tuyệt vời khi sử dụng trang web của chúng tôi.

## Liên hệ
Nếu bạn có bất kỳ câu hỏi nào hoặc cần hỗ trợ, hãy liên hệ với chúng tôi qua địa chỉ email hỗ trợ: tuongporo9x2004@gmail.com hoặc qua số điện thoại : 0372047027
