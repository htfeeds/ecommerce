package vn.htfeeds.ecommerce.repositories;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.data.repository.Repository;

/**
 * @author HTFeeds
 *
 * Oct 1, 2017
 */
@NoRepositoryBean
public interface BaseRepository<T, ID extends Serializable> extends Repository<T, ID> {

    List<T> findAll();

    Optional<T> findOne(ID id);

    boolean exists(ID id);

    T save(T persisted);

    void delete(ID id);

    long count();

    void flush();

}