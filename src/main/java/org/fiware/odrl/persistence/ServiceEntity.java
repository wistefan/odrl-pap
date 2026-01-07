package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import lombok.Data;

import java.util.List;
import java.util.Optional;

@Entity(name = ServiceEntity.TABLE_NAME)
@Data
public class ServiceEntity extends PanacheEntity {

    public static final String TABLE_NAME = "service_entity";

    private String serviceId;

    @OneToMany(mappedBy = "serviceEntity")
    private List<PolicyEntity> policies;

    public static Optional<ServiceEntity> findByServiceId(String serviceId) {
        return Optional.ofNullable(find("serviceId", serviceId).firstResult());
    }

    public ServiceEntity id(String serviceId){
        this.serviceId = serviceId;
        return this;
    }
}
