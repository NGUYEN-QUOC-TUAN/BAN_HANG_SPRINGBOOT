package com.example.assignment.repository;

import com.example.assignment.model.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IHoaDonRepository extends JpaRepository<HoaDonChiTiet, String> {
}
