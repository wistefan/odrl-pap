package org.fiware.odrl.persistence;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.runtime.annotations.RegisterForReflection;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
@Entity(name = PolicyEntity.TABLE_NAME)
@Data
public class PolicyEntity extends PanacheEntity {

	public static final String TABLE_NAME = "policy_entity";

	// opa-compatible id of the policy
	private String policyId;
	// uid of the policy as defined by odrl
	private String uid;

	@ManyToOne(optional = true)
	@JoinColumn(name = "serviceId")
	private ServiceEntity serviceEntity;

	@JdbcTypeCode(SqlTypes.JSON)
	private Policy odrl;

	@Override
	public String toString() {
		return "PolicyEntity{" +
				"policyId='" + policyId + '\'' +
				", uid='" + uid + '\'' +
				", odrl=" + odrl +
				", rego=" + rego +
				", service=" + serviceEntity.getServiceId() +
				'}';
	}

	@JdbcTypeCode(SqlTypes.JSON)
	private Policy rego;

	public static Optional<PolicyEntity> findByPolicyId(String policyId) {
		return Optional.ofNullable(find("policyId", policyId).firstResult());
	}

	public static Optional<PolicyEntity> findByPolicyUid(String uid) {
		return Optional.ofNullable(find("uid", uid).firstResult());
	}

}
