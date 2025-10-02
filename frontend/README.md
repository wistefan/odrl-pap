# ODRL PAP Frontend

This is a React-based frontend for the ODRL Policy Administration Point (PAP).

## Local Development

To run the frontend locally for development, follow these steps:

1.  **Configure the Backend**
    Create a `.env` file in the `frontend` directory by copying the `.env.example` file. Adjust the variables to point to your backend API.
    ```bash
    cp .env.example .env
    ```

2.  **Install Dependencies**
    Make sure you have Node.js and npm installed. Then, install the project dependencies:
    ```bash
    npm install
    ```

3.  **Run the Development Server**
    This command starts the Vite development server. It will use the `VITE_API_PROXY_TARGET` from your `.env` file to proxy API requests.
    ```bash
    npm run dev
    ```
    The frontend will be available at `http://localhost:5173`.

4.  **Generate API Client**
    If you make changes to the `api/odrl.yaml` file, you need to regenerate the API client:
    ```bash
    npm run generate-api
    ```

## Configuration

You can configure the application using environment variables defined in a `.env` file in the `frontend` directory.

-   `VITE_API_PROXY_TARGET`: The full URL of your backend, used to proxy requests from the development server (e.g., `http://localhost:8080`).
-   `VITE_API_BASE_URL`: The base URL for API calls in the production build. For a backend on a different domain, this would be the full URL (e.g., `https://api.example.com`). If the frontend is served from the same host as the backend, this can be a relative path like `/api`.


## Building for Production

To create a production build of the application, run:
```bash
npm run build
```
This will create a `dist` directory with the optimized static assets.

## Docker

A Dockerfile is provided to containerize the frontend application.

1.  **Build the Docker Image**
    ```bash
    docker build -t odrl-pap-frontend .
    ```

2.  **Run the Docker Container**
    ```bash
    docker run -p 8080:80 odrl-pap-frontend
    ```
    The frontend will be available at `http://localhost:8080`.