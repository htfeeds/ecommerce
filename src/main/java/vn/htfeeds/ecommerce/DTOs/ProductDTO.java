package vn.htfeeds.ecommerce.DTOs;

import lombok.Data;
import lombok.RequiredArgsConstructor;

/**
 * @author HTFeeds
 *
 * Aug 27, 2017
 */
@Data
@RequiredArgsConstructor
public final class ProductDTO {
    private Long id;
    private String name;
    private String shortDescription;
    private String fullDescription;
    private Integer stockQuantity;
    private Double price;
    private Boolean deleted;
    private Boolean showOnHomePage;
}
