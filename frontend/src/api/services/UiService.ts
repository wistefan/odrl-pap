/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
import type { Mappings } from '../models/Mappings';
import type { ValidationRequest } from '../models/ValidationRequest';
import type { ValidationResponse } from '../models/ValidationResponse';
import type { CancelablePromise } from '../core/CancelablePromise';
import { OpenAPI } from '../core/OpenAPI';
import { request as __request } from '../core/request';
export class UiService {
    /**
     * Validates a policy with a demo request
     * @param requestBody
     * @returns ValidationResponse Validation result
     * @throws ApiError
     */
    public static validatePolicy(
        requestBody: ValidationRequest,
    ): CancelablePromise<ValidationResponse> {
        return __request(OpenAPI, {
            method: 'POST',
            url: '/validate',
            body: requestBody,
            mediaType: 'application/json',
        });
    }
    /**
     * Gets the supported by the PAP.
     * @returns Mappings Successfully retrieved the Mappings.
     * @throws ApiError
     */
    public static getMappings(): CancelablePromise<Mappings> {
        return __request(OpenAPI, {
            method: 'GET',
            url: '/mappings',
        });
    }
}
