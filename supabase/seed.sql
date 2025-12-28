-- Seed data for customer table
-- Run with: npx supabase db reset (this will apply migrations and then seed)

INSERT INTO public.customer (name, phone, gender, birthday, location) VALUES
-- Batch 1: Original 10 customers
('Nguyễn Thị Mai', '0901234567', 'Nữ', '1990-03-15', 'Quận 1, TP.HCM'),
('Trần Văn Hùng', '0912345678', 'Nam', '1985-07-22', 'Quận 3, TP.HCM'),
('Lê Thị Hương', '0923456789', 'Nữ', '1992-11-08', 'Quận 7, TP.HCM'),
('Phạm Minh Tuấn', '0934567890', 'Nam', '1988-01-30', 'Quận Bình Thạnh, TP.HCM'),
('Võ Thị Lan', '0945678901', 'Nữ', '1995-05-12', 'Quận 2, TP.HCM'),
('Hoàng Văn Nam', '0956789012', 'Nam', '1991-09-25', 'Quận Tân Bình, TP.HCM'),
('Đặng Thị Thuỷ', '0967890123', 'Nữ', '1987-12-03', 'Quận Phú Nhuận, TP.HCM'),
('Bùi Quốc Việt', '0978901234', 'Nam', '1993-04-18', 'Quận Gò Vấp, TP.HCM'),
('Ngô Thị Hạnh', '0989012345', 'Nữ', '1989-08-07', 'Quận 10, TP.HCM'),
('Lý Văn Đức', '0990123456', 'Nam', '1994-02-28', 'Quận 5, TP.HCM'),

-- Batch 2: Additional 15 customers
('Trương Thị Kim Ngân', '0901112233', 'Nữ', '1996-06-20', 'Quận 4, TP.HCM'),
('Nguyễn Hoàng Long', '0902223344', 'Nam', '1983-11-15', 'Quận 6, TP.HCM'),
('Phan Thị Mỹ Linh', '0903334455', 'Nữ', '1991-02-28', 'Quận 8, TP.HCM'),
('Đỗ Văn Thành', '0904445566', 'Nam', '1987-09-10', 'Quận 9, TP.HCM'),
('Huỳnh Thị Bích Phượng', '0905556677', 'Nữ', '1994-04-05', 'Quận 11, TP.HCM'),
('Vũ Minh Khang', '0906667788', 'Nam', '1990-12-25', 'Quận 12, TP.HCM'),
('Trịnh Thị Thanh Tâm', '0907778899', 'Nữ', '1988-07-18', 'Thủ Đức, TP.HCM'),
('Lâm Quốc Bảo', '0908889900', 'Nam', '1992-01-03', 'Bình Tân, TP.HCM'),
('Mai Thị Hồng Nhung', '0909990011', 'Nữ', '1986-08-22', 'Tân Phú, TP.HCM'),
('Dương Văn Phúc', '0911122334', 'Nam', '1995-05-30', 'Quận 1, TP.HCM'),
('Cao Thị Diễm My', '0922233445', 'Nữ', '1993-10-12', 'Quận 3, TP.HCM'),
('Tô Hoàng Anh', '0933344556', 'Nam', '1989-03-08', 'Quận 7, TP.HCM'),
('Đinh Thị Thu Hà', '0944455667', 'Nữ', '1997-11-27', 'Quận 2, TP.HCM'),
('Hồ Văn Tài', '0955566778', 'Nam', '1984-06-14', 'Quận Bình Thạnh, TP.HCM'),
('Châu Thị Kiều Oanh', '0966677889', 'Nữ', '1991-09-02', 'Quận Phú Nhuận, TP.HCM');
