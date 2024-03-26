package org.fiware.odrl.mapping;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class MappingException extends Exception {
    public MappingException(String message) {
        super(message);
    }

    public MappingException(String message, Throwable cause) {
        super(message, cause);
    }
}
