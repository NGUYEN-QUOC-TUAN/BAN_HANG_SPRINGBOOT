package com.example.assignment.controller;

import com.example.assignment.model.BoNho;
import com.example.assignment.model.ChiTietSanPham;
import com.example.assignment.model.DongSanPham;
import com.example.assignment.model.MauSac;
import com.example.assignment.model.NhaSanXuat;
import com.example.assignment.model.SanPham;
import com.example.assignment.repository.IBoNhoRepository;
import com.example.assignment.repository.IChiTietSanPhamRepository;
import com.example.assignment.repository.IDongSanPhamRepository;
import com.example.assignment.repository.IMauSacRepository;
import com.example.assignment.repository.INhaSanXuatRepository;
import com.example.assignment.repository.ISanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/view-chi-tiet-san-pham")
public class ChiTietSanPhamController {
    @Autowired
    private IChiTietSanPhamRepository iChiTietSanPhamRepository;
    @Autowired
    private ISanPhamRepository iSanPhamRepository;
    @Autowired
    private INhaSanXuatRepository iNhaSanXuatRepository;
    @Autowired
    private IMauSacRepository iMauSacRepository;
    @Autowired
    private IDongSanPhamRepository iDongSanPhamRepository;
    @Autowired
    private IBoNhoRepository iBoNhoRepository;

    private String chuyenTrang(Model model) {
        model.addAttribute("listChiTietSanPhams", iChiTietSanPhamRepository.findAll());
        model.addAttribute("listSanPhams", iSanPhamRepository.findAll());
        model.addAttribute("listNhaSanXuats", iNhaSanXuatRepository.findAll());
        model.addAttribute("listMauSacs", iMauSacRepository.findAll());
        model.addAttribute("listBoNhos", iBoNhoRepository.findAll());
        model.addAttribute("listDongSanPhams", iDongSanPhamRepository.findAll());
        return "view-chi-tiet-san-pham/chi-tiet-san-pham";
    }

    @GetMapping
    public String viewChiTietSanPham(Model model) {
        return chuyenTrang(model);
    }

    @PostMapping("/add")
    public String saveChiTietSanPham(Model model, @ModelAttribute(name = "chiTietSanPham") ChiTietSanPham chiTietSanPham) {
        SanPham sanPham = iSanPhamRepository.findById(chiTietSanPham.getSanPham().getId()).get();
        NhaSanXuat nhaSanXuat = iNhaSanXuatRepository.findById(chiTietSanPham.getNhaSanXuat().getId()).get();
        MauSac mauSac = iMauSacRepository.findById(chiTietSanPham.getMauSac().getId()).get();
        DongSanPham dongSanPham = iDongSanPhamRepository.findById(chiTietSanPham.getDongSanPham().getId()).get();
        BoNho boNho = iBoNhoRepository.findById(chiTietSanPham.getBoNho().getId()).get();
        iChiTietSanPhamRepository.save(new ChiTietSanPham(null,
                sanPham, nhaSanXuat, mauSac, dongSanPham, boNho,
                chiTietSanPham.getGiaNhap(),
                chiTietSanPham.getGiaBan(),
                chiTietSanPham.getNamBaoHanh(),
                chiTietSanPham.getMoTa(),
                chiTietSanPham.getTrangThai()));
        return chuyenTrang(model);
    }
}
