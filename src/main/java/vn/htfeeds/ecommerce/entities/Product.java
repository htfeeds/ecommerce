package vn.htfeeds.ecommerce.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;
import lombok.RequiredArgsConstructor;

/**
 * @author HTFeeds
 *
 * Aug 27, 2017
 */
@Entity
@Data
@RequiredArgsConstructor
public final class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String name;
    private String shortDescription;
    private String fullDescription;
    private Integer stockQuantity;
    private Double price;
    private Boolean deleted;
    private Boolean showOnHomePage;
    
    private Product(Builder builder) {
        this.name = builder.name;
        this.shortDescription = builder.shortDescription;
        this.fullDescription = builder.fullDescription;
        this.stockQuantity = builder.stockQuantity;
        this.price = builder.price;
        this.showOnHomePage = builder.showOnHomePage;
    }
    
    public static Builder getBuilder() {
        return new Builder();
    }

    public static class Builder {
        private String name;
        private String shortDescription;
        private String fullDescription;
        private Integer stockQuantity;
        private Double price;
        private Boolean showOnHomePage;

        private Builder() {}

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder shortDescription(String shortDescription) {
            this.shortDescription = shortDescription;
            return this;
        }

        public Builder fullDescription(String fullDescription) {
            this.fullDescription = fullDescription;
            return this;
        }

        public Builder stockQuantity(Integer stockQuantity) {
            this.stockQuantity = stockQuantity;
            return this;
        }

        public Builder price(Double price) {
            this.price = price;
            return this;
        }

        public Builder showOnHomePage(Boolean showOnHomePage) {
            this.showOnHomePage = showOnHomePage;
            return this;
        }

        public Product build() {
            Product build = new Product(this);
            return build;
        }
    }
}
