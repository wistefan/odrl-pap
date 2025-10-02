import { defineConfig, loadEnv } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd(), '');
  const proxyTarget = env.VITE_API_PROXY_TARGET || 'http://localhost:8080';

  const proxyConfig = {
    target: proxyTarget,
    changeOrigin: true,
    headers: {
      'Accept': 'application/json, text/plain, */*',
    },
    configure: (proxy, _options) => {
      proxy.on('error', (err, _req, _res) => {
        console.log('proxy error', err);
      });
      proxy.on('proxyReq', (proxyReq, req, _res) => {
        console.log('\n[proxy] Sending Request to the Target:', req.method, req.url);
        console.log('[proxy] Target:', proxyTarget + proxyReq.path);
      });
      proxy.on('proxyRes', (proxyRes, req, _res) => {
        console.log('[proxy] Received Response from the Target:', proxyRes.statusCode, req.url);
      });
    },
  };

  return {
    plugins: [react()],
    server: {
      proxy: {
        '/mappings': proxyConfig,
        '/policy': proxyConfig,
        '/validate': proxyConfig,
      },
    },
  };
});