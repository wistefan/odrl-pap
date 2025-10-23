/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { Headers } from './Headers';
export type TestRequest = {
    method?: TestRequest.method;
    host?: string;
    path?: string;
    protocol?: TestRequest.protocol;
    body?: Record<string, any>;
    headers?: Headers;
};
export namespace TestRequest {
    export enum method {
        POST = 'POST',
        PATCH = 'PATCH',
        PUT = 'PUT',
        GET = 'GET',
        DELETE = 'DELETE',
    }
    export enum protocol {
        HTTPS = 'https',
    }
}

