package org.fiware.odrl.persistence;

import java.util.List;
import java.util.Optional;

public interface ServiceRepository {

    String createService(String id);

    Optional<ServiceEntity> getService(String id);

    void deleteService(String id);

    List<ServiceEntity> getServices();
    List<ServiceEntity> getServices(int page, int pageSize);
}
