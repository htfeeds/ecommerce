package vn.htfeeds.ecommerce.services;

import java.util.List;

import vn.htfeeds.ecommerce.DTOs.ProductDTO;

/**
 * @author HTFeeds
 *
 * Oct 1, 2017
 */
public interface ProductService {

    ProductDTO create(ProductDTO newProductEntry);

    List<ProductDTO> findAll();

    ProductDTO findById(Long id);

    ProductDTO update(ProductDTO updateProductEntry);

    ProductDTO delete(ProductDTO deleteProductEntry);

}
