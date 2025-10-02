import { OpenAPI } from '../api';
// Explicitly import and re-export what the app uses
import type { Mappings, OdrlPolicyJson, Policy, TestRequest, ValidationResponse } from '../api';
import axios from 'axios'; // Re-add axios import

// This can be extended to read the token from a store
const getAuthToken = () => {
    return localStorage.getItem('authToken');
}

// For production, the VITE_API_BASE_URL can be used to set a full URL
// For development, requests are made to relative paths and handled by the proxy
OpenAPI.BASE = import.meta.env.VITE_API_BASE_URL || '';

OpenAPI.WITH_CREDENTIALS = true;

// Store the original request function
const originalRequest = OpenAPI.request;

// Override the request function to inject the Accept header
OpenAPI.request = async (options) => {
    const token = getAuthToken();
    const headers: Record<string, string> = {
        'Accept': 'application/json, text/plain, */*', // Force the Accept header here
    };
    if (token) {
        headers['Authorization'] = `Bearer ${token}`;
    }

    // Merge with any existing headers from the request options, prioritizing our Accept header
    options.headers = { ...options.headers, ...headers };

    // Call the original request function
    return originalRequest(options);
};

// Re-export
export { OpenAPI };
export type { Mappings, OdrlPolicyJson, Policy, TestRequest, ValidationResponse };
