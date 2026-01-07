package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;
import io.quarkus.panache.common.Sort;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.EntityMapper;

import java.util.List;
import java.util.Optional;

@Slf4j
@ApplicationScoped
public class PersistentServiceRepository implements ServiceRepository {

    private static final String DEFAULT_SORT = "id";

    @Inject
    private EntityMapper entityMapper;

    @Override
    @Transactional
    public String createService(String id) {
        if (ServiceEntity.findByServiceId(id).isPresent()) {
            throw new IllegalArgumentException(String.format("Service with id %s already exists.", id));
        }
        new ServiceEntity().id(id).persist();
        return id;
    }

    @Override
    public Optional<ServiceEntity> getService(String id) {
        return ServiceEntity.findByServiceId(id);
    }

    @Override
    @Transactional
    public void deleteService(String id) {
        ServiceEntity.findByServiceId(id)
                .ifPresent(PanacheEntityBase::delete);
    }

    @Override
    public List<ServiceEntity> getServices() {
        return ServiceEntity.listAll();
    }

    @Override
    public List<ServiceEntity> getServices(int page, int pageSize) {
        PanacheQuery<ServiceEntity> serviceEntities = ServiceEntity.findAll(Sort.ascending(DEFAULT_SORT));
        return serviceEntities.page(Page.of(page, pageSize)).list();
    }
}
