package vn.htfeeds.ecommerce.mappers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import vn.htfeeds.ecommerce.DTOs.ProductDTO;
import vn.htfeeds.ecommerce.entities.Product;

/**
 * @author HTFeeds
 *
 * Oct 1, 2017
 */
public final class ProductMapper {

    /**
     * Transforms the list of {@link Product} objects given as a method parameter
     * into a list of {@link ProductDTO} objects and returns the created list.
     *
     * @param entities
     * @return
     */
    public static List<ProductDTO> mapEntitiesIntoDTOs(Iterable<Product> entities) {
        List<ProductDTO> dtos = new ArrayList<>();

        entities.forEach(e -> dtos.add(mapEntityIntoDTO(e)));

        return dtos;
    }

    /**
     * Transforms the {@link Product} object given as a method parameter into a
     * {@link ProductDTO} object and returns the created object.
     *
     * @param entity
     * @return
     */
    public static ProductDTO mapEntityIntoDTO(Product entity) {
        ProductDTO dto = new ProductDTO();

        dto.setId(entity.getId());
        dto.setName(entity.getName());
        dto.setShortDescription(entity.getShortDescription());
        dto.setFullDescription(entity.getFullDescription());
        dto.setPrice(entity.getPrice());
        dto.setStockQuantity(entity.getStockQuantity());
        dto.setShowOnHomePage(entity.getShowOnHomePage());

        return dto;
    }

    /**
     * Transforms {@code Page<ENTITY>} objects into {@code Page<DTO>} objects.
     * @param pageRequest   The information of the requested page.
     * @param source        The {@code Page<ENTITY>} object.
     * @return The created {@code Page<DTO>} object.
     */
    public static Page<ProductDTO> mapEntityPageIntoDTOPage(Pageable pageRequest, Page<Product> source) {
        List<ProductDTO> dtos = mapEntitiesIntoDTOs(source.getContent());
        return new PageImpl<>(dtos, pageRequest, source.getTotalElements());
    }

}
