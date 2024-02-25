package com.demo.mgmtapp.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Response {
    private int statusCode;
    private String status;
    private String redirectUrl;
}
