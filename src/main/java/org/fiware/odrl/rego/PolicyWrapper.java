package org.fiware.odrl.rego;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public record PolicyWrapper(OdrlPolicy odrl, RegoPolicy rego) {
}
