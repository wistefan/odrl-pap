package org.fiware.odrl.rego;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public interface RegoPolicyService {

    void createPolicy(String packageName, String policy);
}
