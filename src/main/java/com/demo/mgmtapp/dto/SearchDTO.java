package com.demo.mgmtapp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchDTO {
    private String searchKeyword;
    private String criteria;
}
