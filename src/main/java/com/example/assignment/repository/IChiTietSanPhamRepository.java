package com.example.assignment.repository;

import com.example.assignment.model.ChiTietSanPham;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, String> {
}
