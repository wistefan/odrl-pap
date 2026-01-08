package org.fiware.odrl.persistence;

import java.util.List;
import java.util.Optional;

public interface ServiceRepository {

    /**
     * Creates the service with given id and returns the package name to be used for accessing its policies.
     */
    String createService(String id);

    Optional<ServiceEntity> getService(String id);

    void deleteService(String id);

    List<ServiceEntity> getServices();

    List<ServiceEntity> getServices(int page, int pageSize);
}
