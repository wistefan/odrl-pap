package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.runtime.annotations.RegisterForReflection;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.OneToMany;
import lombok.Data;

import java.util.List;
import java.util.Optional;

@RegisterForReflection
@Entity(name = ServiceEntity.TABLE_NAME)
@Data
public class ServiceEntity extends PanacheEntity {

    public static final String TABLE_NAME = "service_entity";

    private String serviceId;
    private String packageName;

    @OneToMany(mappedBy = "serviceEntity")
    private List<PolicyEntity> policies;

    public static Optional<ServiceEntity> findByServiceId(String serviceId) {
        return Optional.ofNullable(find("serviceId", serviceId).firstResult());
    }

    public ServiceEntity id(String serviceId) {
        this.serviceId = serviceId;
        return this;
    }

    public ServiceEntity packageName(String packageName) {
        this.packageName = packageName;
        return this;
    }

}
