# Project Setup Guide: A Modern TypeScript Stack

This guide sets up a **scalable, extensible, and high-performance** TypeScript/React project.
Tool choices are deliberate, prioritizing speed, DX, and consolidation for **10x development and scale**.

---

## 1. Core Philosophy

* **Performance**: Prefer high-performance tools (Rust/Zig-based) for linting, formatting, and testing.
* **Consolidation**: Use multi-purpose tools to reduce dependency bloat.
* **Developer Experience**: Explicit commands, `justfile` task discovery, and **automated pre-commit checks**.
* **Type Safety**: End-to-end type safety with TypeScript and runtime schema validation.

---

## 2. Tooling Stack Overview

| Category               | Tool & Docs                                                                                                  | Python Analogy | Purpose                                        |
| ---------------------- | ------------------------------------------------------------------------------------------------------------ | -------------- | ---------------------------------------------- |
| **Package Manager**    | [**pnpm**](https://pnpm.io/)                                                                                 | `uv` / `pip`   | Fast, disk-space efficient package management. |
| **Build Tool**         | [**Vite**](https://vitejs.dev/)                                                                              | N/A            | Extremely fast dev server and bundler.         |
| **Linter & Formatter** | [**Biome**](https://biomejs.dev/)                                                                            | `ruff`         | Rust-powered linting + formatting in one tool. |
| **Testing Framework**  | [**Vitest**](https://vitest.dev/)                                                                            | `pytest`       | Vite-native, modern, fast test runner.         |
| **Task Runner**        | [**just**](https://just.systems/man/en/)                                                                     | `just`         | Simple command runner for discoverable tasks.  |
| **Data Validation**    | [**Zod**](https://zod.dev/)                                                                                  | `pydantic`     | Runtime schema validation for safety.          |
| **AI Schema Tool**     | [**BAML**](https://www.boundaryml.com/docs/introduction)                                                     | N/A            | Prompt + output schema orchestration for AI.   |
| **Pre-commit Hooks**   | [**Husky**](https://typicode.github.io/husky), [**lint-staged**](https://github.com/lint-staged/lint-staged) | N/A            | Automates quality checks on commit.            |

---

## 2.1 Schema & Validation Strategy

### General-Purpose Runtime Validation

[**Zod**](https://zod.dev/) is the primary runtime schema validator.

Example:

```ts
import { z } from 'zod';

const UserSchema = z.object({
  id: z.string().uuid(),
  name: z.string().min(1),
  email: z.string().email(),
});

type User = z.infer<typeof UserSchema>;
```

### Performance-Focused Alternative

[**Valibot**](https://valibot.dev/) can replace Zod for high-load systems needing faster validation.

### AI-Specific Schema Orchestration

[**BAML**](https://www.boundaryml.com/docs/introduction) manages AI prompt+schema contracts in one place:

* Defines prompts + schemas together.
* Parses/repairs malformed AI outputs.
* Guarantees structured outputs.

**Rule of Thumb**:

* **Zod** for general validation.
* **BAML** for AI-first workflows with strict output formats.

---

## 3. Project Architecture for Scale

```
src/
  app/             # App root, providers
  features/        # Feature modules (auth, dashboard, etc.)
  shared/          # UI components, hooks, utils
  lib/             # Framework adapters, services
  styles/          # Tailwind/global styles
  test/            # Test utils, mocks
```

* Use feature-based structure to avoid monolithic `components/` or `utils/` folders.
* Export via `index.ts` barrel files.

---

## 4. Step-by-Step Setup Instructions

*(same steps as before, but now tools are linked in each heading)*

### Step 1: Initialize Project with [Vite](https://vitejs.dev/) + [pnpm](https://pnpm.io/)

```sh
pnpm create vite . --template react-swc-ts
```

### Step 2: Install Core Dependencies

Includes [Zod](https://zod.dev/), [React Router](https://reactrouter.com/), [Shadcn UI](https://ui.shadcn.com/).

### Step 3: Set Up [Biome](https://biomejs.dev/) (Linter & Formatter)

Strict rules for type safety.

### Step 4: Configure [Vitest](https://vitest.dev/)

Fast, Vite-native testing.

### Step 5: Add Pre-commit Hooks with [Husky](https://typicode.github.io/husky) + [lint-staged](https://github.com/lint-staged/lint-staged)

### Step 6: Configure `package.json` Scripts

### Step 7: Create [`justfile`](https://just.systems/man/en/) for Task Discovery

---

## 5. Testing Philosophy

* **Unit**: Functions/hooks.
* **Integration**: Feature-level behavior ([msw](https://mswjs.io/) for API mocks).
* **E2E**: Full app flows ([Playwright](https://playwright.dev/)).
* **Contract**: Verify API responses match schemas.

---

## 6. CI/CD Integration

Example: [GitHub Actions](https://docs.github.com/en/actions)
Ensures `pnpm check`, `pnpm test`, and `tsc` run on PRs.

---

## 7. Performance & DX Enhancements

* [`tsx`](https://github.com/esbuild-kit/tsx) for instant TS CLI scripts.
* [`knip`](https://knip.dev/) for unused code detection.
* [`ts-reset`](https://github.com/total-typescript/ts-reset) to fix TS defaults.
* [Changesets](https://github.com/changesets/changesets) for multipackage versioning.

---

## 8. Standard Workflow

```sh
just install   # Install dependencies
just dev       # Start dev server
just test      # Run all tests
just check     # Check & fix code quality
just build     # Build production
```

---
