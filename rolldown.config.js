import { defineConfig } from 'rolldown';
export default defineConfig([
    {
        input: {
            background: 'ts-out/background-chrome.js',
            content: 'ts-out/content.js',
        },
        output: {
            dir: 'build-chrome',
            format: 'es',
        }
    },
    {
        input: {
            background: 'ts-out/background-firefox.js',
            content: 'ts-out/content.js',
        },
        output: {
            dir: 'build-firefox',
            format: 'es',
        }
    }
]);
