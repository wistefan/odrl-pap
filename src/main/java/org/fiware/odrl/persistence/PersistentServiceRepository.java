package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.EntityMapper;

import java.util.List;
import java.util.Optional;

@Slf4j
@ApplicationScoped
public class PersistentServiceRepository implements ServiceRepository {

    @Inject
    private EntityMapper entityMapper;

    @Override
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
        PanacheQuery<ServiceEntity> serviceEntities = ServiceEntity.findAll();
        return serviceEntities.page(Page.of(page, pageSize)).list();
    }
}
