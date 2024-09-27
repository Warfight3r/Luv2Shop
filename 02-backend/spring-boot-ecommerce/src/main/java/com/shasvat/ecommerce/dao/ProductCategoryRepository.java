package com.shasvat.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.shasvat.ecommerce.entity.ProductCategory;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category") //Here "productCategory" is the name of the json entry and "product-category" is the path
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {

}
