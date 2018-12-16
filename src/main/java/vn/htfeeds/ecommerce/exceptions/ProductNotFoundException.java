package vn.htfeeds.ecommerce.exceptions;

/**
 * @author HTFeeds
 *
 * Oct 1, 2017
 */
public class ProductNotFoundException extends RuntimeException {
    private final Long id;

    public ProductNotFoundException(Long id) {
        super();
        this.id = id;
    }

    public Long getId() {
        return id;
    }

}
