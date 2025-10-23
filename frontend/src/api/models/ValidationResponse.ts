/* generated using openapi-typescript-codegen -- do not edit */
/* istanbul ignore file */
/* tslint:disable */
/* eslint-disable */
export type ValidationResponse = {
    /**
     * indicates if the request was allowed by the policy
     */
    allow?: boolean;
    /**
     * Explanation of the detailed error, in case the policy evaluation failed.
     */
    explanation?: Array<string>;
};

