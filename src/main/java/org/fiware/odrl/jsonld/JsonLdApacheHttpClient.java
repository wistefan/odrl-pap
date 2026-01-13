package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.JsonLdErrorCode;
import com.apicatalog.jsonld.http.HttpClient;
import com.apicatalog.jsonld.http.HttpResponse;
import org.apache.http.Header;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

/**
 * Quarkus friendly implementation of the JsonLd-HttpClient Interface, using the apache httpclient.
 * Titanium-LDs default implementation will fail for native images.
 */
public class JsonLdApacheHttpClient implements HttpClient {

    private static final String ACCEPT_HEADER = "Accept";
    private static final String LINK_HEADER = "link";
    private static final String CONTENT_TYPE_HEADER = "content-type";
    private static final String LOCATION_HEADER = "location";

    private final org.apache.http.client.HttpClient httpClient;

    public JsonLdApacheHttpClient(org.apache.http.client.HttpClient httpClient) {
        this.httpClient = httpClient;
    }

    @Override
    public HttpResponse send(URI targetUri, String requestProfile) throws JsonLdError {

        HttpGet httpGet = new HttpGet(targetUri);
        httpGet.addHeader(ACCEPT_HEADER, requestProfile);

        try {
            // do not insert a try-with, since the document-loader handles that already. Would lead to stream-already closed exception else.
            org.apache.http.HttpResponse httpResponse = httpClient
                    .execute(httpGet);
            return new JsonLdHttpResponse()
                    .setStatusCode(httpResponse.getStatusLine().getStatusCode())
                    .setBody(httpResponse.getEntity().getContent())
                    .setContentType(Optional.ofNullable(httpResponse.getFirstHeader(CONTENT_TYPE_HEADER)).map(Header::getValue))
                    .setLinks(Optional.ofNullable(httpResponse.getHeaders(LINK_HEADER))
                            .map(Arrays::asList)
                            .orElse(List.of())
                            .stream()
                            .map(Header::getValue)
                            .toList())
                    .setLocation(Optional.ofNullable(httpResponse.getFirstHeader(LOCATION_HEADER)).map(Header::getValue));
        } catch (ClientProtocolException e) {
            throw new JsonLdError(JsonLdErrorCode.LOADING_DOCUMENT_FAILED, e);
        } catch (IOException e) {
            throw new JsonLdError(JsonLdErrorCode.LOADING_DOCUMENT_FAILED, e);
        }
    }

    private class JsonLdHttpResponse implements HttpResponse {

        private int statusCode;
        private InputStream body;
        private Collection<String> links;
        private Optional<String> contentType;
        private Optional<String> location;

        public JsonLdHttpResponse setStatusCode(int statusCode) {
            this.statusCode = statusCode;
            return this;
        }

        public JsonLdHttpResponse setBody(InputStream body) {
            this.body = body;
            return this;
        }

        public JsonLdHttpResponse setLinks(Collection<String> links) {
            this.links = links;
            return this;
        }

        public JsonLdHttpResponse setContentType(Optional<String> contentType) {
            this.contentType = contentType;
            return this;
        }

        public JsonLdHttpResponse setLocation(Optional<String> location) {
            this.location = location;
            return this;
        }

        @Override
        public int statusCode() {
            return statusCode;
        }

        @Override
        public InputStream body() {
            return body;
        }

        @Override
        public Collection<String> links() {
            return links;
        }

        @Override
        public Optional<String> contentType() {
            return contentType;
        }

        @Override
        public Optional<String> location() {
            return location;
        }

        @Override
        public void close() throws IOException {
        }

    }

}
