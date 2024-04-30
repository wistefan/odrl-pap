package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.Lob;
import lombok.Data;

import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Entity(name = PolicyEntity.TABLE_NAME)
@Data
public class PolicyEntity extends PanacheEntity {

    public static final String TABLE_NAME = "policy_entity";

    private String policyId;
    @Lob
    private String odrl;
    @Lob
    private String rego;


    public static Optional<PolicyEntity> findByPolicyId(String policyId) {
        return Optional.ofNullable(find("policyId", policyId).firstResult());
    }

}
