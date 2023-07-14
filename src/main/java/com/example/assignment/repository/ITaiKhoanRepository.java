package com.example.assignment.repository;

import com.example.assignment.model.TaiKhoan;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ITaiKhoanRepository extends JpaRepository<TaiKhoan, String> {
}
