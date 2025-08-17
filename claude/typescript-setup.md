# Project Setup Guide: A Modern TypeScript Stack

## 1. Core Philosophy

This document outlines the foundational principles and step-by-step instructions for setting up a modern, high-performance TypeScript/React project. The tooling choices are deliberate, prioritizing speed, developer experience (DX), and consolidation.

-   **Performance:** We use tools written in high-performance languages (Rust, Zig) to ensure that linting, formatting, package management, and testing are exceptionally fast.
-   **Consolidation:** We prefer single tools that handle multiple related tasks (e.g., `Biome` for both linting and formatting). This reduces dependency bloat and configuration complexity.
-   **Developer Experience:** The workflow is built on clear, explicit commands and minimal configuration, facilitated by a `justfile` for task discovery.
-   **Type Safety:** We leverage TypeScript and `Zod` for end-to-end type safety, from data validation to component props.

## 2. Tooling Stack Overview

| Category | Tool | Python Analogy | Purpose |
| :--- | :--- | :--- | :--- |
| **Package Manager** | **`pnpm`** | `uv` / `pip` | Fast, disk-space efficient package management. |
| **Build Tool** | **`Vite`** | N/A | Extremely fast development server and production bundler. |
| **Linter & Formatter** | **`Biome`** | `ruff` | All-in-one, Rust-powered tool for linting and formatting. |
| **Testing Framework**| **`Vitest`** | `pytest` | Vite-native test runner with a modern, fast API. |
| **Task Runner** | **`just`** | `just` | Simple command runner for orchestrating project tasks. |
| **Data Validation** | **`Zod`** | `pydantic` | Schema declaration and validation for runtime safety. |

## 3. Step-by-Step Setup Instructions

### Step 1: Initialize the Vite Project with `pnpm`

First, ensure you have Node.js and `pnpm` installed.

```sh
# Create a new directory for your project and navigate into it
mkdir vibe-visual-maker && cd vibe-visual-maker

# Initialize a Vite project with the React + TypeScript (SWC) template
# The '.' targets the current directory
pnpm create vite . --template react-swc-ts
```
This command creates the initial project structure, including `package.json`, `vite.config.ts`, and `tsconfig.json`.

### Step 2: Install Core Dependencies

Install the necessary libraries for the application's functionality. This project uses `react-router-dom` for routing and `shadcn-ui` components, which are built on Radix UI.

```sh
# Install core runtime dependencies
pnpm add react-router-dom zod class-variance-authority clsx tailwind-merge lucide-react @radix-ui/react-slot

# Install shadcn-ui component primitives (or use `pnpm dlx shadcn-ui@latest init` for interactive setup)
pnpm add @radix-ui/react-accordion @radix-ui/react-dialog @radix-ui/react-slider @radix-ui/react-switch @radix-ui/react-label @radix-ui/react-select @radix-ui/react-collapsible @radix-ui/react-toast sonner

# Install development dependencies for styling and testing
pnpm add -D tailwindcss postcss autoprefixer tailwindcss-animate @testing-library/react
```

### Step 3: Set Up Biome (Linter & Formatter)

Install and configure Biome to handle all code quality tasks.

1.  **Install Biome:**
    ```sh
    pnpm add -D @biomejs/biome
    ```

2.  **Create `biome.json`** in the project root with the following content:
    ```json
    {
      "$schema": "https://biomejs.dev/schemas/1.8.3/schema.json",
      "organizeImports": {
        "enabled": true
      },
      "linter": {
        "enabled": true,
        "rules": {
          "recommended": true,
          "suspicious": {
            "noExplicitAny": "off"
          }
        }
      },
      "formatter": {
        "enabled": true,
        "indentStyle": "space",
        "indentWidth": 2
      },
      "javascript": {
        "formatter": {
          "semicolons": "asNeeded",
          "quoteStyle": "single"
        }
      }
    }
    ```

### Step 4: Set Up Vitest (Testing)

Integrate the Vitest framework for running unit and component tests.

1.  **Install Vitest:**
    ```sh
    pnpm add -D vitest @vitest/ui jsdom
    ```

2.  **Configure `vite.config.ts`** to recognize Vitest. Replace the generated file with this content:
    *(The complete file content is in the "Final Configuration Files" section below.)*

### Step 5: Configure `package.json` Scripts

Replace the default `scripts` in your `package.json` with a set of clean, explicit commands for our new tooling.

```json
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview",
    "lint": "biome lint ./src",
    "format": "biome format --write ./src",
    "check": "biome check --apply ./src",
    "test": "vitest",
    "test:ui": "vitest --ui"
  },
```

### Step 6: Create `justfile`

Create a `justfile` in the project root for a simple and discoverable command interface.

```justfile
# Default task: Run all quality checks and tests
default: check test

# Install all project dependencies using pnpm
install:
    pnpm install

# Start the development server
dev:
    pnpm dev

# Run all code quality checks and apply fixes
check:
    pnpm check

# Run tests in the terminal
test:
    pnpm test

# Open the Vitest UI for interactive testing
test-ui:
    pnpm test:ui

# Create a production build of the application
build:
    pnpm build
```

## 4. Final Configuration Files

Here are the complete, final versions of the key configuration files for your project.

<details>
<summary><code>package.json</code></summary>

```json
{
  "name": "vibe-visual-maker",
  "private": true,
  "version": "0.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview",
    "lint": "biome lint ./src",
    "format": "biome format --write ./src",
    "check": "biome check --apply ./src",
    "test": "vitest",
    "test:ui": "vitest --ui"
  },
  "dependencies": {
    "@radix-ui/react-accordion": "^1.2.0",
    "@radix-ui/react-dialog": "^1.1.1",
    "@radix-ui/react-label": "^2.1.0",
    "@radix-ui/react-select": "^2.1.1",
    "@radix-ui/react-slider": "^1.2.0",
    "@radix-ui/react-slot": "^1.1.0",
    "@radix-ui/react-switch": "^1.1.0",
    "@radix-ui/react-toast": "^1.2.1",
    "class-variance-authority": "^0.7.0",
    "clsx": "^2.1.1",
    "lucide-react": "^0.411.0",
    "react": "^18.3.1",
    "react-dom": "^18.3.1",
    "react-router-dom": "^6.24.1",
    "sonner": "^1.5.0",
    "tailwind-merge": "^2.4.0",
    "zod": "^3.23.8"
  },
  "devDependencies": {
    "@biomejs/biome": "^1.8.3",
    "@testing-library/react": "^16.0.0",
    "@types/node": "^20.14.10",
    "@types/react": "^18.3.3",
    "@types/react-dom": "^18.3.0",
    "@vitejs/plugin-react-swc": "^3.7.0",
    "@vitest/ui": "^2.0.3",
    "autoprefixer": "^10.4.19",
    "jsdom": "^24.1.0",
    "postcss": "^8.4.39",
    "tailwindcss": "^3.4.4",
    "tailwindcss-animate": "^1.0.7",
    "typescript": "^5.5.3",
    "vite": "^5.3.3",
    "vitest": "^2.0.3"
  }
}
```
</details>

<details>
<summary><code>vite.config.ts</code></summary>

```typescript
/// <reference types="vitest" />
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'
import path from 'path'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
  test: {
    globals: true,
    environment: 'jsdom',
    setupFiles: './src/setupTests.ts',
  },
})
```
</details>

<details>
<summary><code>tailwind.config.ts</code></summary>

```typescript
import type { Config } from 'tailwindcss'

export default {
  darkMode: ['class'],
  content: ['./src/**/*.{ts,tsx}'],
  theme: {
    container: {
      center: true,
      padding: '2rem',
      screens: {
        '2xl': '1400px',
      },
    },
    extend: {
      colors: {
        border: 'hsl(var(--border))',
        input: 'hsl(var(--input))',
        ring: 'hsl(var(--ring))',
        background: 'hsl(var(--background))',
        foreground: 'hsl(var(--foreground))',
        primary: {
          DEFAULT: 'hsl(var(--primary))',
          foreground: 'hsl(var(--primary-foreground))',
        },
        secondary: {
          DEFAULT: 'hsl(var(--secondary))',
          foreground: 'hsl(var(--secondary-foreground))',
        },
        destructive: {
          DEFAULT: 'hsl(var(--destructive))',
          foreground: 'hsl(var(--destructive-foreground))',
        },
        muted: {
          DEFAULT: 'hsl(var(--muted))',
          foreground: 'hsl(var(--muted-foreground))',
        },
        accent: {
          DEFAULT: 'hsl(var(--accent))',
          foreground: 'hsl(var(--accent-foreground))',
        },
        popover: {
          DEFAULT: 'hsl(var(--popover))',
          foreground: 'hsl(var(--popover-foreground))',
        },
        card: {
          DEFAULT: 'hsl(var(--card))',
          foreground: 'hsl(var(--card-foreground))',
        },
      },
      borderRadius: {
        lg: 'var(--radius)',
        md: 'calc(var(--radius) - 2px)',
        sm: 'calc(var(--radius) - 4px)',
      },
      keyframes: {
        'accordion-down': {
          from: { height: '0' },
          to: { height: 'var(--radix-accordion-content-height)' },
        },
        'accordion-up': {
          from: { height: 'var(--radix-accordion-content-height)' },
          to: { height: '0' },
        },
      },
      animation: {
        'accordion-down': 'accordion-down 0.2s ease-out',
        'accordion-up': 'accordion-up 0.2s ease-out',
      },
    },
  },
  plugins: [require('tailwindcss-animate')],
} satisfies Config
```
</details>

<details>
<summary><code>tsconfig.json</code></summary>

```json
{
  "compilerOptions": {
    "target": "ES2020",
    "useDefineForClassFields": true,
    "lib": ["ES2020", "DOM", "DOM.Iterable"],
    "module": "ESNext",
    "skipLibCheck": true,

    /* Bundler mode */
    "moduleResolution": "bundler",
    "allowImportingTsExtensions": true,
    "resolveJsonModule": true,
    "isolatedModules": true,
    "noEmit": true,
    "jsx": "react-jsx",

    /* Linting */
    "strict": true,
    "noUnusedLocals": true,
    "noUnusedParameters": true,
    "noFallthroughCasesInSwitch": true,

    /* Aliases */
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "include": ["src"],
  "references": [{ "path": "./tsconfig.node.json" }]
}
```
</details>

## 5. Standard Workflow

-   **Install dependencies:** `just install`
-   **Start development server:** `just dev`
-   **Run tests:** `just test` (or `just test-ui` for the browser UI)
-   **Check & fix code quality:** `just check`
-   **Build for production:** `just build`
