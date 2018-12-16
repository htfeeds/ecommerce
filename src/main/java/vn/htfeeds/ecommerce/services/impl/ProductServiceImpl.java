package vn.htfeeds.ecommerce.services.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.htfeeds.ecommerce.DTOs.ProductDTO;
import vn.htfeeds.ecommerce.entities.Product;
import vn.htfeeds.ecommerce.exceptions.ProductNotFoundException;
import vn.htfeeds.ecommerce.mappers.ProductMapper;
import vn.htfeeds.ecommerce.repositories.ProductRepository;
import vn.htfeeds.ecommerce.services.ProductService;

/**
 * @author HTFeeds
 *
 * Oct 1, 2017
 */
@Service
public class ProductServiceImpl implements ProductService {

    private static final Logger LOGGER = LoggerFactory.getLogger(ProductServiceImpl.class);
    
    @Autowired
    private ProductRepository productRepository;

    @Transactional
    @Override
    public ProductDTO create(ProductDTO newProductEntry) {
        LOGGER.info("Creating a new product entry by using information: {}", newProductEntry);

        Product created = Product.getBuilder()
                .name(newProductEntry.getName())
                .shortDescription(newProductEntry.getShortDescription())
                .fullDescription(newProductEntry.getFullDescription())
                .stockQuantity(newProductEntry.getStockQuantity())
                .price(newProductEntry.getPrice())
                .showOnHomePage(newProductEntry.getShowOnHomePage())
                .build();

        created = productRepository.save(created);
        LOGGER.info("Created a new product entry: {}", created);
        
        return ProductMapper.mapEntityIntoDTO(created);
    }

    @Transactional(readOnly = true)
    @Override
    public List<ProductDTO> findAll() {
        LOGGER.info("Finding all product entries.");

        List<Product> productEntries = productRepository.findAll();
        LOGGER.info("Found {} product entries", productEntries.size());

        return ProductMapper.mapEntitiesIntoDTOs(productEntries);
    }

    @Transactional(readOnly = true)
    @Override
    public ProductDTO findById(Long id) {
        LOGGER.info("Finding product entry by using id: {}", id);

        Product productEntry = findProductEntryById(id);
        LOGGER.info("Found todo entry: {}", productEntry);

        return ProductMapper.mapEntityIntoDTO(productEntry);
    }

    @Override
    public ProductDTO update(ProductDTO updateProductEntry) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public ProductDTO delete(ProductDTO deleteProductEntry) {
        // TODO Auto-generated method stub
        return null;
    }
    
    private Product findProductEntryById(Long id) {
        Optional<Product> productResult = productRepository.findOne(id);
        return productResult.orElseThrow(() -> new ProductNotFoundException(id));
    }

}
