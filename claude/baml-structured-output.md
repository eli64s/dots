# BAML Framework Documentation

This documentation provides a comprehensive guide to the BAML (Basically, A Made-up Language) framework, which is designed for building AI applications using function definitions.

Directory structure:
└── fern/
    ├── README.md
    ├── custom.js
    ├── docs.yml
    ├── fern.config.json
    ├── generators.yml
    ├── package.json
    ├── .cursorrules
    ├── 01-guide/
    │   ├── contact.mdx
    │   ├── introduction.mdx
    │   ├── what-are-function-definitions.mdx
    │   ├── what-is-baml_client.mdx
    │   ├── what-is-baml_src.mdx
    │   ├── 01-editors/
    │   │   ├── cursor.mdx
    │   │   ├── others.mdx
    │   │   └── vscode.mdx
    │   ├── 02-languages/
    │   │   ├── python.mdx
    │   │   ├── rest.mdx
    │   │   ├── ruby.mdx
    │   │   └── typescript.mdx
    │   ├── 03-development/
    │   │   ├── environment-variables.mdx
    │   │   ├── terminal-logs.mdx
    │   │   ├── upgrade-baml-versions.mdx
    │   │   └── deploying/
    │   │       ├── aws.mdx
    │   │       ├── docker.mdx
    │   │       └── openapi.mdx
    │   ├── 04-baml-basics/
    │   │   ├── concurrent-calls.mdx
    │   │   ├── error-handling.mdx
    │   │   ├── multi-modal.mdx
    │   │   ├── my-first-function.mdx
    │   │   ├── streaming.mdx
    │   │   ├── switching-llms.mdx
    │   │   └── testing-functions.mdx
    │   ├── 05-baml-advanced/
    │   │   ├── checks-and-asserts.mdx
    │   │   ├── client-registry.mdx
    │   │   ├── collector.mdx
    │   │   ├── dynamic-types.mdx
    │   │   ├── modular-api.mdx
    │   │   ├── prompt-caching.mdx
    │   │   └── reusing-prompt-snippets.mdx
    │   ├── 06-prompt-engineering/
    │   │   ├── action-items.mdx
    │   │   ├── chain-of-thought.mdx
    │   │   ├── chat-history.mdx
    │   │   ├── classification.mdx
    │   │   ├── hallucinations.mdx
    │   │   ├── pii-data-extraction.mdx
    │   │   ├── rag.mdx
    │   │   ├── symbol-tuning.mdx
    │   │   └── tools.mdx
    │   ├── 07-observability/
    │   │   └── studio.mdx
    │   ├── 08-frameworks/
    │   │   └── 01-react-nextjs/
    │   │       ├── 01-quick-start.mdx
    │   │       └── 02-chatbot.mdx
    │   ├── 09-comparisons/
    │   │   ├── langchain.mdx
    │   │   ├── marvin.mdx
    │   │   └── pydantic.mdx
    │   └── functions/
    │       ├── environment-variables.mdx
    │       ├── get-started.mdx
    │       └── using-openapi.mdx
    ├── 02-examples/
    │   └── interactive-examples.mdx
    ├── 03-reference/
    │   ├── generator.mdx
    │   ├── overview.mdx
    │   ├── baml/
    │   │   ├── array.mdx
    │   │   ├── bool.mdx
    │   │   ├── class.mdx
    │   │   ├── client-llm.mdx
    │   │   ├── comments.mdx
    │   │   ├── enum.mdx
    │   │   ├── env-vars.mdx
    │   │   ├── function.mdx
    │   │   ├── int-float.mdx
    │   │   ├── map.mdx
    │   │   ├── media.mdx
    │   │   ├── string.mdx
    │   │   ├── template_string.mdx
    │   │   ├── test.mdx
    │   │   ├── types.mdx
    │   │   ├── attributes/
    │   │   │   ├── alias.mdx
    │   │   │   ├── assert.mdx
    │   │   │   ├── attributes-overview.mdx
    │   │   │   ├── check.mdx
    │   │   │   ├── description.mdx
    │   │   │   ├── dynamic.mdx
    │   │   │   ├── jinja-checks-and-asserts.mdx
    │   │   │   └── skip.mdx
    │   │   ├── clients/
    │   │   │   ├── providers/
    │   │   │   │   ├── anthropic.mdx
    │   │   │   │   ├── aws-bedrock.mdx
    │   │   │   │   ├── azure-ai-foundary.mdx
    │   │   │   │   ├── azure.mdx
    │   │   │   │   ├── cerebras.mdx
    │   │   │   │   ├── google-ai.mdx
    │   │   │   │   ├── groq.mdx
    │   │   │   │   ├── huggingface.mdx
    │   │   │   │   ├── keywordsai.mdx
    │   │   │   │   ├── litellm.mdx
    │   │   │   │   ├── llama-api.mdx
    │   │   │   │   ├── lmstudio.mdx
    │   │   │   │   ├── ollama.mdx
    │   │   │   │   ├── openai-generic.mdx
    │   │   │   │   ├── openai-responses.mdx
    │   │   │   │   ├── openai.mdx
    │   │   │   │   ├── openrouter.mdx
    │   │   │   │   ├── tinfoil.mdx
    │   │   │   │   ├── together.mdx
    │   │   │   │   ├── unify.mdx
    │   │   │   │   ├── vertex.mdx
    │   │   │   │   └── vllm.mdx
    │   │   │   └── strategy/
    │   │   │       ├── fallback.mdx
    │   │   │       ├── retry.mdx
    │   │   │       └── round-robin.mdx
    │   │   └── prompt-syntax/
    │   │       ├── comments.mdx
    │   │       ├── conditionals.mdx
    │   │       ├── ctx.mdx
    │   │       ├── loops.mdx
    │   │       ├── output-format.mdx
    │   │       ├── role.mdx
    │   │       ├── variables.mdx
    │   │       └── what-is-jinja.mdx
    │   ├── baml-cli/
    │   │   ├── dev.mdx
    │   │   ├── fmt.mdx
    │   │   ├── generate.mdx
    │   │   ├── init.mdx
    │   │   ├── serve.mdx
    │   │   └── test.mdx
    │   ├── baml_client/
    │   │   ├── audio.mdx
    │   │   ├── client.mdx
    │   │   ├── collector.mdx
    │   │   ├── config.mdx
    │   │   ├── id.mdx
    │   │   ├── image.mdx
    │   │   ├── media.mdx
    │   │   ├── pdf.mdx
    │   │   ├── proposal.mdx
    │   │   ├── typebuilder.mdx
    │   │   ├── video.mdx
    │   │   ├── with_options.mdx
    │   │   ├── errors/
    │   │   │   ├── baml-client-finish-reason-error.mdx
    │   │   │   ├── baml-validation-error.mdx
    │   │   │   └── overview.mdx
    │   │   └── react-nextjs/
    │   │       ├── hook-data.mdx
    │   │       ├── hook-input.mdx
    │   │       ├── hook-output.mdx
    │   │       └── use-function-name.mdx
    │   ├── cloud/
    │   │   └── limits.mdx
    │   └── vscode-ext/
    │       ├── clipath.mdx
    │       ├── enablePlaygroundProxy.mdx
    │       ├── generateCodeOnSave.mdx
    │       └── syncExtensionToGeneratorVersion.mdx
    ├── assets/
    │   ├── open-sans-v17-all-charsets-700.woff2
    │   ├── open-sans-v17-all-charsets-italic.woff2
    │   ├── open-sans-v17-all-charsets-regular.woff2
    │   └── styles.css
    ├── openapi/
    │   └── openapi.yaml
    ├── pages/
    │   ├── changelog.mdx
    │   └── welcome.mdx
    └── snippets/
        ├── allowed-role-metadata-basic.mdx
        ├── allowed-role-metadata.mdx
        ├── client-constructor.mdx
        ├── client-response-type.mdx
        ├── dynamic-class-test.mdx
        ├── finish-reason.mdx
        ├── openapi-howto-rely-on-envvars.mdx
        ├── role-selection.mdx
        ├── setting-env-vars.mdx
        ├── supports-streaming-openai.mdx
        ├── supports-streaming.mdx
        └── baml/
            ├── cli/
            │   ├── generate.mdx
            │   └── install/
            │       └── nodejs.mdx
            ├── clients/
            │   ├── openai-responses.mdx
            │   └── openai.mdx
            └── prompts/
                └── story.mdx


Files Content:

(Files content cropped to 300k characters, download full ingest to see more)
================================================
FILE: fern/README.md
================================================
# Fern Configuration

View the documentation [here](https://boundary.docs.buildwithfern.com).

## Updating your Docs

### Local Development server

To run a local development server with hot-reloading you can run the following command

```sh
fern docs dev
```

### Hosted URL

Documentation is automatically updated when you push to main via the `fern generate` command.

```sh
npm install -g fern-api # only required once
fern generate --docs
```



================================================
FILE: fern/custom.js
================================================
// Immediately execute function
(() => {
  // Only create chat bubble if window width > 700px
  if (window.innerWidth <= 700) {
    console.log('Window width <= 700px, not showing chat bubble');
    return;
  }

  // Create the chat bubble
  const chatBubble = document.createElement('div');
  chatBubble.style.position = 'fixed';
  chatBubble.style.bottom = '20px';
  chatBubble.style.right = '20px';
  chatBubble.style.width = '60px';
  chatBubble.style.height = '60px';
  chatBubble.style.backgroundColor = '#6025d1';
  chatBubble.style.borderRadius = '50%';
  chatBubble.style.boxShadow = '0 4px 8px rgba(0, 0, 0, 0.2)';
  chatBubble.style.cursor = 'pointer';
  chatBubble.style.zIndex = '1000';
  chatBubble.style.transition = 'all 0.3s ease';
  chatBubble.style.display = 'flex';
  chatBubble.style.alignItems = 'center';
  chatBubble.style.justifyContent = 'center';

  // Add magical neon border with animation
  chatBubble.style.border = '2px solid transparent';
  chatBubble.style.backgroundClip = 'padding-box';

  // Create a pseudo-element for the animated border
  const borderAnimation = document.createElement('div');
  borderAnimation.style.position = 'absolute';
  borderAnimation.style.top = '-4px';
  borderAnimation.style.left = '-4px';
  borderAnimation.style.right = '-4px';
  borderAnimation.style.bottom = '-4px';
  borderAnimation.style.borderRadius = '50%';
  borderAnimation.style.zIndex = '-1';
  borderAnimation.style.background =
    'linear-gradient(45deg, #ff00cc, #6025d1, #00ccff, #6025d1)';
  borderAnimation.style.backgroundSize = '200% 200%';
  borderAnimation.style.filter = 'blur(2px)';
  borderAnimation.style.opacity = '0.7';
  borderAnimation.style.transition = 'opacity 0.3s ease';

  // Add animation using CSS keyframes
  const style = document.createElement('style');
  style.textContent = `
    @keyframes magicBorder {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }
  `;
  document.head.appendChild(style);

  borderAnimation.style.animation = 'magicBorder 20s ease infinite';
  chatBubble.appendChild(borderAnimation);

  // Add chat icon
  const chatIcon = document.createElement('div');
  chatIcon.innerHTML = `
  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-bot"><path d="M12 8V4H8"/><rect width="16" height="12" x="4" y="8" rx="2"/><path d="M2 14h2"/><path d="M20 14h2"/><path d="M15 13v2"/><path d="M9 13v2"/></svg>
  `;

  chatBubble.appendChild(chatIcon);

  // Create tooltip
  const tooltip = document.createElement('div');
  tooltip.textContent = 'Ask BAML AI Agent';
  tooltip.style.position = 'absolute';
  tooltip.style.right = '70px';
  tooltip.style.backgroundColor = 'rgba(0, 0, 0, 0.7)';
  tooltip.style.color = 'white';
  tooltip.style.padding = '8px 12px';
  tooltip.style.borderRadius = '4px';
  tooltip.style.fontSize = '14px';
  tooltip.style.whiteSpace = 'nowrap';
  tooltip.style.opacity = '0';
  tooltip.style.visibility = 'hidden';
  tooltip.style.transition = 'opacity 0.3s, visibility 0.3s';
  chatBubble.appendChild(tooltip);

  // Create sparkle container
  const sparkleContainer = document.createElement('div');
  sparkleContainer.style.position = 'absolute';
  sparkleContainer.style.width = '40px';
  sparkleContainer.style.height = '40px';
  sparkleContainer.style.top = '5px';
  sparkleContainer.style.left = '5px';
  sparkleContainer.style.pointerEvents = 'none';
  sparkleContainer.style.opacity = '0';
  sparkleContainer.style.transition = 'opacity 0.3s';
  chatBubble.appendChild(sparkleContainer);

  // Function to create a sparkle
  function createSparkle() {
    const sparkle = document.createElement('div');
    sparkle.style.position = 'absolute';
    sparkle.style.width = '3px';
    sparkle.style.height = '3px';
    sparkle.style.borderRadius = '30%';
    sparkle.style.backgroundColor = '#ffffff';
    sparkle.style.boxShadow = '0 0 5px 1px rgba(255, 255, 255, 0.8)';

    // Random position
    sparkle.style.left = `${Math.random() * 100}%`;
    sparkle.style.top = `${Math.random() * 100}%`;

    // Animation
    sparkle.animate(
      [
        { transform: 'scale(0)', opacity: 0 },
        { transform: 'scale(1)', opacity: 1 },
        { transform: 'scale(0)', opacity: 0 },
      ],
      {
        duration: 1200 + Math.random() * 800,
        easing: 'ease-out',
      },
    );

    sparkleContainer.appendChild(sparkle);

    // Remove after animation
    setTimeout(() => {
      sparkle.remove();
    }, 1000);
  }

  // Sparkle interval reference
  let sparkleInterval;

  // Add hover effects
  chatBubble.addEventListener('mouseover', () => {
    chatBubble.style.backgroundColor = '#6025d1';
    chatBubble.style.transform = 'scale(1.05)';
    tooltip.style.opacity = '1';
    tooltip.style.visibility = 'visible';

    // Enhance the magical border on hover
    borderAnimation.style.opacity = '1';
    borderAnimation.style.filter = 'blur(4px)';

    // Show sparkle container
    sparkleContainer.style.opacity = '1';

    // Create sparkles periodically
    sparkleInterval = setInterval(createSparkle, 300);
  });

  chatBubble.addEventListener('mouseout', () => {
    chatBubble.style.backgroundColor = '#6025d1';
    chatBubble.style.transform = 'scale(1)';
    tooltip.style.opacity = '0';
    tooltip.style.visibility = 'hidden';

    // Reduce the magical border effect when not hovering
    borderAnimation.style.opacity = '0.7';
    borderAnimation.style.filter = 'blur(5px)';

    // Hide sparkle container
    sparkleContainer.style.opacity = '0';

    // Stop creating new sparkles
    clearInterval(sparkleInterval);
  });

  // Add click event
  chatBubble.addEventListener('click', () => {
    window.open('https://boundaryml.com/chat', '_blank', 'noopener,noreferrer');
  });

  // Function to append to body when it's available
  function appendToBody() {
    if (document.body) {
      document.body.appendChild(chatBubble);
      console.log('Chat bubble added to DOM');
    } else {
      // If body isn't available yet, try again shortly
      setTimeout(appendToBody, 50);
    }
  }

  // Start the process
  appendToBody();

  // Also listen for window resize to hide/show based on width
  window.addEventListener('resize', () => {
    if (window.innerWidth <= 700) {
      chatBubble.style.display = 'none';
    } else {
      chatBubble.style.display = 'flex';
    }
  });
})();



================================================
FILE: fern/docs.yml
================================================
instances:
  - url: https://boundary.docs.buildwithfern.com
    # vv example custom domain configuration vv
    custom-domain: docs.boundaryml.com
    edit-this-page:
      github:
        owner: BoundaryML
        repo: baml
        branch: canary

title: Boundary Documentation
js: ./custom.js
ai-chat:
  system-prompt: |
    You will be answering questions about BAML (Basically, a Made-up Language) -- an AI framework to write LLM prompts as functions. Here is some background:
    <Overview>
    BAML (Basically, A Made-Up Language) is a domain-specific language for building LLM prompts as functions.
    You can build an agentic workflow with BAML.
    </Overview>

    <Schema>
    // Define output schemas using classes
    class MyObject {
      // Optional string fields use ?
      // @description is optional, but if you include it, it goes after the field.
      name string? @description("The name of the object")

      // Arrays of primitives
      // arrays cannot be optional.
      tags string[]

      // Enums must be declared separately and are optional
      status MyEnum?

      // Union types
      type "success" | "error"

      // Primitive types
      count int
      enabled bool
      score float

      // nested objects
      nested MyObject2

      // image type
      myImg image
    }

    // Enums are declared separately
    enum MyEnum {
      // enum values MUST START WITH A CAPITAL LETTER
      PENDING
      ACTIVE @description("Item is currently active")
      COMPLETE
    }

    // Comments use double slashes
    // Recursive types and inline definitions are not supported
    </Schema>

    <Functions>
    // Functions define inputs, outputs and prompts
    // function name is always PascalCase
    function MyFunction(input: MyObject) -> string {
      client "openai/gpt-4o"
      // prompt with jinja syntax inside here. with double curly braces for variables.
      // make sure to include: {{ ctx.output_format }} in the prompt, which prints the output schema instructions so the LLM returns the output in the correct format (json or string, etc.). DO NOT write the output schema manually.
      prompt #"

      "#
    }

    <LLMClients>
      You can use any of the following if you write a baml function example:
      - openai/gpt-4o
      - openai/gpt-4o-mini
      - anthropic/claude-3-5-sonnet-latest (note the "3-5")
      - anthropic/claude-3-5-haiku-latest

      If the user mentions an open-source model like "llama3" or "r1", search the docs for "OpenRouter" or "openai-generic" to see how to use it.
    </LLMClients>

    <Prompt>
      In case you need to write a prompt example:
      1. Make sure to include the input in the prompt (even if it's an image) using {{ input }}
      2. Make sure to include {{ ctx.output_format }} in the prompt so the LLM knows how to format the output.
      3. You do not need to specify to "answer in JSON format". Only write in the prompt brief instruction, and any other task-specific things to keep in mind for the task.
      4. Write a {{ _.role("user") }} tag to indicate where the user's inputs start. So if there's a convo you can write
      #"{{ _.role("user") }} {{ some-variable }}"#

      DO NOT REPEAT output schema fields in the prompt. They are included with {{ "{{ ctx.output_format }}" }}.
      ```baml
      class TweetAnalysis {
        mainTopic string @description("The primary topic or subject matter of the tweet")
        isSpam bool @description("Whether the tweet appears to be spam")
      }

      function ClassifyTweets(tweets: string[]) -> TweetAnalysis[] {
        client "openai/gpt-4o-mini"
        prompt #"
          Analyze each of the following tweets and classify them.

          {{ ctx.output_format }}

          {{ _.role("user") }} {{ tweets }}
        "#
      }
    ```
    </Prompt>
    </Functions>

    <Usage in other languages>
    You can use BAML in python, typescript, and other languages.

    ```python
    import asyncio
    from baml_client import b // this client is autogenerated
    from baml_client.types import WeatherAPI

    def main():
        # In python, BAML functions are synchronous.
        weather_info = b.UseTool("What's the weather like in San Francisco?")
        print(weather_info)
        assert isinstance(weather_info, WeatherAPI)
        print(f"City: {weather_info.city}")
        print(f"Time of Day: {weather_info.timeOfDay}")

    if __name__ == '__main__':
        main()
    ```

    ```typescript
    import { b } from './baml_client' // this client is autogenerated
    import { WeatherAPI } from './baml_client/types'
    import assert from 'assert'

    const main = async () => {
      const weatherInfo = await b.UseTool("What's the weather like in San Francisco?")
      console.log(weatherInfo)
      assert(weatherInfo instanceof WeatherAPI)
      console.log(`City: ${weatherInfo.city}`)
      console.log(`Time of Day: ${weatherInfo.timeOfDay}`)
        }
    ```
    </Usage>

    <Tool Use>
    Here's an example of how tools work in BAML:

    1. Define tool classes that represent the structured output you want
    2. Create a function that returns one of those tool classes
    3. The function's prompt will automatically format user messages and add output validation

    The LLM will choose which tool to call, and your python code will handle the tool call with the LLM's chosen parameters.

    ```baml
    // Tool classes define the structure of possible outputs
    class ChatMessage {
      role "user" | "assistant"
      content string
    }

    class WeatherAPI {
      city string @description("the user's city")
      timeOfDay string @description("As an ISO8601 timestamp")
    }

    // Function that can return different tool classes
    function UseTool(user_messages: ChatMessage[]) -> WeatherAPI | MyOtherAPI {
      client CustomSonnet
      prompt #"
        You are a helpful assistant that can use different tools to help users. Based on their message, choose the appropriate tool to use.

        {{ "{{ ctx.output_format }}" }}

        User message:
        {% for message in .....(jinja iterator) %}
        {{ _.role(message.role)}} {{ message.content }}
        {% endfor %}
      "#
    }
    ```

    ```python
    import asyncio
    from baml_client import b
    from baml_client.types import WeatherAPI, MyOtherAPI

    async def main():
        tool = b.UseTool("What's the weather like in San Francisco?")
        print(tool)

        if isinstance(tool, WeatherAPI):
            print(f"Weather API called:")
            print(f"City: {tool.city}")
            print(f"Time of Day: {tool.timeOfDay}")
        elif isinstance(tool, MyOtherAPI):
            print(f"MyOtherAPI called:")
            # Handle MyOtherAPI specific attributes here

    if __name__ == '__main__':
        main()
    ```
    </Tool Use>

    <Collecting usage>
    ```python
    from baml_client import b
    from baml_py import Collector

    # Create a collector with optional name
    collector = Collector(name="my-collector")

    # Use it with a function call
    result = b.ExtractResume("...", baml_options={"collector": collector})

    # Access logging information
    print(collector.last.usage)  # Print usage metrics
    print(collector.last.raw_llm_response)  # Print final response as string
    # since there may be retries, print the last http response received
    print(collector.last.calls[-1].http_response)
    ```

    ```typescript
    import { b } from 'baml_client'
    import { Collector } from '@boundaryml/baml'

    // Create a collector with optional name
    const collector = new Collector("my-collector")

    // Use it with a function call
    const result = await b.ExtractResume("...", { collector })

    // Access logging information
    console.log(collector.last?.usage)  // Print usage metrics
    console.log(collector.last?.rawLlmResponse)  // Print final response
    // since there may be retries, print the last http response received
    console.log(collector.last?.calls[-1].httpResponse)

    ```

    Users can define LLM clients and types dynamically at runtime (in python) as well using the "Client Registry" feature or the Dynamic Type feature.

    ---
    If you are not sure of the answer (you're not sure how to write the code), you can tell the user to join the Discord server and ask the question there (we respond very fast)

tabs:
  home:
    display-name: Home
    icon: fa-solid fa-house
    slug: home
  guides:
    display-name: Guide
    icon: fa-solid fa-book
    slug: guide
  examples:
    display-name: Examples
    icon: fa-solid fa-grid-2
  reference:
    display-name: BAML Reference
    icon: fa-solid fa-code
    slug: ref
  # paid-tooling:
  #   display-name: Paid Offerings
  #   icon: fa-solid fa-dollar-sign
  #   slug: paid-tooling
  playground:
    display-name: Playground
    icon: fa-solid fa-play
    href: https://promptfiddle.com
  changelog:
    display-name: Changelog
    icon: fa-regular fa-history
    slug: changelog
navigation:
  - tab: home
    layout:
      - page: Welcome
        path: pages/welcome.mdx
  - tab: guides
    layout:
      - section: Introduction
        contents:
          - page: What is BAML?
            icon: fa-regular fa-question-circle
            path: 01-guide/what-are-function-definitions.mdx
          - page: What's the baml_src folder
            icon: fa-regular fa-folder
            path: 01-guide/what-is-baml_src.mdx
            slug: baml_src
          - page: What's baml_client
            icon: fa-regular fa-folder-gear
            path: 01-guide/what-is-baml_client.mdx
            slug: baml_client
      - section: "Installation: Editors"
        contents:
          - page: VSCode Extension
            icon: fa-brands fa-microsoft
            path: 01-guide/01-editors/vscode.mdx
          - page: Cursor Extension
            icon: fa-brands fa-microsoft
            path: 01-guide/01-editors/cursor.mdx
          - page: Others
            icon: fa-brands fa-microsoft
            path: 01-guide/01-editors/others.mdx
      - section: "Installation: Language"
        contents:
          - page: Python
            icon: fa-brands fa-python
            path: 01-guide/02-languages/python.mdx
          - page: Typescript
            icon: fa-brands fa-js
            path: 01-guide/02-languages/typescript.mdx
          - page: Ruby
            icon: fa-regular fa-gem
            path: 01-guide/02-languages/ruby.mdx
          - page: REST API (other languages)
            icon: fa-regular fa-network-wired
            path: 01-guide/02-languages/rest.mdx
      - section: Framework Integration
        icon: fa-solid fa-plug
        contents:
          - section: React/Next.js
            icon: fa-brands fa-react
            contents:
              - page: Quick Start
                icon: fa-regular fa-rocket
                path: 01-guide/08-frameworks/01-react-nextjs/01-quick-start.mdx
              - page: Building a Chatbot
                icon: fa-solid fa-robot
                path: 01-guide/08-frameworks/01-react-nextjs/02-chatbot.mdx
      - section: Development
        contents:
          - page: Environment Variables
            icon: fa-regular fa-cogs
            path: 01-guide/03-development/environment-variables.mdx
          - page: Terminal Logs
            icon: fa-regular fa-file-lines
            path: 01-guide/03-development/terminal-logs.mdx
          - page: Upgrade BAML versions
            icon: fa-regular fa-circle-arrow-up
            path: 01-guide/03-development/upgrade-baml-versions.mdx
          - section: Deploying
            icon: fa-regular fa-rocket
            contents:
              - page: AWS
                icon: fa-brands fa-aws
                path: 01-guide/03-development/deploying/aws.mdx
              - page: Docker
                icon: fa-brands fa-docker
                path: 01-guide/03-development/deploying/docker.mdx
              - page: Docker (REST API)
                icon: fa-brands fa-docker
                path: 01-guide/03-development/deploying/openapi.mdx
      - section: BAML Basics
        contents:
          - page: Prompting with BAML
            icon: fa-solid fa-terminal
            path: 01-guide/04-baml-basics/my-first-function.mdx
          - page: Switching LLMs
            slug: switching-llms
            icon: fa-regular fa-random
            path: 01-guide/04-baml-basics/switching-llms.mdx
          - page: Testing functions
            icon: fa-regular fa-vial
            path: 01-guide/04-baml-basics/testing-functions.mdx
          - page: Streaming
            icon: fa-regular fa-faucet
            path: 01-guide/04-baml-basics/streaming.mdx
          - page: Multi-Modal (Images / Audio)
            icon: fa-regular fa-image
            path: 01-guide/04-baml-basics/multi-modal.mdx
          - page: Error Handling
            icon: fa-regular fa-triangle-exclamation
            path: 01-guide/04-baml-basics/error-handling.mdx
          - page: Concurrent Calls
            icon: fa-regular fa-clock-rotate-left
            path: 01-guide/04-baml-basics/concurrent-calls.mdx

      - section: BAML Advanced
        contents:
          - page: Collector (track tokens)
            icon: fa-regular fa-wave-pulse
            path: 01-guide/05-baml-advanced/collector.mdx
          - page: LLM Client Registry
            icon: fa-regular fa-gears
            path: 01-guide/05-baml-advanced/client-registry.mdx
          - page: Dynamic Types
            icon: fa-solid fa-person-running
            path: 01-guide/05-baml-advanced/dynamic-types.mdx
            slug: guide/baml-advanced/dynamic-types
          - page: Reusing Prompt Snippets
            icon: fa-regular fa-repeat
            path: 01-guide/05-baml-advanced/reusing-prompt-snippets.mdx
          - page: Prompt Caching / Message Role Metadata
            icon: fa-regular fa-database
            path: 01-guide/05-baml-advanced/prompt-caching.mdx
          - page: Checks and Asserts
            icon: fa-regular fa-check-circle
            path: 01-guide/05-baml-advanced/checks-and-asserts.mdx
          - page: Modular API
            icon: fa-regular fa-cubes
            path: 01-guide/05-baml-advanced/modular-api.mdx
      - section: Boundary Cloud
        contents:
          # - section: Functions
          #   icon: fa-cloud
          #   contents:
          #     - page: Get Started
          #       path: 01-guide/functions/get-started.mdx
          #     - page: Using OpenAPI
          #       path: 01-guide/functions/using-openapi.mdx
          #     - page: Environment Variables
          #       path: 01-guide/functions/environment-variables.mdx
          - section: Observability
            icon: fa-chart-simple
            contents:
              - page: Tracking Usage
                icon: fa-regular fa-bar-chart
                path: 01-guide/07-observability/studio.mdx
      - section: Comparisons
        contents:
          - page: BAML vs Marvin
            icon: fa-solid fa-magnifying-glass
            path: 01-guide/09-comparisons/marvin.mdx
          - page: BAML vs Pydantic
            icon: fa-solid fa-magnifying-glass
            path: 01-guide/09-comparisons/pydantic.mdx
      - page: Contact
        icon: fa-regular fa-envelope
        path: 01-guide/contact.mdx
  - tab: examples
    layout:
      - page: Interactive Examples
        icon: fa-solid fa-play
        path: 02-examples/interactive-examples.mdx
      - section: Prompt Engineering
        contents:
          - page: Reducing Hallucinations
            icon: fa-regular fa-person-fairy
            path: 01-guide/06-prompt-engineering/hallucinations.mdx
          - page: Classification
            icon: fa-regular fa-tags
            path: 01-guide/06-prompt-engineering/classification.mdx
          - page: Chat
            icon: fa-regular fa-comments
            path: 01-guide/06-prompt-engineering/chat-history.mdx
          - page: Tools / Function Calling
            icon: fa-regular fa-wrench
            path: 01-guide/06-prompt-engineering/tools.mdx
          # - page: Zero shot prompting
          #   icon: fa-regular fa-bullseye
          #   path: 01-guide/introduction.mdx
          # - page: Few shot prompting
          #   icon: fa-regular fa-dice-three
          #   path: 01-guide/introduction.mdx
          - page: Chain of Thought
            icon: fa-solid fa-brain
            path: 01-guide/06-prompt-engineering/chain-of-thought.mdx
          - page: Symbol Tuning
            icon: fa-regular fa-adjust
            path: 01-guide/06-prompt-engineering/symbol-tuning.mdx
          - page: PII Data Extraction / Scrubbing
            icon: fa-regular fa-user-cog
            path: 01-guide/06-prompt-engineering/pii-data-extraction.mdx
          - page: Action Item Extraction
            icon: fa-regular fa-list-check
            path: 01-guide/06-prompt-engineering/action-items.mdx
          # - page: Self-Consistency Prompting
          #   icon: fa-regular fa-sync-alt
          #   path: 01-guide/introduction.mdx
          # - page: Prompt Chaining
          #   icon: fa-regular fa-link
          #   path: 01-guide/introduction.mdx
          - page: Retrieval Augmented Generation
            icon: fa-regular fa-database
            path: 01-guide/06-prompt-engineering/rag.mdx
      # - section: Python
      #   icon: fa-brands fa-python
      #   contents:
      #     - page: Hello World
      #       icon: fa-regular fa-rocket
      #       path: 01-guide/introduction.mdx
      #     - page: FastAPI + RAG + streaming
      #       icon: fa-regular fa-database
      #       path: 01-guide/introduction.mdx
      #     - page: Flask + ChatBot
      #       icon: fa-regular fa-comments
      #       path: 01-guide/introduction.mdx
      #     - page: Reflex + Receipt Parsing
      #       icon: fa-regular fa-receipt
      #       path: 01-guide/introduction.mdx
      #     - page: Parsing Pdfs
      #       icon: fa-regular fa-file-pdf
      #       path: 01-guide/introduction.mdx
      #     - page: Web scraping with Selenium
      #       icon: fa-regular fa-globe
      #       path: 01-guide/introduction.mdx
      # - section: Typescript
      #   icon: fa-brands fa-js
      #   contents:
      #     - page: Hello World
      #       icon: fa-regular fa-rocket
      #       path: 01-guide/introduction.mdx
      #     - page: NextJS + RAG + streaming
      #       icon: fa-regular fa-database
      #       path: 01-guide/introduction.mdx
      #     - page: React + Express + ChatBot
      #       icon: fa-regular fa-comments
      #       path: 01-guide/introduction.mdx
      #     - page: NextJS parsing Pdfs
      #       icon: fa-regular fa-file-pdf
      #       path: 01-guide/introduction.mdx
      #     - page: Web scraping with Playwright
      #       icon: fa-regular fa-globe
      #       path: 01-guide/introduction.mdx
      # - section: Ruby
      #   icon: fa-solid fa-gem
      #   contents:
      #     - page: Hello world
      #       icon: fa-regular fa-rocket
      #       path: 01-guide/introduction.mdx
      #     - page: Rails + RAG + streaming
      #       icon: fa-regular fa-database
      #       path: 01-guide/introduction.mdx
      # - section: Rest API Hello World
      #   icon: fa-regular fa-network-wired
      #   contents:
      #     - page: Ruby
      #       icon: fa-solid fa-gem
      #       path: 01-guide/introduction.mdx
      #     - page: Java
      #       icon: fa-brands fa-java
      #       path: 01-guide/introduction.mdx
      #     - page: Go
      #       icon: fa-brands fa-golang
      #       path: 01-guide/introduction.mdx
      #     - page: C++
      #       icon: fa-brands fa-cuttlefish
      #       path: 01-guide/introduction.mdx
      #     - page: Rust
      #       icon: fa-brands fa-rust
      #       path: 01-guide/introduction.mdx
      #     - page: PHP
      #       icon: fa-brands fa-php
      #       path: 01-guide/introduction.mdx
      #     - page: b
      #       path: 01-guide/introduction.mdx
      #     - page: async_client
      #       path: 01-guide/introduction.mdx
      #     - page: sync_client
      #       path: 01-guide/introduction.mdx
      #     - page: reset_baml_env_vars
      #       path: 01-guide/introduction.mdx
      #     - page: trace
      #       path: 01-guide/introduction.mdx
      #     - page: set_tags
      #       path: 01-guide/introduction.mdx
      # - section: "baml_client: Typescript"
      #   contents:
      #     - page: TypeBuilder
      #       path: 01-guide/introduction.mdx
      #     - page: ClientRegistry
      #       path: 01-guide/introduction.mdx
      #     - page: BamlError
      #       path: 01-guide/introduction.mdx
      #     - page: BamlImageTs
      #       path: 01-guide/introduction.mdx
      #     - page: BamlAudioTs
      #       path: 01-guide/introduction.mdx
      #     - page: b
      #       path: 01-guide/introduction.mdx
      #     - page: async_client
      #       path: 01-guide/introduction.mdx
      #     - page: sync_client
      #       path: 01-guide/introduction.mdx
      #     - page: resetBamlEnvVars
      #       path: 01-guide/introduction.mdx
      #     - page: trace_async
      #       path: 01-guide/introduction.mdx
      #     - page: trace_sync
      #       path: 01-guide/introduction.mdx
      #     - page: set_tags
      #       path: 01-guide/introduction.mdx
  - tab: reference
    layout:
      #     - page: Changelog
      #       icon: fa-regular fa-history
      #       path: ./Changelog.mdx

      # - section: Boundary Tools
      #   contents:
      #     - api: Document Extraction API
      #       icon: fa-regular fa-dollar-sign
      #       slug: reference/extract
      #       display-errors: true
      #       layout:
      #         - POST /extract
      #         - page: Extraction Examples
      #           path: reference/extract/examples.mdx
      #           slug: examples
      - page: Overview
        path: 03-reference/overview.mdx

      - section: baml-cli
        contents:
          - page: init
            path: 03-reference/baml-cli/init.mdx
          - page: generate
            path: 03-reference/baml-cli/generate.mdx
          - page: test
            path: 03-reference/baml-cli/test.mdx
          - page: serve
            path: 03-reference/baml-cli/serve.mdx
          - page: dev
            path: 03-reference/baml-cli/dev.mdx
          - page: fmt
            path: 03-reference/baml-cli/fmt.mdx
      - section: Language Reference
        slug: baml
        contents:
          - section: General BAML Syntax
            contents:
              - page: comments
                path: 03-reference/baml/comments.mdx
              - page: Environment Variables
                path: 03-reference/baml/env-vars.mdx
              - page: string
                path: 03-reference/baml/string.mdx
              - page: "int / float"
                path: 03-reference/baml/int-float.mdx
              - page: bool
                path: 03-reference/baml/bool.mdx
              - page: array (list)
                path: 03-reference/baml/array.mdx
              - page: map (dictionary)
                path: 03-reference/baml/map.mdx
              - page: "image / audio"
                slug: media
                path: 03-reference/baml/media.mdx
          - page: Types
            path: 03-reference/baml/types.mdx
          - page: function
            path: 03-reference/baml/function.mdx
          - page: test
            path: 03-reference/baml/test.mdx
          - page: template_string
            path: 03-reference/baml/template_string.mdx
          - page: "client<llm>"
            path: 03-reference/baml/client-llm.mdx
          - page: class
            path: 03-reference/baml/class.mdx
          - page: enum
            path: 03-reference/baml/enum.mdx
          - page: generator
            path: 03-reference/generator.mdx
      - section: Generated baml_client
        slug: baml_client
        contents:
          - page: with_options(..)
            path: 03-reference/baml_client/with_options.mdx
          - page: Collector
            path: 03-reference/baml_client/collector.mdx
            slug: collector
          - page: logging / env vars
            slug: config
            path: 03-reference/baml_client/config.mdx
          - page: AsyncClient / SyncClient
            slug: client
            path: 03-reference/baml_client/client.mdx
          - page: TypeBuilder
            path: 03-reference/baml_client/typebuilder.mdx
          - page: ClientRegistry
            path: 01-guide/05-baml-advanced/client-registry.mdx
          - page: Multimodal
            slug: media
            path: 03-reference/baml_client/media.mdx
          - page: Image
            slug: image
            path: 03-reference/baml_client/image.mdx
          - page: Audio
            slug: audio
            path: 03-reference/baml_client/audio.mdx
          - page: Pdf
            slug: pdf
            path: 03-reference/baml_client/pdf.mdx
          - page: Video
            slug: video
            path: 03-reference/baml_client/video.mdx
          - section: Errors
            contents:
              - page: Overview
                path: 03-reference/baml_client/errors/overview.mdx
              - page: BamlValidationError
                path: 03-reference/baml_client/errors/baml-validation-error.mdx
              - page: BamlClientFinishReasonError
                path: 03-reference/baml_client/errors/baml-client-finish-reason-error.mdx
          - section: React/Next.js
            contents:
              - page: use{FunctionName} Hook
                path: 03-reference/baml_client/react-nextjs/use-function-name.mdx
              - page: HookInput
                path: 03-reference/baml_client/react-nextjs/hook-input.mdx
              - page: HookOutput
                path: 03-reference/baml_client/react-nextjs/hook-output.mdx
              - page: HookData
                path: 03-reference/baml_client/react-nextjs/hook-data.mdx
      - section: Attributes
        contents:
          - page: What are attributes?
            path: 03-reference/baml/attributes/attributes-overview.mdx
          - page: "@alias / @@alias"
            slug: alias
            path: 03-reference/baml/attributes/alias.mdx
          - page: "@description / @@description"
            slug: description
            path: 03-reference/baml/attributes/description.mdx
          - page: "@skip"
            path: 03-reference/baml/attributes/skip.mdx
          - page: "@assert"
            path: 03-reference/baml/attributes/assert.mdx
          - page: "@check"
            path: 03-reference/baml/attributes/check.mdx
          - page: "Jinja in Attributes"
            path: 03-reference/baml/attributes/jinja-checks-and-asserts.mdx
          - page: "@@dynamic"
            path: 03-reference/baml/attributes/dynamic.mdx
      - section: LLM Client Providers
        contents:
          - page: "Overview"
            path: 03-reference/baml/client-llm.mdx
          - page: "AWS Bedrock"
            path: 03-reference/baml/clients/providers/aws-bedrock.mdx
          - page: "Anthropic"
            path: 03-reference/baml/clients/providers/anthropic.mdx
          - page: "Google AI: Gemini"
            path: 03-reference/baml/clients/providers/google-ai.mdx
          - page: "Google: Vertex"
            path: 03-reference/baml/clients/providers/vertex.mdx
          - page: "OpenAI"
            path: 03-reference/baml/clients/providers/openai.mdx
          - page: "OpenAI Responses API"
            path: 03-reference/baml/clients/providers/openai-responses.mdx
          - page: "OpenAI from Azure"
            path: 03-reference/baml/clients/providers/azure.mdx
          - page: "openai-generic"
            path: 03-reference/baml/clients/providers/openai-generic.mdx
          - page: "Azure AI Foundary (openai-generic)"
            slug: azure-ai-foundary
            path: 03-reference/baml/clients/providers/azure-ai-foundary.mdx
          - page: "Cerebras (openai-generic)"
            slug: cerebras
            path: 03-reference/baml/clients/providers/cerebras.mdx
          - page: "Groq (openai-generic)"
            slug: groq
            path: 03-reference/baml/clients/providers/groq.mdx
          - page: "Hugging Face (openai-generic)"
            slug: huggingface
            path: 03-reference/baml/clients/providers/huggingface.mdx
          - page: "Keywords AI (openai-generic)"
            slug: keywordsai
            path: 03-reference/baml/clients/providers/keywordsai.mdx
          - page: "Llama API (openai-generic)"
            slug: llama-api
            path: 03-reference/baml/clients/providers/llama-api.mdx
          - page: "Litellm (openai-generic)"
            slug: litellm
            path: 03-reference/baml/clients/providers/litellm.mdx
          - page: "LM Studio (openai-generic)"
            slug: lmstudio
            path: 03-reference/baml/clients/providers/lmstudio.mdx
          - page: "Ollama (openai-generic)"
            slug: ollama
            path: 03-reference/baml/clients/providers/ollama.mdx
          - page: "OpenRouter (openai-generic)"
            slug: openrouter
            path: 03-reference/baml/clients/providers/openrouter.mdx
          - page: "Tinfoil (openai-generic)"
            slug: tinfoil
            path: 03-reference/baml/clients/providers/tinfoil.mdx
          - page: "TogetherAI (openai-generic)"
            slug: together
            path: 03-reference/baml/clients/providers/together.mdx
          - page: "Unify AI (openai-generic)"
            slug: unify
            path: 03-reference/baml/clients/providers/unify.mdx
          - page: "vLLM (openai-generic)"
            slug: vllm
            path: 03-reference/baml/clients/providers/vllm.mdx
      - section: LLM Client Strategies
        contents:
          - page: "Retry Policy"
            path: 03-reference/baml/clients/strategy/retry.mdx
          - page: "Fallback"
            path: 03-reference/baml/clients/strategy/fallback.mdx
          - page: "Round Robin"
            path: 03-reference/baml/clients/strategy/round-robin.mdx

      - section: Prompt Syntax
        contents:
          - page: What is jinja?
            path: 03-reference/baml/prompt-syntax/what-is-jinja.mdx
          - page: "ctx.output_format"
            path: 03-reference/baml/prompt-syntax/output-format.mdx
          - page: "ctx.client"
            path: 03-reference/baml/prompt-syntax/ctx.mdx
          - page: "_.role"
            path: 03-reference/baml/prompt-syntax/role.mdx
          - page: Variables
            path: 03-reference/baml/prompt-syntax/variables.mdx
          - page: Conditionals
            path: 03-reference/baml/prompt-syntax/conditionals.mdx
          - page: Loops
            path: 03-reference/baml/prompt-syntax/loops.mdx
      - section: Editor Extension Settings
        contents:
          - page: baml.cliPath
            path: 03-reference/vscode-ext/clipath.mdx
          - page: baml.generateCodeOnSave
            path: 03-reference/vscode-ext/generateCodeOnSave.mdx
          - page: baml.enablePlaygroundProxy
            path: 03-reference/vscode-ext/enablePlaygroundProxy.mdx
          - page: baml.syncExtensionToGeneratorVersion
            path: 03-reference/vscode-ext/syncExtensionToGeneratorVersion.mdx
      # - section: Boundary Extraction API
      #   contents:
      #     - api: API Reference
      #       layout:
      #         - POST /extract
      #         - page: Extraction Examples
      #           path: 03-reference/extract/examples.mdx
      #       slug: extract
      #       summary: 03-reference/extract/summary.mdx
      #       display-errors: true
      # - section: Boundary Cloud API
      #   contents:
      #     - page: Limits
      #       path: 03-reference/cloud/limits.mdx

      # - section: "baml_client: Python"
      #   contents:
      #     - page: TypeBuilder
      #       path: 01-guide/introduction.mdx
      #     - page: ClientRegistry
      #       path: 01-guide/introduction.mdx
      #     - page: BamlError
      #       path: 01-guide/introduction.mdx
      #     - page: BamlImagePy
      #       path: 01-guide/introduction.mdx
      #     - page: BamlAudioPy
      #       path: 01-guide/introduction.mdx
      #     - page: b
      #       path: 01-guide/introduction.mdx
      #     - page: async_client
      #       path: 01-guide/introduction.mdx
      #     - page: sync_client
      #       path: 01-guide/introduction.mdx
      #     - page: reset_baml_env_vars
      #       path: 01-guide/introduction.mdx
      #     - page: trace
      #       path: 01-guide/introduction.mdx
      #     - page: set_tags
      #       path: 01-guide/introduction.mdx
      # - section: "baml_client: Typescript"
      #   contents:
      #     - page: TypeBuilder
      #       path: 01-guide/introduction.mdx
      #     - page: ClientRegistry
      #       path: 01-guide/introduction.mdx
      #     - page: BamlError
      #       path: 01-guide/introduction.mdx
      #     - page: BamlImageTs
      #       path: 01-guide/introduction.mdx
      #     - page: BamlAudioTs
      #       path: 01-guide/introduction.mdx
      #     - page: b
      #       path: 01-guide/introduction.mdx
      #     - page: async_client
      #       path: 01-guide/introduction.mdx
      #     - page: sync_client
      #       path: 01-guide/introduction.mdx
      #     - page: resetBamlEnvVars
      #       path: 01-guide/introduction.mdx
      #     - page: trace_async
      #       path: 01-guide/introduction.mdx
      #     - page: trace_sync
      #       path: 01-guide/introduction.mdx
      #     - page: set_tags
      #       path: 01-guide/introduction.mdx
  - tab: playground
  - tab: changelog
    layout:
      - page: Changelog
        icon: fa-regular fa-history
        path: pages/changelog.mdx

  # - tab: paid-tooling
  #   layout:
  #     - section: Extract API
  #       contents:
  #         - api: API Reference
  #           slug: reference/extract
  #           summary: reference/extract/summary.mdx
  #           display-errors: true
  #           layout:
  #             - POST /extract
  #             - page: Extraction Examples
  #               path: reference/extract/examples.mdx
  #               slug: examples

navbar-links:
  - type: github
    value: https://github.com/boundaryml/baml
  - type: filled
    text: Help on Discord
    url: https://discord.gg/BTNBeXGuaS

colors:
  accent-primary:
    light: "#6025d1"
    dark: "#b794ff"
  background:
    light: "#ffffff"
    dark: "#0b0d0e"
  border:
    light: "#e2e8f0cc"
    dark: "#2e2e2ecc"
  sidebar-background:
    light: "#ffffff"
    dark: "#0b0d0e"
  header-background:
    light: "#ffffffb3"
    dark: "#0b0d0eb3"
  card-background:
    light: "#ffffff"
    dark: "#0b0d0e"
logo:
  light: assets/favicon.ico
  dark: assets/favicon.ico
  height: 40
favicon: assets/favicon.ico
css: assets/styles.css
layout:
  page-width: full
  disable-header: false
  searchbar-placement: header
  header-height: 54px
  tabs-placement: header

typography:
  bodyFont:
    name: OpenSans
    paths:
      - path: ./assets/open-sans-v17-all-charsets-regular.woff2
        weight: "400"
      - path: ./assets/open-sans-v17-all-charsets-italic.woff2
        style: italic
  headingsFont:
    name: OpenSans
    path: ./assets/open-sans-v17-all-charsets-700.woff2
    weight: "600"

# Legacy docs
redirects:
  - source: "/guide/baml-advanced/dynamic-runtime-types"
    destination: "/guide/baml-advanced/dynamic-types"
  - source: "/guide/baml-basics/switching-ll-ms"
    destination: "/guide/baml-basics/switching-llms"
  - source: "/docs/get-started/what-is-baml"
    destination: "/guide/introduction/what-is-baml"
  - source: "/docs/get-started/interactive-demos"
    destination: "/examples/interactive-examples"
  - source: "/docs/get-started/quickstart/python"
    destination: "/guide/installation-language/python"
  - source: "/docs/get-started/quickstart/typescript"
    destination: "/guide/installation-language/typescript"
  - source: "/docs/get-started/quickstart/ruby"
    destination: "/guide/installation-language/ruby"
  - source: "/docs/get-started/quickstart/openapi"
    destination: "/guide/installation-language/rest-api-other-languages"
  - source: "/docs/get-started/quickstart/editors-vscode"
    destination: "/guide/installation-editors/vs-code-extension"
  - source: "/docs/get-started/quickstart/editors-other"
    destination: "/guide/installation-editors/others"
  - source: "/docs/get-started/debugging/vscode-playground"
    destination: "/guide/development/terminal-logs"
  - source: "/docs/get-started/debugging/enable-logging"
    destination: "/guide/development/terminal-logs"
  - source: "/baml/get-started/debugging/exception-handling"
    destination: "/guide/baml-basics/error-handling"
  - source: "/docs/get-started/deploying/docker"
    destination: "/guide/development/deploying/docker"
  - source: "/docs/get-started/deploying/nextjs"
    destination: "/guide/development/deploying/nextjs"
  - source: "/docs/get-started/deploying/aws"
    destination: "/guide/development/deploying/aws"
  - source: "/docs/get-started/deploying/openapi"
    destination: "/guide/development/deploying/openapi"
  - source: "/docs/snippets/syntax/comments"
    destination: "/ref/baml/general-baml-syntax/comments"
  - source: "/docs/snippets/syntax/strings"
    destination: "/ref/baml/general-baml-syntax/string"
  - source: "/docs/snippets/syntax/lists"
    destination: "/ref/baml/general-baml-syntax/array-list"
  - source: "/docs/snippets/syntax/dictionaries"
    destination: "/ref/baml/general-baml-syntax/map-dictionary"
  - source: "/docs/snippets/supported-types"
    destination: "/ref/baml/types"
  - source: "/docs/snippets/clients/overview"
    destination: "/ref/baml/client-llm"
  - source: "/docs/snippets/clients/providers/anthropic"
    destination: "/ref/llm-client-providers/anthropic"
  - source: "/docs/snippets/clients/providers/aws-bedrock"
    destination: "/ref/llm-client-providers/aws-bedrock"
  - source: "/docs/snippets/clients/providers/azure"
    destination: "/ref/llm-client-providers/open-ai-from-azure"
  - source: "/ref/llm-client-providers/azure"
    destination: "/ref/llm-client-providers/open-ai-from-azure"
  - source: "/docs/snippets/clients/providers/gemini"
    destination: "/ref/llm-client-providers/google-ai-gemini"
  - source: "/docs/snippets/clients/providers/groq"
    destination: "/ref/llm-client-providers/openai-generic-groq"
  - source: "/docs/snippets/clients/providers/huggingface"
    destination: "/ref/llm-client-providers/openai-generic-hugging-face"
  - source: "/docs/snippets/clients/providers/ollama"
    destination: "/ref/llm-client-providers/openai-generic-ollama"
  - source: "/docs/snippets/clients/providers/openai"
    destination: "/ref/llm-client-providers/open-ai"
  - source: "/docs/snippets/clients/providers/openai-responses"
    destination: "/ref/llm-client-providers/open-ai-responses-api"
  - source: "/docs/snippets/clients/providers/openai-generic"
    destination: "/ref/llm-client-providers/openai-generic"
  - source: "/docs/snippets/clients/providers/google-vertex"
    destination: "/ref/llm-client-providers/google-vertex"
  - source: "/docs/snippets/clients/providers/openrouter"
    destination: "/ref/llm-client-providers/openai-generic-open-router"
  - source: "/docs/snippets/clients/providers/together"
    destination: "/ref/llm-client-providers/openai-generic-together-ai"
  - source: "/docs/snippets/clients/providers/vertex"
    destination: "/ref/llm-client-providers/vertex"
  - source: "/docs/snippets/clients/providers/vllm"
    destination: "/ref/llm-client-providers/openai-generic-v-llm"
  - source: "/docs/snippets/clients/providers/lmstudio"
    destination: "/ref/llm-client-providers/openai-generic-lm-studio"
  - source: "/docs/snippets/clients/providers/keywordsai"
    destination: "/ref/llm-client-providers/openai-generic-keywords-ai"
  - source: "/docs/snippets/clients/fallback"
    destination: "/ref/llm-client-strategies/fallback"
  - source: "/docs/snippets/clients/round-robin"
    destination: "/ref/llm-client-strategies/round-robin"
  - source: "/docs/snippets/clients/retry"
    destination: "/ref/llm-client-strategies/retry-policy"
  - source: "/docs/snippets/functions/overview"
    destination: "/ref/baml/function"
  - source: "/docs/snippets/functions/classification"
    destination: "/guide/baml-basics/prompting-with-baml"
  - source: "/docs/snippets/functions/extraction"
    destination: "/guide/baml-basics/prompting-with-baml"
  - source: "/docs/snippets/functions/function-calling"
    destination: "/examples/prompt-engineering/tools-function-calling"
  - source: "/docs/snippets/class"
    destination: "/ref/baml/class"
  - source: "/docs/snippets/enum"
    destination: "/ref/baml/enum"
  - source: "/docs/snippets/prompt-syntax/what-is-jinja"
    destination: "/ref/prompt-syntax/what-is-jinja"
  - source: "/docs/snippets/prompt-syntax/output-format"
    destination: "/ref/prompt-syntax/ctx-output-format"
  - source: "/docs/snippets/prompt-syntax/roles"
    destination: "/ref/prompt-syntax/role"
  - source: "/docs/snippets/prompt-syntax/variables"
    destination: "/ref/prompt-syntax/variables"
  - source: "/docs/snippets/prompt-syntax/conditionals"
    destination: "/ref/prompt-syntax/conditionals"
  - source: "/docs/snippets/prompt-syntax/loops"
    destination: "/ref/prompt-syntax/loops"
  - source: "/docs/snippets/prompt-syntax/comments"
    destination: "/ref/baml/general-baml-syntax/comments"
  - source: "/docs/snippets/prompt-syntax/ctx"
    destination: "/ref/prompt-syntax/ctx-client"
  - source: "/docs/snippets/template-string"
    destination: "/ref/baml/template-string"
  - source: "/docs/snippets/test-cases"
    destination: "/ref/baml/test"
  - source: "/docs/calling-baml/dynamic-types"
    destination: "/guide/baml-advanced/dynamic-runtime-types"
  - source: "/docs/calling-baml/client-registry"
    destination: "/guide/baml-advanced/llm-client-registry"
  - source: "/docs/calling-baml/checks-and-asserts"
    destination: "/guide/baml-basics/error-handling"
  - source: "/docs/calling-baml/generate-baml-client"
    destination: "/ref/baml-client/type-builder"
  - source: "/docs/calling-baml/set-env-vars"
    destination: "/docs/guide/development/environment-variables"
  - source: "/docs/calling-baml/calling-functions"
    destination: "/guide/baml-basics/prompting-and-calling-ll-ms-with-baml"
  - source: "/docs/calling-baml/streaming"
    destination: "/guide/baml-basics/streaming"
  - source: "/docs/calling-baml/concurrent-calls"
    destination: "/guide/baml-basics/concurrent-calls"
  - source: "/docs/calling-baml/multi-modal"
    destination: "/guide/baml-basics/multi-modal"
  - source: "/docs/baml-nextjs/baml-nextjs"
    destination: "/guides/installation-language/next-js"
  - source: "/docs/observability/overview"
    destination: "/guide/observability/tracking-usage"
  - source: "/docs/observability/tracing-tagging"
    destination: "/guide/observability/tracking-usage"
  - source: "/docs/comparisons/marvin"
    destination: "/guide/comparisons/baml-vs-marvin"
  - source: "/docs/comparisons/pydantic"
    destination: "/guide/comparisons/baml-vs-pydantic"
  - source: "/contact"
    destination: "/guide/contact"
  - source: "/docs/reference/env-vars"
    destination: "/docs/guide/development/environment-variables"
  - source: "/docs/incidents/2024-07-10-ssrf-issue-in-fiddle-proxy"
    destination: "/changelog/changelog"
  - source: "/document-extraction-api/overview/docs/api"
    destination: "/ref/boundary-extraction-api/extract"
  - source: "/document-extraction-api/overview/docs/api/extract-data"
    destination: "/ref/boundary-extraction-api/extract"
  - source: "/document-extraction-api/overview/docs/api/extraction-examples"
    destination: "/ref/boundary-extraction-api/extract/examples"
  - source: "/ref/llm-client-providers/openai-generic-azure-ai-foundary"
    destination: "/ref/llm-client-providers/azure-ai-foundary"
  - source: "/ref/llm-client-providers/openai-generic-groq"
    destination: "/ref/llm-client-providers/groq"
  - source: "/ref/llm-client-providers/openai-generic-hugging-face"
    destination: "/ref/llm-client-providers/huggingface"
  - source: "/ref/llm-client-providers/openai-generic-keywords-ai"
    destination: "/ref/llm-client-providers/keywordsai"
  - source: "/ref/llm-client-providers/openai-generic-litellm"
    destination: "/ref/llm-client-providers/litellm"
  - source: "/ref/llm-client-providers/openai-generic-lm-studio"
    destination: "/ref/llm-client-providers/lmstudio"
  - source: "/ref/llm-client-providers/openai-generic-ollama"
    destination: "/ref/llm-client-providers/ollama"
  - source: "/ref/llm-client-providers/openai-generic-openrouter"
    destination: "/ref/llm-client-providers/openrouter"
  - source: "/ref/llm-client-providers/openai-generic-togetherai"
    destination: "/ref/llm-client-providers/together"
  - source: "/ref/llm-client-providers/openai-generic-unify-ai"
    destination: "/ref/llm-client-providers/unify"
  - source: "/ref/llm-client-providers/openai-generic-vllm"
    destination: "/ref/llm-client-providers/vllm"



================================================
FILE: fern/fern.config.json
================================================
{
  "organization": "boundary",
  "version": "0.60.14"
}



================================================
FILE: fern/generators.yml
================================================
api:
  specs:
    - openapi: ./openapi/openapi.yaml



================================================
FILE: fern/package.json
================================================
{
  "name": "@baml/fern",
  "version": "0.0.1",
  "private": true,
  "scripts": {
    "dev": "npx fern docs dev",
    "preview": "npx fern generate --preview --docs"
  },
  "devDependencies": {
    "fern-api": "^0.31.24"
  },
  "packageManager": "pnpm@9.12.0"
}



================================================
FILE: fern/.cursorrules
================================================
You are the world's best documentation writer, renowned for your clarity, precision, and engaging style. Every piece of documentation you produce is:

1. Clear and precise - no ambiguity, jargon, marketing language or unnecssarily complex language.
2. Concise—short, direct sentences and paragraphs.
3. Scientifically structured—organized like a research paper or technical white paper, with a logical flow and strict attention to detail.
4. Visually engaging—using line breaks, headings, and components to enhance readability.
5. Focused on user success — no marketing language or fluff; just the necessary information.

# Writing guidelines

- Titles must always start with an uppercase letter, followed by lowercase letters unless it is a name. Examples: Getting started, Text to speech, Conversational AI...
- No emojis or icons unless absolutely necessary.
- Scientific research tone—professional, factual, and straightforward.
- Avoid long text blocks. Use short paragraphs and line breaks.
- Do not use marketing/promotional language.
- Be concise, direct, and avoid wordiness.
- Tailor the tone and style depending on the location of the content.
  - The `docs` tab (/fern/docs folder) contains a mixture of technical and non-technical content.
    - The /fern/docs/pages/capabilities folder should not contain any code and should be easy to read for both non-technical and technical readers.
    - The /fern/docs/pages/workflows folder is tailored to non-technical readers (specifically enterprise customers) who need detailed step-by-step visual guides.
    - The /fern/docs/pages/developer-guides is strictly for technical readers. This contains detailed guides on how to use the SDK or API.
    - The best-practices folder contains both tech & non-technical content.
  - The `conversational-ai` tab (/fern/conversational-ai) contains content for the conversational-ai product. It is tailored to technical people but may be read by non-technical people.
  - The `api-reference` tab (/fern/api-reference) contains content for the API. It is tailored to technical people only.
- If the user asks you to update the changelog, you must create a new changelog file in the /fern/docs/pages/changelog folder with the following file name: `2024-10-13.md` (the date should be the current date).

  - The structure of the changelog should look something like this:

- Ensure there are well-designed links (if applicable) to take the technical or non-technical reader to the relevant page.

# Page structure

- Every `.mdx` file starts with:
  ```
  ---
  title: <insert title here, keep it short>
  subtitle: <insert subtitle here, keep it concise and short>
  ---
  ```
  - Example titles (good, short, first word capitalized):
    - Getting started
    - Text to speech
    - Streaming
    - API reference
    - Conversational AI
  - Example subtitles (concise, some starting with "Learn how to …" for guides):
    - Build your first conversational AI voice agent in 5 minutes.
    - Learn how to control delivery, pronunciation & emotion of text to speech.
- All documentation images are located in the non-nested /fern/assets/images folder. The path can be referenced in `.mdx` files as /assets/images/<file-name>.jpg/png/svg.

## Components

Use the following components whenever possible to enhance readability and structure.

### Accordions

````
<AccordionGroup>
  <Accordion title="Option 1">
    You can put other components inside Accordions.
    ```ts
    export function generateRandomNumber() {
      return Math.random();
    }
    ```
  </Accordion>
  <Accordion title="Option 2">
    This is a second option.
  </Accordion>

  <Accordion title="Option 3">
    This is a third option.
  </Accordion>
</AccordionGroup>
````

### Callouts (Tips, Notes, Warnings, etc.)

```
<Tip title="Example Callout" icon="leaf">
This Callout uses a title and a custom icon.
</Tip>
<Note>This adds a note in the content</Note>
<Warning>This raises a warning to watch out for</Warning>
<Error>This indicates a potential error</Error>
<Info>This draws attention to important information</Info>
<Tip>This suggests a helpful tip</Tip>
<Check>This brings us a checked status</Check>
```

### Cards & Card Groups

```
<Card
    title='Python'
    icon='brands python'
    href='https://github.com/fern-api/fern/tree/main/generators/python'
>
View Fern's Python SDK generator.
</Card>
<CardGroup cols={2}>
  <Card title="First Card" icon="circle-1">
    This is the first card.
  </Card>
  <Card title="Second Card" icon="circle-2">
    This is the second card.
  </Card>
  <Card title="Third Card" icon="circle-3">
    This is the third card.
  </Card>
  <Card title="Fourth Card" icon="circle-4">
    This is the fourth and final card.
  </Card>
</CardGroup>
```

### Code snippets

- Always use the focus attribute to highlight the code you want to highlight.
- `maxLines` is optional if it's long.
- `wordWrap` is optional if the full text should wrap and be visible.

```javascript focus={2-4} maxLines=10 wordWrap
console.log('Line 1');
console.log('Line 2');
console.log('Line 3');
console.log('Line 4');
console.log('Line 5');
```

### Code blocks

- Use code blocks for groups of code, especially if there are multiple languages or if it's a code example. Always start with Python as the default.

````
<CodeBlocks>
```javascript title="helloWorld.js"
console.log("Hello World");
````

```python title="hello_world.py"
print('Hello World!')
```

```java title="HelloWorld.java"
    class HelloWorld {
        public static void main(String[] args) {
            System.out.println("Hello, World!");
        }
    }
```

</CodeBlocks>
```

### Steps (for step-by-step guides)

```
<Steps>
  ### First Step
    Initial instructions.

  ### Second Step
    More instructions.

  ### Third Step
    Final Instructions
</Steps>

```

### Frames

- You must wrap every single image in a frame.
- Every frame must have `background="subtle"`
- Use captions only if the image is not self-explanatory.
- Use ![alt-title](image-url) as opposed to HTML `<img>` tags unless styling.

```
  <Frame
    caption="Beautiful mountains"
    background="subtle"
  >
      <img src="https://images.pexels.com/photos/1867601.jpeg" alt="Sample photo of mountains" />
  </Frame>

```

### Tabs (split up content into different sections)

```
<Tabs>
  <Tab title="First Tab">
    ☝️ Welcome to the content that you can only see inside the first Tab.
  </Tab>
  <Tab title="Second Tab">
    ✌️ Here's content that's only inside the second Tab.
  </Tab>
  <Tab title="Third Tab">
    💪 Here's content that's only inside the third Tab.
  </Tab>
</Tabs>

```

# Examples of a well-structured piece of documentation

- Ideally there would be links to either go to the workflows for non-technical users or the developer-guides for technical users.
- The page should be split into sections with a clear structure.

```
---
title: Text to speech
subtitle: Learn how to turn text into lifelike spoken audio with ElevenLabs.
---

## Overview

ElevenLabs [Text to Speech (TTS)](/docs/api-reference/text-to-speech) API turns text into lifelike audio with nuanced intonation, pacing and emotional awareness. [Our models](/docs/models) adapt to textual cues across 32 languages and multiple voice styles and can be used to:

- Narrate global media campaigns & ads
- Produce audiobooks in multiple languages with complex emotional delivery
- Stream real-time audio from text

Listen to a sample:

<elevenlabs-audio-player
    audio-title="George"
    audio-src="https://storage.googleapis.com/eleven-public-cdn/audio/marketing/george.mp3"
/>

Explore our [Voice Library](https://elevenlabs.io/community) to find the perfect voice for your project.

## Parameters

The `text-to-speech` endpoint converts text into natural-sounding speech using three core parameters:

- `model_id`: Determines the quality, speed, and language support
- `voice_id`: Specifies which voice to use (explore our [Voice Library](https://elevenlabs.io/community))
- `text`: The input text to be converted to speech
- `output_format`: Determines the audio format, quality, sampling rate & bitrate

### Voice quality

For real-time applications, Flash v2.5 provides ultra-low 75ms latency optimized for streaming, while Multilingual v2 delivers the highest quality audio with more nuanced expression.

Learn more about our [models](/docs/models).

### Voice options

ElevenLabs offers thousands of voices across 32 languages through multiple creation methods:

- [Voice Library](/docs/voice-library) with 3,000+ community-shared voices
- [Professional Voice Cloning](/docs/voice-cloning/professional) for highest-fidelity replicas
- [Instant Voice Cloning](/docs/voice-cloning/instant) for quick voice replication
- [Voice Design](/docs/voice-design) to generate custom voices from text descriptions

Learn more about our [voice creation options](/docs/voices).

## Supported formats

The default response format is "mp3", but other formats like "PCM", & "μ-law" are available.

- **MP3**
  - Sample rates: 22.05kHz - 44.1kHz
  - Bitrates: 32kbps - 192kbps
  - **Note**: Higher quality options require Creator tier or higher
- **PCM (S16LE)**
  - Sample rates: 16kHz - 44.1kHz
  - **Note**: Higher quality options require Pro tier or higher
- **μ-law**
  - 8kHz sample rate
  - Optimized for telephony applications

<Success>
  Higher quality audio options are only available on paid tiers - see our [pricing
  page](https://elevenlabs.io/pricing) for details.
</Success>

## Supported languages

<Markdown src="/snippets/v2-model-languages.mdx" />

<Markdown src="/snippets/v2-5-model-languages.mdx" />

Simply input text in any of our supported languages and select a matching voice from our [Voice Library](https://elevenlabs.io/community). For the most natural results, choose a voice with an accent that matches your target language and region.

## FAQ

<AccordionGroup>
  <Accordion title="Can I fine-tune the emotional range of the generated audio?">
    The models interpret emotional context directly from the text input. For example, adding
    descriptive text like "she said excitedly" or using exclamation marks will influence the speech
    emotion. Voice settings like Stability and Similarity help control the consistency, while the
    underlying emotion comes from textual cues.
  </Accordion>
  <Accordion title="Can I clone my own voice or a specific speaker's voice?">
    Yes. Instant Voice Cloning quickly mimics another speaker from short clips. For high-fidelity
    clones, check out our Professional Voice Clone.
  </Accordion>
  <Accordion title="Do I own the audio output?">
    Yes. You retain ownership of any audio you generate. However, commercial usage rights are only
    available with paid plans. With a paid subscription, you may use generated audio for commercial
    purposes and monetize the outputs if you own the IP rights to the input content.
  </Accordion>
  <Accordion title="How do I reduce latency for real-time cases?">
    Use the low-latency Flash models (Flash v2 or v2.5) optimized for near real-time conversational
    or interactive scenarios. See our [latency optimization guide](/docs/latency-optimization) for
    more details.
  </Accordion>
  <Accordion title="Why is my output sometimes inconsistent?">
    The models are nondeterministic. For consistency, use the optional seed parameter, though subtle
    differences may still occur.
  </Accordion>
  <Accordion title="What's the best practice for large text conversions?">
    Split long text into segments and use streaming for real-time playback and efficient processing.
    To maintain natural prosody flow between chunks, use `previous_text` or `previous_request_ids`.
  </Accordion>
</AccordionGroup>
```



================================================
FILE: fern/01-guide/contact.mdx
================================================

We have seen many different prompts for many use-cases. We'd love to hear about your prompt and how you use BAML.

Contact Us at [contact@boundaryml.com](mailto:contact@boundaryml.com)

or join our [Discord](https://discord.gg/BTNBeXGuaS)


================================================
FILE: fern/01-guide/introduction.mdx
================================================
[Empty file]


================================================
FILE: fern/01-guide/what-are-function-definitions.mdx
================================================
---
title: What is BAML?
---

The best way to understand BAML and its developer experience is to see it live in a demo (see below).


### Demo video
Here we write a BAML function definition, and then call it from a Python script.

<iframe src="https://fast.wistia.net/embed/iframe/5fxpquglde?seo=false&videoFoam=false" title="BAML Demo Video" allow="autoplay; fullscreen" allowtransparency="true" frameborder="0" scrolling="no" class="wistia_embed" name="wistia_embed" msallowfullscreen width="640" height="352"></iframe>
<script src="https://fast.wistia.net/assets/external/E-v1.js" async></script>

### Examples
- [Interactive NextJS app with streaming](https://baml-examples.vercel.app/examples/stream-object)
- [Starter boilerplates for Python, Typescript, Ruby, etc.](https://github.com/boundaryml/baml-examples)

### High-level Developer Flow

<Steps>
### Write a BAML function definition
```baml main.baml
class WeatherAPI {
  city string @description("the user's city")
  timeOfDay string @description("As an ISO8601 timestamp")
}

function UseTool(user_message: string) -> WeatherAPI {
  client "openai/gpt-4o"
  prompt #"
    Extract.... {# we will explain the rest in the guides #}
  "#
}
```
Here you can run tests in the VSCode Playground.

### Generate `baml_client` from those .baml files.
This is auto-generated code with all boilerplate to call the LLM endpoint, parse the output, fix broken JSON, and handle errors.
<img src="/assets/vscode/baml-client.png" />

### Call your function in any language
with type-safety, autocomplete, retry-logic, robust JSON parsing, etc..
<CodeGroup>
```python Python
import asyncio
from baml_client import b
from baml_client.types import WeatherAPI

def main():
    weather_info = b.UseTool("What's the weather like in San Francisco?")
    print(weather_info)
    assert isinstance(weather_info, WeatherAPI)
    print(f"City: {weather_info.city}")
    print(f"Time of Day: {weather_info.timeOfDay}")

if __name__ == '__main__':
    main()
```

```typescript TypeScript
import { b } from './baml_client'
import { WeatherAPI } from './baml_client/types'
import assert from 'assert'

const main = async () => {
  const weatherInfo = await b.UseTool("What's the weather like in San Francisco?")
  console.log(weatherInfo)
  assert(weatherInfo instanceof WeatherAPI)
  console.log(`City: ${weatherInfo.city}`)
  console.log(`Time of Day: ${weatherInfo.timeOfDay}`)
}
```

```ruby Ruby
require_relative "baml_client/client"

$b = Baml.Client

def main
  weather_info = $b.UseTool(user_message: "What's the weather like in San Francisco?")
  puts weather_info
  raise unless weather_info.is_a?(Baml::Types::WeatherAPI)
  puts "City: #{weather_info.city}"
  puts "Time of Day: #{weather_info.timeOfDay}"
end
```

```python Other Languages
# read the installation guide for other languages!
```
</CodeGroup>
</Steps>

Continue on to the [Installation Guides](/guide/installation-language) for your language to setup BAML in a few minutes!

You don't need to migrate 100% of your LLM code to BAML in one go! It works along-side any existing LLM framework.


================================================
FILE: fern/01-guide/what-is-baml_client.mdx
================================================
---
title: What is baml_client?
---

**baml_client** is the code that gets generated from your BAML files that transforms your BAML prompts into the same equivalent function in your language, with validated type-safe outputs.
<img src="/assets/vscode/baml-client.png" />
```python Python
from baml_client import b
resume_info = b.ExtractResume("....some text...")
```

This has all the boilerplate to:
1. call the LLM endpoint with the right parameters,
2. parse the output,
3. fix broken JSON (if any)
4. return the result in a nice typed object.
5. handle errors

In Python, your BAML types get converted to Pydantic models. In Typescript, they get converted to TypeScript types, and so on. **BAML acts like a universal type system that can be used in any language**.



### Generating baml_client

 Refer to the **[Installation](/guide/installation-language/python)** guides for how to set this up for your language, and how to generate it.

 But at a high-level, you just include a [generator block](/ref/baml/generator) in any of your BAML files.

<CodeBlocks>

```baml Python
generator target {
    // Valid values: "python/pydantic", "typescript", "ruby/sorbet"
    output_type "python/pydantic"

    // Where the generated code will be saved (relative to baml_src/)
    output_dir "../"

    // What interface you prefer to use for the generated code (sync/async)
    // Both are generated regardless of the choice, just modifies what is exported
    // at the top level
    default_client_mode "sync"

    // Version of runtime to generate code for (should match installed baml-py version)
    version "0.54.0"
}
```

```baml TypeScript
generator target {
    // Valid values: "python/pydantic", "typescript", "ruby/sorbet"
    output_type "typescript"

    // Where the generated code will be saved (relative to baml_src/)
    output_dir "../"

    // What interface you prefer to use for the generated code (sync/async)
    // Both are generated regardless of the choice, just modifies what is exported
    // at the top level
    default_client_mode "async"

    // Version of runtime to generate code for (should match the package @boundaryml/baml version)
    version "0.54.0"
}
```

```baml Ruby (beta)
generator target {
    // Valid values: "python/pydantic", "typescript", "ruby/sorbet"
    output_type "ruby/sorbet"

    // Where the generated code will be saved (relative to baml_src/)
    output_dir "../"

    // Version of runtime to generate code for (should match installed `baml` package version)
    version "0.54.0"
}
```

```baml OpenAPI
generator target {
    // Valid values: "python/pydantic", "typescript", "ruby/sorbet", "rest/openapi"
    output_type "rest/openapi"

    // Where the generated code will be saved (relative to baml_src/)
    output_dir "../"

    // Version of runtime to generate code for (should match installed `baml` package version)
    version "0.54.0"

    // 'baml-cli generate' will run this after generating openapi.yaml, to generate your OpenAPI client
    // This command will be run from within $output_dir
    on_generate "npx @openapitools/openapi-generator-cli generate -i openapi.yaml -g OPENAPI_CLIENT_TYPE -o ."
}
```
</CodeBlocks>

The `baml_client` transforms a BAML function into the same equivalent function in your language,




================================================
FILE: fern/01-guide/what-is-baml_src.mdx
================================================
---
title: What is baml_src?
---

**baml_src** is where you keep all your BAML files, and where all the prompt-related code lives. It must be named `baml_src` for our tooling to pick it up, but it can live wherever you want.

It helps keep your project organized, and makes it easy to separate prompt engineering from the rest of your code.

<img src="/assets/vscode/baml-client.png" />


Some things to note:
1. All declarations within this directory are accessible across all files contained in the `baml_src` folder.
2. You can have multiple files, and even nest subdirectories.

You don't need to worry about including this directory when deploying your code. See: [Deploying](/guide/development/deploying/aws)


================================================
FILE: fern/01-guide/01-editors/cursor.mdx
================================================
---
title: Cursor
---

To install on Cursor, try searching "bam" or "baml" (note the latter search term may cause an error due to a bug with Cursor).

If you can't find it, you can download the right extension .vsix file from [Open-VSX](https://open-vsx.org/extension/Boundary/baml-extension), and drag it to the extensions panel:

### Cursor Rules to write BAML
We created a [.cursorrules file for BAML](https://gist.github.com/aaronvg/b4f590f59b13dcfd79721239128ec208), to aid Cursor in writing BAML prompts. Feel free to edit this however you like!



================================================
FILE: fern/01-guide/01-editors/others.mdx
================================================
We don't currently have any tier support for any other editors.

* JetBrains IDEs
* Helix
* Zed
* Vim
* Emacs
* Sublime Text
* Atom


Since the extension is a language server, we can technically pull out the language server and syntax highlighter and support any editor supporting the language server protocol.
If you're interested in contributing to the project and supporting another editor, [please reach out](/contact).

An alternative is to edit your files in our [Playground](https://www.promptfiddle.com/), and copy the code into your editor, but we recommend using VSCode to edit BAML files for now.



================================================
FILE: fern/01-guide/01-editors/vscode.mdx
================================================
We provide a BAML VSCode extension:     https://marketplace.visualstudio.com/items?itemName=Boundary.baml-extension



| Feature | Supported |
|---------|-----------|
| Syntax highlighting for BAML files | ✅ |
| Code snippets for BAML | ✅ |
| LLM playground for testing BAML functions | ✅ |
| Jump to definition for BAML files | ✅ |
| Jump to definition between Python/TS files and BAML files | ✅ |
| Auto generate `baml_client` on save | ✅ |
| BAML formatter | ❌ |

## Opening BAML Playground

Once you open a `.baml` file, in VSCode, you should see a small button over every BAML function: `Open Playground`.

<img src="/assets/vscode/code-lens.png" />

Or type `BAML Playground` in the VSCode Command Bar (`CMD + Shift + P` or `CTRL + Shift + P`) to open the playground.

<img src="/assets/vscode/open-playground.png" />

## Setting Env Variables

Click on the `Settings` button in top right of the playground and set the environment variables.

It should have an indicator if any unset variables are there.

<img src="/assets/vscode/playground-preview.png" />

The playground should persist the environment variables between closing and opening VSCode.

<Tip>
  You can set environment variables lazily. If anything is unset you'll get an error when you run the function.
</Tip>

<Info>
  Environment Variables are stored in VSCode's local storage! We don't save any additional data to disk, or send them across the network.
</Info>

## Running Tests

- Click on `Run tests below` in the right pane of the playground to run all tests.

<img src="/assets/vscode/run-all-tests.png" />

- Press the `▶️` button next to an individual test case to run that just that test case.

## Reviewing Tests

- Click the numbers on the left to switch between test results.

- Press the `▶️` button next to the drop-down to re-run your tests.

<img src="/assets/vscode/test-results.png" />

<Tip>
- Toggle the `🚀` to enable running the tests in parallel.
</Tip>

## Switching Functions

The playground will automatically switch to the function you're currently editing.

To manually change it, click on the current function name in the playground (next to the dropdown) and search for your desired function.

## Switching Test Cases

You can switch between test cases by selecting it in the results pane or the test selection pane on the right.

<img src="/assets/vscode/test-cases.png" />

You can customize what you see in the Table View, or switch to the Detailed view:

<img src="/assets/vscode/test-cases-detailed.png" />



================================================
FILE: fern/01-guide/02-languages/python.mdx
================================================
<Note>You can check out this repo:
https://github.com/BoundaryML/baml-examples/tree/main/python-fastapi-starter</Note>

To set up BAML with Python do the following:

<Steps>
  ### Install BAML VSCode/Cursor Extension
      https://marketplace.visualstudio.com/items?itemName=boundary.baml-extension

      - syntax highlighting
      - testing playground
      - prompt previews

      <Tip>
      In your VSCode User Settings, highly recommend adding this to get better autocomplete for python in general, not just BAML.

      ```json
      {
        "python.analysis.typeCheckingMode": "basic"
      }
      ```
      </Tip>

  ### Install BAML
      <Tabs>
        <Tab title="pip" language="pip">
          ```bash pip
          pip install baml-py
          ```
        </Tab>

        <Tab title="poetry" language="poetry">
          ```bash poetry
          poetry add baml-py
          ```
        </Tab>

        <Tab title="uv" language="uv">
          ```bash uv
          uv add baml-py
          ```
        </Tab>
      </Tabs>

  ### Add BAML to your existing project
      This will give you some starter BAML code in a `baml_src` directory.

      <Tabs>
        <Tab title="pip" language="pip">
          ```bash pip
          baml-cli init
          ```
        </Tab>

        <Tab title="poetry" language="poetry">
          ```bash poetry
          poetry run baml-cli init
          ```
        </Tab>

        <Tab title="uv" language="uv">
          ```bash uv
          uv run baml-cli init
          ```
        </Tab>
      </Tabs>

  ### Generate the `baml_client` python module from `.baml` files

  One of the files in your `baml_src` directory will have a [generator block](/ref/baml/generator). The next commmand will auto-generate the `baml_client` directory, which will have auto-generated python code to call your BAML functions.

  Any types defined in .baml files will be converted into Pydantic models in the `baml_client` directory.


      <Tabs>
        <Tab title="pip" language="pip">
          ```bash pip
          baml-cli generate
          ```
        </Tab>

        <Tab title="poetry" language="poetry">
          ```bash poetry
          poetry run baml-cli generate
          ```
        </Tab>

        <Tab title="uv" language="uv">
          ```bash uv
          uv run baml-cli generate
          ```
        </Tab>
      </Tabs>

      See [What is baml_client](/guide/introduction/baml_client) to learn more about how this works.
    <img src="/assets/languages/baml-to-py.png" />

    <Tip>
      If you set up the [VSCode extension](https://marketplace.visualstudio.com/items?itemName=Boundary.baml-extension), it will automatically run `baml-cli generate` on saving a BAML file.
    </Tip>


  ### Use a BAML function in Python!
    <Error>If `baml_client` doesn't exist, make sure to run the previous step! </Error>

      <Tabs>
      <Tab title="Sync" language="python">
      ```python main.py
      from baml_client.sync_client import b
      from baml_client.types import Resume

      def example(raw_resume: str) -> Resume:
        # BAML's internal parser guarantees ExtractResume
        # to be always return a Resume type
        response = b.ExtractResume(raw_resume)
        return response

      def example_stream(raw_resume: str) -> Resume:
        stream = b.stream.ExtractResume(raw_resume)
        for msg in stream:
          print(msg) # This will be a PartialResume type

        # This will be a Resume type
        final = stream.get_final_response()

        return final
      ```
      </Tab>

      <Tab title="Async" language="python">
      ```python async_main.py
      from baml_client.async_client import b
      from baml_client.types import Resume

      async def example(raw_resume: str) -> Resume:
        # BAML's internal parser guarantees ExtractResume
        # to be always return a Resume type
        response = await b.ExtractResume(raw_resume)
        return response

      async def example_stream(raw_resume: str) -> Resume:
        stream = b.stream.ExtractResume(raw_resume)
        async for msg in stream:
          print(msg) # This will be a PartialResume type

        # This will be a Resume type
        final = await stream.get_final_response()

        return final
      ```
      </Tab>
      </Tabs>
</Steps>


## BAML with Jupyter Notebooks

You can use the baml_client in a Jupyter notebook.

One of the common problems is making sure your code changes are picked up by the notebook without having to restart the whole kernel (and re-run all the cells)

**To make sure your changes in .baml files are reflected in your notebook you must do these steps:**

<Steps>
### Setup the autoreload extension

```python cell0
%load_ext autoreload
%autoreload 2
```
This will make sure to reload imports, such as baml_client's "b" object before every cell runs.

### Import baml_client module in your notebook

Note it's different from how we import in python.
```python cell1
# Assuming your baml_client is inside a dir called app/
import app.baml_client as client # you can name this "llm" or "baml" or whatever you want
```

Usually we import things as
`from baml_client import b`, and we can call our functions using `b`, but the `%autoreload` notebook extension does not work well with `from...import` statements.


### Call BAML functions using the module name as a prefix

```python cell2
raw_resume = "Here's some resume text"
client.b.ExtractResume(raw_resume)
```
Now your changes in .baml files are reflected in your notebook automatically, without needing to restart the Jupyter kernel.

<Note>
If you want to keep using the `from baml_client import b` style, you'll just need to re-import it everytime you regenerate the baml_client.
</Note>

<Warning>
Pylance will complain about any schema changes you make in .baml files. You can ignore these errors. If you want it to pick up your new types, you'll need to restart the kernel.
This auto-reload approach works best if you're only making changes to the prompts.
</Warning>

</Steps>

You're all set! Continue on to the [Deployment Guides](/guide/development/deploying/docker) for your language to learn how to deploy your BAML code or check out the [Interactive Examples](https://baml-examples.vercel.app/) to see more examples.


================================================
FILE: fern/01-guide/02-languages/rest.mdx
================================================
<Info>
  Requires BAML version >=0.55
</Info>

<Warning>
  This feature is a preview feature and may change. Please provide feedback either
  in [Discord][discord] or on [GitHub][openapi-feedback-github-issue] so that
  we can stabilize the feature and keep you updated!
</Warning>

BAML allows you to expose your BAML functions as RESTful APIs:

<img src="/assets/languages/baml-to-rest.png" />

We integrate with [OpenAPI](https://www.openapis.org/) (universal API definitions), so you can get typesafe client libraries for free!

<Steps>
  ### Install BAML VSCode Extension
      https://marketplace.visualstudio.com/items?itemName=boundary.baml-extension

      - syntax highlighting
      - testing playground
      - prompt previews

  ### Install NPX + OpenAPI

     <Tabs>
        <Tab title="macOS (brew)">
          ```bash
          brew install npm openapi-generator
          # 'npm' will install npx
          # 'openapi-generator' will install both Java and openapi-generator-cli
          ```
        </Tab>

        <Tab title="Linux (apt)">
          OpenAPI requires `default-jdk`

          ```bash
          apt install npm default-jdk -y
          # 'npm' will install npx; 'default-jdk' will install java
          ```
        </Tab>

        <Tab title="Linux (yum/dnf)">
          OpenAPI requires Java

          ```bash
          dnf install npm java-21-openjdk -y
          # dnf is the successor to yum
          ```

          Amazon Linux 2023:
          ```bash
          dnf install npm java-21-amazon-corretto -y
          # 'npm' will install npx
          # 'java-21-amazon-corretto' will install java
          ```

          Amazon Linux 2:
          ```bash
          curl -sL https://rpm.nodesource.com/setup_16.x | bash -
          yum install nodejs -y
          # 'nodejs' will install npx
          amazon-linux-extras install java-openjdk11 -y
          # 'java-openjdk11' will install java
          ```
        </Tab>

        <Tab title="Windows">
          To install `npx` and `java` (for OpenAPI):

            1. Use the [Node.js installer](https://nodejs.org/en/download/prebuilt-installer) to install `npx` (default installer settings are fine).
            2. Run `npm install -g npm@latest` to update `npx` (there is currently an [issue][npx-windows-issue] with the default install of `npx` on Windows where it doesn't work out of the box).
            3. Run the [Adoptium OpenJDK `.msi` installer](https://adoptium.net/temurin/releases/?os=windows) (install the JDK; default installer settings are fine).

          You can verify that `npx` and `java` are installed by running:

          ```powershell
          npx -version
          java -version
          ```
        </Tab>

        <Tab title="Other">
          To install `npx`, use the [Node.js installer](https://nodejs.org/en/download/prebuilt-installer).

          To install `java` (for OpenAPI), use the [Adoptium OpenJDK packages](https://adoptium.net/installation/linux/).
        </Tab>
      </Tabs>

  ### Add BAML to your existing project
      This will give you some starter BAML code in a `baml_src` directory.
    <Tabs>

      <Tab title="C#">
      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type csharp
      ```
      </Tab>

      <Tab title="C++">

      <Tip>OpenAPI supports [5 different C++ client types][openapi-client-types];
      any of them will work with BAML.</Tip>

      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type cpp-restsdk
      ```
      </Tab>

      <Tab title="Go">
      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type go
      ```
      </Tab>

      <Tab title="Java">

      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type java
      ```

      Notice that `on_generate` has been initialized for you to:

      - run the OpenAPI generator to generate a Java client library, and _also_
      - run `mvn clean install` to install the generated client library to your
        local Maven repository

      <Warning>
        If you only use Maven through an IDE (e.g. IntelliJ IDEA), you should
        remove `&& mvn clean install` from the generated `on_generate` command.
      </Warning>

      </Tab>

      <Tab title="PHP">
      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type php
      ```
      </Tab>

      <Tab title="Ruby">
      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type ruby
      ```
      </Tab>

      <Tab title="Rust">
      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type rust
      ```
      </Tab>

      <Tab title="Other">

      As long as there's an OpenAPI client generator that works with your stack,
      you can use it with BAML. Check out the [full list in the OpenAPI docs][openapi-client-types].

      ```bash
      npx @boundaryml/baml init \
        --client-type rest/openapi --openapi-client-type $OPENAPI_CLIENT_TYPE
      ```
      </Tab>

    </Tabs>

  ### Start the BAML development server

    ```bash
    npx @boundaryml/baml dev --preview
    ```

    This will do four things:

    - serve your BAML functions over a RESTful interface on `localhost:2024`
    - generate an OpenAPI schema in `baml_client/openapi.yaml`
    - run `openapi-generator -g $OPENAPI_CLIENT_TYPE` in `baml_client` directory to
      generate an OpenAPI client for you to use
    - re-run the above steps whenever you modify any `.baml` files

  <Note>
    BAML-over-REST is currently a preview feature. Please provide feedback
    either in [Discord][discord] or on [GitHub][openapi-feedback-github-issue]
    so that we can stabilize the feature and keep you updated!
  </Note>

  ### Use a BAML function in any language!

  `openapi-generator` will generate a `README` with instructions for installing
  and using your client; we've included snippets for some of the most popular
  languages below. Check out
  [`baml-examples`](https://github.com/BoundaryML/baml-examples) for example
  projects with instructions for running them.

  <Note>
    We've tested the below listed OpenAPI clients, but not all of them. If you run
    into issues with any of the OpenAPI clients, please let us know, either in
    [Discord][discord] or by commenting on
    [GitHub][openapi-feedback-github-issue] so that we can either help you out
    or fix it!
  </Note>

<Tabs>

<Tab title="Go">

Run this with `go run main.go`:

```go main.go
package main

import (
	"context"
	"fmt"
	"log"
  baml "my-golang-app/baml_client"
)

func main() {
	cfg := baml.NewConfiguration()
	b := baml.NewAPIClient(cfg).DefaultAPI
	extractResumeRequest := baml.ExtractResumeRequest{
		Resume: "Ada Lovelace (@gmail.com) was an English mathematician and writer",
	}
	resp, r, err := b.ExtractResume(context.Background()).ExtractResumeRequest(extractResumeRequest).Execute()
	if err != nil {
		fmt.Printf("Error when calling b.ExtractResume: %v\n", err)
		fmt.Printf("Full HTTP response: %v\n", r)
		return
	}
	log.Printf("Response from server: %v\n", resp)
}
```
</Tab>

<Tab title="Java">
First, add the OpenAPI-generated client to your project.

<AccordionGroup>

<Accordion title="If you have 'mvn' in your PATH">

You can use the default `on_generate` command, which will tell `baml dev` to
install the OpenAPI-generated client into your local Maven repository by running
`mvn clean install` every time you save a change to a BAML file.

To depend on the client in your local Maven repo, you can use these configs:

<CodeGroup>
```xml pom.xml
<dependency>
  <groupId>org.openapitools</groupId>
  <artifactId>openapi-java-client</artifactId>
  <version>0.1.0</version>
  <scope>compile</scope>
</dependency>
```

```kotlin settings.gradle.kts
repositories {
    mavenCentral()
    mavenLocal()
}

dependencies {
    implementation("org.openapitools:openapi-java-client:0.1.0")
}
```
</CodeGroup>

</Accordion>

<Accordion title="If you don't have 'mvn' in your PATH">

You'll probably want to comment out `on_generate` and instead use either the [OpenAPI Maven plugin] or [OpenAPI Gradle plugin] to build your OpenAPI client.

[OpenAPI Maven plugin]: https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator-maven-plugin
[OpenAPI Gradle plugin]: https://github.com/OpenAPITools/openapi-generator/tree/master/modules/openapi-generator-gradle-plugin

<CodeGroup>
```xml pom.xml
<build>
    <plugins>
        <plugin>
            <groupId>org.openapitools</groupId>
            <artifactId>openapi-generator-maven-plugin</artifactId>
            <version>7.8.0</version> <!-- Use the latest stable version -->
            <executions>
                <execution>
                    <goals>
                        <goal>generate</goal>
                    </goals>
                    <configuration>
                        <inputSpec>${project.basedir}/baml_client/openapi.yaml</inputSpec>
                        <generatorName>baml</generatorName> <!-- or another generator name, e.g. 'kotlin' or 'spring' -->
                        <output>${project.build.directory}/generated-sources/openapi</output>
                        <apiPackage>com.boundaryml.baml_client.api</apiPackage>
                        <modelPackage>com.boundaryml.baml_client.model</modelPackage>
                        <invokerPackage>com.boundaryml.baml_client</invokerPackage>
                        <java8>true</java8>
                    </configuration>
                </execution>
            </executions>
        </plugin>
    </plugins>
</build>
```

```kotlin settings.gradle.kts
plugins {
    id("org.openapi.generator") version "7.8.0"
}

openApiGenerate {
    generatorName.set("java") // Change to 'kotlin', 'spring', etc. if needed
    inputSpec.set("${projectDir}/baml_client/openapi.yaml")
    outputDir.set("$buildDir/generated-sources/openapi")
    apiPackage.set("com.boundaryml.baml_client.api")
    modelPackage.set("com.boundaryml.baml_client.model")
    invokerPackage.set("com.boundaryml.baml_client")
    additionalProperties.set(mapOf("java8" to "true"))
}

sourceSets["main"].java {
    srcDir("$buildDir/generated-sources/openapi/src/main/java")
}

tasks.named("compileJava") {
    dependsOn("openApiGenerate")
}
```
</CodeGroup>

</Accordion>
</AccordionGroup>

Then, copy this code into wherever your `main` function is:

```Java
import com.boundaryml.baml_client.ApiClient;
import com.boundaryml.baml_client.ApiException;
import com.boundaryml.baml_client.Configuration;
// NOTE: baml_client/README.md will suggest importing from models.* - that is wrong.
// See https://github.com/OpenAPITools/openapi-generator/issues/19431 for more details.
import com.boundaryml.baml_client.model.*;
import com.boundaryml.baml_client.api.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    DefaultApi apiInstance = new DefaultApi(defaultClient);
    ExtractResumeRequest extractResumeRequest = new ExtractResumeRequest(); // ExtractResumeRequest |
    try {
      Resume result = apiInstance.extractResume(extractResumeRequest);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#extractResume");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}

```
</Tab>

<Tab title="PHP">

<Warning>
  The PHP OpenAPI generator doesn't support OpenAPI's `oneOf` type, which is
  what we map BAML union types to. Please let us know if this is an issue for
  you, and you need help working around it.
</Warning>

First, add the OpenAPI-generated client to your project:

```json composer.json
    "repositories": [
        {
            "type": "path",
            "url": "baml_client"
        }
    ],
    "require": {
        "boundaryml/baml-client": "*@dev"
    }
```

You can now use this code to call a BAML function:

```PHP
<?php
require_once(__DIR__ . '/vendor/autoload.php');

$apiInstance = new BamlClient\Api\DefaultApi(
    new GuzzleHttp\Client()
);
$extract_resume_request = new BamlClient\Model\ExtractResumeRequest();
$extract_resume_request->setResume("Marie Curie was a Polish and naturalised-French physicist and chemist who conducted pioneering research on radioactivity");

try {
    $result = $apiInstance->extractResume($extract_resume_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling DefaultApi->extractResume: ', $e->getMessage(), PHP_EOL;
}
```
</Tab>

<Tab title="Ruby">

Use `ruby -Ilib/baml_client app.rb` to run this:

```ruby app.rb
require 'baml_client'
require 'pp'

api_client = BamlClient::ApiClient.new
b = BamlClient::DefaultApi.new(api_client)

extract_resume_request = BamlClient::ExtractResumeRequest.new(
  resume: <<~RESUME
    John Doe

    Education
    - University of California, Berkeley
    - B.S. in Computer Science
    - graduated 2020

    Skills
    - Python
    - Java
    - C++
  RESUME
)

begin
  result = b.extract_resume(extract_resume_request)
  pp result

  edu0 = result.education[0]
  puts "Education: #{edu0.school}, #{edu0.degree}, #{edu0.year}"
rescue BamlClient::ApiError => e
  puts "Error when calling DefaultApi#extract_resume"
  pp e
end
```
</Tab>

<Tab title="Rust">

<Tip>
  If you're using `cargo watch -- cargo build` and seeing build failures because it can't find
  the generated `baml_client`, try increasing the delay on `cargo watch` to 1 second like so:

  ```bash
  cargo watch --delay 1 -- cargo build
  ```
</Tip>

First, add the OpenAPI-generated client to your project:

```toml Cargo.toml
[dependencies]
baml-client = { path = "./baml_client" }
```

You can now use `cargo run`:

```rust
use baml_client::models::ExtractResumeRequest;
use baml_client::apis::default_api as b;

#[tokio::main]
async fn main() {
    let config = baml_client::apis::configuration::Configuration::default();

    let resp = b::extract_resume(&config, ExtractResumeRequest {
        resume: "Tony Hoare is a British computer scientist who has made foundational contributions to programming languages, algorithms, operating systems, formal verification, and concurrent computing.".to_string(),
    }).await.unwrap();

    println!("{:#?}", resp);
}
```
</Tab>

</Tabs>

</Steps>

[discord]: https://discord.gg/BTNBeXGuaS
[openapi-feedback-github-issue]: https://github.com/BoundaryML/baml/issues/892
[npx-windows-issue]: https://github.com/nodejs/node/issues/53538
[openapi-client-types]: https://github.com/OpenAPITools/openapi-generator#overview
[openapi]: https://www.openapis.org/


================================================
FILE: fern/01-guide/02-languages/ruby.mdx
================================================
<Note>You can check out this repo: https://github.com/BoundaryML/baml-examples/tree/main/ruby-starter</Note>

To set up BAML with Ruby do the following:

<Steps>
  ### Install BAML VSCode Extension
      https://marketplace.visualstudio.com/items?itemName=boundary.baml-extension

      - syntax highlighting
      - testing playground
      - prompt previews

  ### Install BAML
      ```bash bundle
      bundle add baml sorbet-runtime
      ```

  ### Add BAML to your existing project
      This will give you some starter BAML code in a `baml_src` directory.

      ```bash
      bundle exec baml-cli init
      ```

  ### Generate Ruby code from `.baml` files

    ```bash
    bundle exec baml-cli generate
    ```
    `
    See [What is baml_src](/guide/introduction/baml_src) to learn more about how this works.
    <img src="/assets/languages/baml-to-rb.png" />

    As fun as writing BAML is, we want you be able to leverage BAML with existing ruby modules. This command gives you a ruby module that is a type-safe interface to every BAML function.

    <Tip>
      Our [VSCode extension](https://marketplace.visualstudio.com/items?itemName=Boundary.baml-extension) automatically runs this command when you save a BAML file.
    </Tip>

  ### Use a BAML function in Ruby!
    <Error>If `baml_client` doesn't exist, make sure to run the previous step!</Error>

    <Tabs>
    <Tab title="Regular" language="ruby">
    ```ruby main.rb
    require_relative "baml_client/client"

    def example(raw_resume)
        # r is an instance of Baml::Types::Resume, defined in baml_client/types
        r = Baml.Client.ExtractResume(resume: raw_resume)

        puts "ExtractResume response:"
        puts r.inspect
    end

    example 'Grace Hopper created COBOL'
    ```
    </Tab>

    <Tab title="Streaming" language="ruby">
    ```ruby stream_example.rb
    require_relative "baml_client/client"

    def example_stream(raw_resume)
        stream = Baml.Client.stream.ExtractResume(resume: raw_resume)

        stream.each do |msg|
            # msg is an instance of Baml::PartialTypes::Resume
            # defined in baml_client/partial_types
            puts msg.inspect
        end

        stream.get_final_response
    end

    example_stream 'Grace Hopper created COBOL'
    ```
    </Tab>
    </Tabs>
</Steps>



================================================
FILE: fern/01-guide/02-languages/typescript.mdx
================================================
<Note>You can check out this repo: https://github.com/BoundaryML/baml-examples/tree/main/nextjs-starter</Note>

To set up BAML with Typescript do the following:

<Steps>
  ### Install BAML VSCode/Cursor Extension
      https://marketplace.visualstudio.com/items?itemName=boundary.baml-extension

      - syntax highlighting
      - testing playground
      - prompt previews

  ### Install BAML
      <Tabs>
        <Tab title="npm" language="npm">
          ```bash npm
          npm install @boundaryml/baml
          ```
        </Tab>

        <Tab title="pnpm" language="pnpm">
          ```bash pnpm
          pnpm add @boundaryml/baml
          ```
        </Tab>

        <Tab title="yarn" language="yarn">
          ```bash yarn
          yarn add @boundaryml/baml
          ```
        </Tab>

        <Tab title="bun" language="bun">
          ```bash bun
          bun add @boundaryml/baml
          ```
        </Tab>

        <Tab title="deno" language="deno">
          ```bash deno
          deno install npm:@boundaryml/baml
          ```
        </Tab>
      </Tabs>

  ### Add BAML to your existing project
      This will give you some starter BAML code in a `baml_src` directory.

      <Tabs>
        <Tab title="npm" language="npm">
          ```bash npm
          npx baml-cli init
          ```
        </Tab>

        <Tab title="pnpm" language="pnpm">
          ```bash pnpm
          pnpm exec baml-cli init
          ```
        </Tab>

        <Tab title="yarn" language="yarn">
          ```bash yarn
          yarn baml-cli init
          ```
        </Tab>

        <Tab title="bun" language="bun">
          ```bash bun
          bun baml-cli init
          ```
        </Tab>

        <Tab title="deno" language="deno">
          ```bash deno
          deno run -A npm:@boundaryml/baml/baml-cli init
          ```
        </Tab>
      </Tabs>

  ### Generate the `baml_client` typescript package from `.baml` files

    One of the files in your `baml_src` directory will have a [generator block](/ref/baml/generator). This tells BAML how to generate the `baml_client` directory, which will have auto-generated typescript code to call your BAML functions.

    <Tabs>
      <Tab title="npm" language="npm">
        ```bash npm
        npx baml-cli generate
        ```
      </Tab>

      <Tab title="pnpm" language="pnpm">
        ```bash pnpm
        pnpm exec baml-cli generate
        ```
      </Tab>

      <Tab title="yarn" language="yarn">
        ```bash yarn
        yarn baml-cli generate
        ```
      </Tab>

      <Tab title="bun" language="bun">
        ```bash bun
        bun baml-cli generate
        ```
      </Tab>

      <Tab title="deno" language="deno">
        ```bash deno
        deno run -A npm:@boundaryml/baml/baml-cli generate
        # You may need to use the --unstable-sloppy-imports flag if you get an error about ESM
        # https://github.com/BoundaryML/baml/issues/1213#issuecomment-2526200783
        ```
      </Tab>
    </Tabs>

    <Note>
      If you need baml_client to be 'ESM' compatible, you can add the following `generator` configuration to your `.baml` file:

      ```baml
      generator typescript {
        ...
        module_format "esm" // the default is "cjs" for CommonJS
      }
      ```
    </Note>

    You can modify your `package.json` so you have a helper prefix in front of your build command.

    ```json package.json
    {
      "scripts": {
        // Add a new command
        "baml-generate": "baml-cli generate",
        // Always call baml-generate on every build.
        "build": "npm run baml-generate && tsc --build",
      }
    }
    ```

    See [What is baml_src](/guide/introduction/baml_src) to learn more about how this works.
    <img src="/assets/languages/baml-to-ts.png" />


    <Tip>
      If you set up the [VSCode extension](https://marketplace.visualstudio.com/items?itemName=Boundary.baml-extension), it will automatically run `baml-cli generate` on saving a BAML file.
    </Tip>

  ### Use a BAML function in Typescript!
    <Error>If `baml_client` doesn't exist, make sure to run the previous step! </Error>

    <Tabs>
    <Tab title="Async" language="typescript">
    ```typescript index.ts
    import { b } from "./baml_client"
    import type { Resume } from "./baml_client/types"

    async function Example(raw_resume: string): Promise<Resume> {
      // BAML's internal parser guarantees ExtractResume
      // to be always return a Resume type
      const response = await b.ExtractResume(raw_resume);
      return response;
    }

    async function ExampleStream(raw_resume: string): Promise<Resume> {
      const stream = b.stream.ExtractResume(raw_resume);
      for await (const msg of stream) {
        console.log(msg) // This will be a Partial<Resume> type
      }

      // This is guaranteed to be a Resume type.
      return await stream.getFinalResponse();
    }
    ```
    </Tab>

    <Tab title="Sync" language="typescript">
    ```typescript sync_example.ts
    import { b } from "./baml_client/sync_client"
    import type { Resume } from "./baml_client/types"

    function Example(raw_resume: string): Resume {
      // BAML's internal parser guarantees ExtractResume
      // to be always return a Resume type
      const response = b.ExtractResume(raw_resume);
      return response;
    }

    // Streaming is not available in the sync_client.
    ```
    </Tab>
    </Tabs>
</Steps>



================================================
FILE: fern/01-guide/03-development/environment-variables.mdx
================================================
---
title: Set Environment Variables
slug: /guide/development/environment-variables
---



## Environment Variables in BAML

Sometimes you'll see environment variables used in BAML, like in clients:

```baml

client<llm> GPT4o {
  provider baml-openai-chat
  options {
    model gpt-4o
    api_key env.OPENAI_API_KEY
  }
}
```

<Markdown src="/snippets/setting-env-vars.mdx" />

## Setting LLM API Keys per Request
You can set the API key for an LLM dynamically by passing in the key as a header or as a parameter (depending on the provider), using the [ClientRegistry](/guide/baml-advanced/llm-client-registry).



================================================
FILE: fern/01-guide/03-development/terminal-logs.mdx
================================================
---
slug: /guide/development/terminal-logs
---
You can add logging to determine what the BAML runtime is doing when it calls LLM endpoints and parses responses.

To enable logging, set the `BAML_LOG` environment variable:
```sh
# default is warn
BAML_LOG=info
```

| Level | Description |
|-------|-------------|
| `error` | Fatal errors by BAML |
| `warn` | Logs any time a function fails (includes LLM calling failures, parsing failures) |
| `info` | Logs every call to a function (including prompt, raw response, and parsed response) |
| `debug` | Requests and detailed parsing errors (warning: may be a lot of logs) |
| `trace` | Everything and more |
| `off` | No logging |


Example log:
<img src="/assets/terminal-logs/log_message.png" />

---

Since `>0.54.0`:

To truncate each log entry to a certain length, set the `BOUNDARY_MAX_LOG_CHUNK_CHARS` environment variable:

```sh
BOUNDARY_MAX_LOG_CHUNK_CHARS=3000
```

This will truncate each part in a log entry to 3000 characters.



================================================
FILE: fern/01-guide/03-development/upgrade-baml-versions.mdx
================================================
---
slug: /guide/development/upgrade-baml-versions
title: Upgrading BAML / Fixing Version Mismatches
---

Remember that the generated `baml_client` code is generated by your `baml_py` / `@boundaryml/baml` package dependency (using `baml-cli generate`), but can also be generated by the VSCode extension when you save a BAML file.

**To upgrade BAML versions:**
1. Update the `generator` clause in your `generators.baml` file (or wherever you have it defined) to the new version. If you ran `baml-cli init`, one has already been generated for you!
```baml generators.baml
generator TypescriptGenerator {
    output_type "typescript"
    ....
    // Version of runtime to generate code for (should match the package @boundaryml/baml version)
    version "0.62.0"
}
```

2. Update your `baml_py`  / `@boundaryml/baml` package dependency to the same version.


<CodeBlock>
```sh pip
pip install --upgrade baml-py
```
```sh npm
npm install @boundaryml/baml@latest
```

```sh ruby
gem install baml
```
</CodeBlock>

3. Update VSCode BAML extension to point to the same version. Read here for how to keep VSCode in sync with your `baml_py` / `@boundaryml/baml` package dependency: [VSCode BAML Extension reference](/ref/editor-extension-settings/baml-cli-path)

You only need to do this for minor version upgrades (e.g., 0.54.0 -> 0.62.0), not patch versions (e.g., 0.62.0 -> 0.62.1).



## Troubleshooting

See the [VSCode BAML Extension reference](/ref/editor-extension-settings/baml-cli-path) for more information on how to prevent version mismatches.



================================================
FILE: fern/01-guide/03-development/deploying/aws.mdx
================================================
---
title: AWS
---

You can use [SST](https://sst.dev/) to define the Lambda configuration and deploy it.

The example below builds the BAML x86_64 rust binaries into a Lambda layer and uses the layer in the Lambda function.

[Example Node + SST Project](https://github.com/BoundaryML/baml-examples/tree/main/node-aws-lambda-sst)

Let us know if you want to deploy a python BAML project on AWS. Our example project is coming soon.

### Current limitations
The BAML binaries only support the NodeJS 20.x runtime (or a runtime using Amazon Linux 2023). Let us know if you need a different runtime version.


================================================
FILE: fern/01-guide/03-development/deploying/docker.mdx
================================================
---
title: Docker
---


When you develop with BAML, the BAML VScode extension generates a `baml_client` directory (on every save) with all the generated code you need to use your AI functions in your application.

We recommend you add `baml_client` to your `.gitignore` file to avoid committing generated code to your repository, and re-generate the client code when you build and deploy your application.

You _could_ commit the generated code if you're starting out to not deal with this, just make sure the VSCode extension version matches your baml package dependency version (e.g. `baml-py` for python and `@boundaryml/baml` for TS) so there are no compatibility issues.

To build your client you can use the following command. See also [baml-cli generate](/ref/baml-cli/generate):

<CodeBlocks>

```dockerfile python Dockerfile
RUN baml-cli generate --from path-to-baml_src
```

```dockerfile TypeScript Dockerfile
# Do this early on in the dockerfile script before transpiling to JS
RUN npx baml-cli generate --from path-to-baml_src
```

```dockerfile Ruby Dockerfile
RUN bundle add baml
RUN bundle exec baml-cli generate --from path/to/baml_src
```
</CodeBlocks>




================================================
FILE: fern/01-guide/03-development/deploying/openapi.mdx
================================================
---
title: OpenAPI
---

<Info>
  This feature was added in: v0.55.0.
</Info>

<Info>
  This page assumes you've gone through the [OpenAPI quickstart].
</Info>

[OpenAPI quickstart]: /docs/get-started/quickstart/openapi

To deploy BAML as a RESTful API, you'll need to do three things:

- host your BAML functions in a Docker container
- update your app to call it
- run BAML and your app side-by-side using `docker-compose`

Read on to learn how to do this with `docker-compose`.

<Tip>
  You can also run `baml-cli` in a subprocess from your app directly, and we
  may recommend this approach in the future. Please let us know if you'd
  like to see instructions for doing so, and in what language, by asking in
  [Discord][discord] or [on the GitHub issue][openapi-feedback-github-issue].
</Tip>

## Host your BAML functions in a Docker container

In the directory containing your `baml_src/` directory, create a
`baml.Dockerfile` to host your BAML functions in a Docker container:

<Note>
  BAML-over-HTTP is currently a preview feature. Please provide feedback either
  in [Discord][discord] or on [GitHub][openapi-feedback-github-issue] so that
  we can stabilize the feature and keep you updated!
</Note>

```docker title="baml.Dockerfile"
FROM node:20

WORKDIR /app
COPY baml_src/ .

# If you want to pin to a specific version (which we recommend):
# RUN npm install -g @boundaryml/baml@VERSION
RUN npm install -g @boundaryml/baml

CMD baml-cli serve --preview --port 2024
```

<Tabs>

<Tab title="Using docker-compose">

Assuming you intend to run your own application in a container, we recommend
using `docker-compose` to run your app and BAML-over-HTTP side-by-side:

```bash
docker compose up --build --force-recreate
```

```yaml title="docker-compose.yaml"
services:
  baml-over-http:
    build:
      # This will build baml.Dockerfile when you run docker-compose up
      context: .
      dockerfile: baml.Dockerfile
    healthcheck:
      test: [ "CMD", "curl", "-f", "http://localhost:2024/_debug/ping" ]
      interval: 1s
      timeout: 100ms
      retries: 3
    # This allows you to 'curl localhost:2024/_debug/ping' from your machine,
    # i.e. the Docker host
    ports:
      - "2024:2024"

  debug-container:
    image: amazonlinux:latest
    depends_on:
      # Wait until the baml-over-http healthcheck passes to start this container
      baml-over-http:
        condition: service_healthy
    command: "curl -v http://baml-over-http:2024/_debug/ping"
```

<Note>
  To call the BAML server from your laptop (i.e. the host machine), you must use
  `localhost:2024`. You may only reach it as `baml-over-http:2024` from within
  another Docker container.
</Note>

</Tab>

<Tab title="Using docker">

If you don't care about using `docker-compose`, you can just run:

```bash
docker build -t baml-over-http -f baml.Dockerfile .
docker run -p 2024:2024 baml-over-http
```
</Tab>

</Tabs>

To verify for yourself that BAML-over-HTTP is up and running, you can run:

```bash
curl http://localhost:2024/_debug/ping
```

## Update your app to call it

Update your code to use `BOUNDARY_ENDPOINT`, if set, as the endpoint for your BAML functions.


<Markdown src="../../../snippets/openapi-howto-rely-on-envvars.mdx" />

## Run your app with docker-compose

Replace `debug-container` with the Dockerfile for your app in the
`docker-compose.yaml` file:

```yaml
services:
  baml-over-http:
    build:
      context: .
      dockerfile: baml.Dockerfile
    networks:
      - my-app-network
    healthcheck:
      test: [ "CMD", "curl", "-f", "http://localhost:2024/_debug/ping" ]
      interval: 1s
      timeout: 100ms
      retries: 3
    ports:
      - "2024:2024"

  my-app:
    build:
      context: .
      dockerfile: my-app.Dockerfile
    depends_on:
      baml-over-http:
        condition: service_healthy
    environment:
      - BAML_ENDPOINT=http://baml-over-http:2024

  debug-container:
    image: amazonlinux:latest
    depends_on:
      baml-over-http:
        condition: service_healthy
    command: sh -c 'curl -v "$${BAML_ENDPOINT}/_debug/ping"'
    environment:
      - BAML_ENDPOINT=http://baml-over-http:2024
```

Additionally, you'll want to make sure that you generate the BAML client at
image build time, because `baml_client/` should not be checked into your repo.

This means that in the CI workflow you use to push your Docker images, you'll
want to do something like this:

```yaml .github/workflows/build-image.yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Build the BAML client
        run: |
          set -eux
          npx @boundaryml/baml generate
          docker build -t my-app .
```

## (Optional) Secure your BAML functions

To secure your BAML server, you can also set a password on it using the
`BAML_PASSWORD` environment variable:

<Tabs>

<Tab title="bash">

```bash
BAML_PASSWORD=sk-baml-your-secret-password \
  baml-cli serve --preview --port 2024
```
</Tab>

<Tab title="Dockerfile">

```docker
FROM node:20

WORKDIR /app
RUN npm install -g @boundaryml/baml
COPY baml_src/ .

ENV BAML_PASSWORD=sk-baml-your-secret-password
CMD baml-cli serve --preview --port 2024
```
</Tab>

</Tabs>

This will require incoming requests to attach your specified password as
authorization metadata. You can verify this by confirming that this returns `403
Forbidden`:

```bash
curl -v "http://localhost:2024/_debug/status"
```

If you attach your password to the request, you'll see that it now returns `200 OK`:

<Tabs>

<Tab title="Using HTTP basic auth">
```bash
export BAML_PASSWORD=sk-baml-your-secret-password
curl "http://baml:${BAML_PASSWORD}@localhost:2024/_debug/status"
```
</Tab>

<Tab title="Using X-BAML-API-KEY">
```bash
export BAML_PASSWORD=sk-baml-your-secret-password
curl "http://localhost:2024/_debug/status" -H "X-BAML-API-KEY: ${BAML_PASSWORD}"
```
</Tab>

</Tabs>

<Note>
  `BAML_PASSWORD` will secure all endpoints _except_ `/_debug/ping`, so that you
  can always debug the reachability of your BAML server.
</Note>

[discord]: https://discord.gg/BTNBeXGuaS
[openapi-feedback-github-issue]: https://github.com/BoundaryML/baml/issues/892


================================================
FILE: fern/01-guide/04-baml-basics/concurrent-calls.mdx
================================================
---
title: Concurrent function calls
slug: /guide/baml-basics/concurrent-calls
---


We’ll use `function ClassifyMessage(input: string) -> Category` for our example:

<Accordion title="classify-message.baml">
```baml
enum Category {
    Refund
    CancelOrder
    TechnicalSupport
    AccountIssue
    Question
}

function ClassifyMessage(input: string) -> Category {
  client GPT4o
  prompt #"
    Classify the following INPUT into ONE
    of the following categories:

    INPUT: {{ input }}

    {{ ctx.output_format }}

    Response:
  "#
}
```
</Accordion>

<Tabs>
<Tab title="Python">

You can make concurrent `b.ClassifyMessage()` calls like so:

```python main.py
import asyncio

from baml_client.async_client import b
from baml_client.types import Category

async def main():
    await asyncio.gather(
        b.ClassifyMessage("I want to cancel my order"),
        b.ClassifyMessage("I want a refund")
    )

if __name__ == '__main__':
    asyncio.run(main())
```
</Tab>

<Tab title="TypeScript">

You can make concurrent `b.ClassifyMessage()` calls like so:

```ts main.ts
import { b } from './baml_client'
import { Category } from './baml_client/types'
import assert from 'assert'

const main = async () => {
  const category = await Promise.all(
    b.ClassifyMessage('I want to cancel my order'),
    b.ClassifyMessage('I want a refund'),
  )
}

if (require.main === module) {
  main()
}

```
</Tab>

<Tab title="Ruby (beta)">

BAML Ruby (beta) does not currently support async/concurrent calls.

Please [contact us](/contact) if this is something you need.

</Tab>
</Tabs>



================================================
FILE: fern/01-guide/04-baml-basics/error-handling.mdx
================================================

When BAML raises an exception, it will be an instance of a subclass of `BamlError`. This allows you to catch all BAML-specific exceptions with a single `except` block.

## Example
<CodeGroup>
```python Python
from baml_client import b
from baml_py.errors import BamlError, BamlInvalidArgumentError, BamlClientError, BamlClientHttpError, BamlValidationError

try:
  b.CallFunctionThatRaisesError()
except BamlError as e:
  print(e)


try:
  b.CallFunctionThatRaisesError()
except BamlValidationError as e:
  # The original prompt sent to the LLM
  print(e.prompt)
  # The LLM response string
  print(e.raw_output)
  # A human-readable error message
  print(e.message)
```


```typescript TypeScript
import { b } from './baml_client'
// For catching parsing errors, you can import this
import { BamlValidationError, BamlClientFinishReasonError } from '@boundaryml/baml'
// The rest of the BAML errors contain a string that is prefixed with:
// "BamlError:"
// Subclasses are sequentially appended to the string.
// For example, BamlInvalidArgumentError is returned as:
// "BamlError: BamlInvalidArgumentError:"
// Or, BamlClientHttpError is returned as:
// "BamlError: BamlClientError: BamlClientHttpError:"


async function example() {
  try {
    await b.CallFunctionThatRaisesError()
  } catch (e) {
    if (e instanceof BamlValidationError || e instanceof BamlClientFinishReasonError) {
      // You should be lenient to these fields missing.
      // The original prompt sent to the LLM
      console.log(e.prompt)
      // The LLM response string
      console.log(e.raw_output)
      // A human-readable error message
      console.log(e.message)
    } else {
      // Handle other BAML errors
      console.log(e)
    }
  }
}

```

```ruby Ruby
# Example coming soon
```
</CodeGroup>


## BamlError

Base class for all BAML exceptions.

<ParamField
  path="message"
  type="string"
>
  A human-readable error message.
</ParamField>

### BamlInvalidArgumentError

Subclass of `BamlError`.

Raised when one or multiple arguments to a function are invalid.

### BamlClientError

Subclass of `BamlError`.

Raised when a client fails to return a valid response.

<Warning>
In the case of aggregate clients like `fallback` or those with `retry_policy`, only the last client's error is raised.
</Warning>

#### BamlClientHttpError

Subclass of `BamlClientError`.

Raised when the HTTP request made by a client fails with a non-200 status code.

<ParamField
  path="status_code"
  type="int"
>
  The status code of the response.

Common status codes are:

- 1: Other
- 2: Other
- 400: Bad Request
- 401: Unauthorized
- 403: Forbidden
- 404: Not Found
- 429: Too Many Requests
- 500: Internal Server Error
</ParamField>


#### BamlClientFinishReasonError

Subclass of `BamlClientError`.

Raised when the finish reason of the LLM response is not allowed.

<ParamField
  path="finish_reason"
  type="string"
>
  The finish reason of the LLM response.
</ParamField>

<ParamField
  path="message"
  type="string"
>
  An error message.
</ParamField>

<ParamField
  path="prompt"
  type="string"
>
  The original prompt that was sent to the LLM, formatted as a plain string. Images sent as base64-encoded strings are not serialized into this field.
</ParamField>

<ParamField
  path="raw_output"
  type="string"
>
  The raw text from the LLM that failed to parse into the expected return type of a function.
</ParamField>

### BamlValidationError

Subclass of `BamlError`.

Raised when BAML fails to parse a string from the LLM into the specified object.

<ParamField
  path="raw_output"
  type="string"
>
  The raw text from the LLM that failed to parse into the expected return type of a function.
</ParamField>

<ParamField
  path="message"
  type="string"
>
  The parsing-related error message.
</ParamField>

<ParamField
  path="prompt"
  type="string"
>
  The original prompt that was sent to the LLM, formatted as a plain string. Images sent as base64-encoded strings are not serialized into this field.
</ParamField>



================================================
FILE: fern/01-guide/04-baml-basics/multi-modal.mdx
================================================
---
slug: /guide/baml-basics/multi-modal
---

## Multi-modal input

You can use `audio`, `image`, `pdf`, or `video` input types in BAML prompts. Just create an input argument of that type and render it in the prompt.

Switch from "Prompt Review" to "Raw cURL" in the playground to see how BAML translates multi-modal input into the LLM Request body.

```baml
// "image" is a reserved keyword so we name the arg "img"
function DescribeMedia(img: image) -> string {
  client openai/gpt-4o
  // Most LLM providers require images or audio to be sent as "user" messages.
  prompt #"
    {{_.role("user")}}
    Describe this image: {{ img }}
  "#
}

// See the "testing functions" Guide for more on testing Multimodal functions
test Test {
  functions [DescribeMedia]
  args {
    img {
      url "https://upload.wikimedia.org/wikipedia/en/4/4d/Shrek_%28character%29.png"
    }
  }
}
```
See how to [test images in the playground](/guide/baml-basics/testing-functions#images).

## Try it! Press 'Run Test' below!
 <div class="resizer">
<iframe
  class="resized"
  src="https://promptfiddle.com/embed?id=multimodal"

  height="640"
  style="border: none;"
  resize="both"
  overflow="auto"
  msallowfullscreen
></iframe>
</div>


## Calling Multimodal BAML Functions

#### Images
Calling a BAML function with an `image` input argument type (see [image types](/ref/baml/types#image))

The `from_url` and `from_base64` methods create an `Image` object based on input type.
<CodeBlocks>
```python Python
from baml_py import Image
from baml_client import b

async def test_image_input():
  # from URL
  res = await b.TestImageInput(
      img=Image.from_url(
          "https://upload.wikimedia.org/wikipedia/en/4/4d/Shrek_%28character%29.png"
      )
  )

  # Base64 image
  image_b64 = "iVBORw0K...."
  res = await b.TestImageInput(
    img=Image.from_base64("image/png", image_b64)
  )
```

```typescript TypeScript
import { b } from '../baml_client'
import { Image } from "@boundaryml/baml"
...

  // URL
  let res = await b.TestImageInput(
    Image.fromUrl('https://upload.wikimedia.org/wikipedia/en/4/4d/Shrek_%28character%29.png'),
  )

  // Base64
  const image_b64 = "iVB0R..."
  let res = await b.TestImageInput(
    Image.fromBase64('image/png', image_b64),
  )

```

```ruby Ruby (beta)
we're working on it!
```

</CodeBlocks>

### Audio
Calling functions that have `audio` types. See [audio types](/ref/baml/types#audio)

<CodeBlocks>
```python Python
from baml_py import Audio
from baml_client import b

async def run():
  # from URL
  res = await b.TestAudioInput(
      img=Audio.from_url(
          "https://actions.google.com/sounds/v1/emergency/beeper_emergency_call.ogg"
      )
  )

  # Base64
  b64 = "iVBORw0K...."
  res = await b.TestAudioInput(
    audio=Audio.from_base64("audio/ogg", b64)
  )
```

```typescript TypeScript
import { b } from '../baml_client'
import { Audio } from "@boundaryml/baml"
...

  // URL
  let res = await b.TestAudioInput(
    Audio.fromUrl('https://actions.google.com/sounds/v1/emergency/beeper_emergency_call.ogg'),
  )

  // Base64
  const audio_base64 = ".."
  let res = await b.TestAudioInput(
    Audio.fromBase64('audio/ogg', audio_base64),
  )

```

```ruby Ruby (beta)
we're working on it!
```
</CodeBlocks>

### Pdf
Calling functions that have `pdf` types. See [pdf types](/ref/baml/types#pdf)

> **⚠️ Warning** Pdf inputs must be provided as Base64 data (e.g. `Pdf.from_base64`). URL-based Pdf inputs are not currently supported. Additionally, Pdf inputs are only supported by models that explicitly allow document (Pdf) modalities, such as Gemini 2.x Flash/Pro or VertexAI Gemini. Make sure the `client` you select advertises Pdf support, otherwise your request will fail.

<CodeBlocks>
```python Python
from baml_py import Pdf
from baml_client import b

async def run():
  # Base64 data
  b64 = "JVBERi0K...."
  res = await b.TestPdfInput(
    pdf=Pdf.from_base64("application/pdf", b64)
  )
```

```typescript TypeScript
import { b } from '../baml_client'
import { Pdf } from "@boundaryml/baml"
...

  // Base64
  const pdf_base64 = ".."
  let res = await b.TestPdfInput(
    Pdf.fromBase64('application/pdf', pdf_base64),
  )

```

```ruby Ruby (beta)
we're working on it!
```
</CodeBlocks>

### Video
Calling functions that have `video` types. See [video types](/ref/baml/types#video)

> **⚠️ Warning** Video inputs require a model that supports video understanding (for example Gemini 2.x Flash/Pro). If your chosen model does not list video support your function call will return an error. *When you supply a Video as a URL the URL is forwarded unchanged to the model; if the model cannot fetch remote content you must instead pass the bytes via `Video.from_base64`.*

<CodeBlocks>
```python Python
from baml_py import Video
from baml_client import b

async def run():
  # from URL
  res = await b.TestVideoInput(
      video=Video.from_url(
          "https://example.com/sample.mp4"
      )
  )

  # Base64
  b64 = "AAAAGGZ0eXBpc29t...."
  res = await b.TestVideoInput(
    video=Video.from_base64("video/mp4", b64)
  )
```

```typescript TypeScript
import { b } from '../baml_client'
import { Video } from "@boundaryml/baml"
...

  // URL
  let res = await b.TestVideoInput(
    Video.fromUrl('https://example.com/sample.mp4'),
  )

  // Base64
  const video_base64 = ".."
  let res = await b.TestVideoInput(
    Video.fromBase64('video/mp4', video_base64),
  )

```

```ruby Ruby (beta)
we're working on it!
```
</CodeBlocks>



================================================
FILE: fern/01-guide/04-baml-basics/my-first-function.mdx
================================================
---
title: Prompting in BAML
---

<Note>
We recommend reading the [installation](/guide/installation-language/python) instructions first
</Note>

BAML functions are special definitions that get converted into real code (Python, TS, etc) that calls LLMs. Think of them as a way to define AI-powered functions that are type-safe and easy to use in your application.

### What BAML Functions Actually Do
When you write a BAML function like this:

```rust BAML
function ExtractResume(resume_text: string) -> Resume {
  client "openai/gpt-4o"
  // The prompt uses Jinja syntax.. more on this soon.
  prompt #"
     Extract info from this text.

    {# special macro to print the output schema + instructions #}
    {{ ctx.output_format }}

    Resume:
    ---
    {{ resume_text }}
    ---
  "#
}
```

BAML converts it into code that:

1. Takes your input (`resume_text`)
2. Sends a request to OpenAI's GPT-4 API with your prompt.
3. Parses the JSON response into your `Resume` type
4. Returns a type-safe object you can use in your code

### Prompt Preview + seeing the CURL request
For maximum transparency, you can see the API request BAML makes to the LLM provider using the VSCode extension.
Below you can see the **Prompt Preview**, where you see the full rendered prompt (once you add a test case):

<img src="/assets/vscode/extract-resume-prompt-preview.png" alt="Prompt preview" />

Note how the `{{ ctx.output_format }}` macro is replaced with the output schema instructions.

The Playground will also show you the **Raw CURL request** (switch from "Prompt Review" to "Raw cURL"):

<img src="/assets/vscode/curl-preview.png" alt="Raw CURL request" />

<Warning>
Always include the `{{ ctx.output_format }}` macro in your prompt. This injects your output schema into the prompt, which helps the LLM output the right thing. You can also [customize what it prints](/ref/prompt-syntax/ctx-output-format).

One of our design philosophies is to never hide the prompt from you. You control and can always see the entire prompt.
</Warning>

## Calling the function
Recall that BAML will generate a `baml_client` directory in the language of your choice using the parameters in your [`generator`](/ref/baml/generator) config. This contains the function and types you defined.

Now we can call the function, which will make a request to the LLM and return the `Resume` object:
<CodeBlocks>
```python python
# Import the baml client (We call it `b` for short)
from baml_client import b
# Import the Resume type, which is now a Pydantic model!
from baml_client.types import Resume

def main():
    resume_text = """Jason Doe\nPython, Rust\nUniversity of California, Berkeley, B.S.\nin Computer Science, 2020\nAlso an expert in Tableau, SQL, and C++\n"""

    # this function comes from the autogenerated "baml_client".
    # It calls the LLM you specified and handles the parsing.
    resume = b.ExtractResume(resume_text)

    # Fully type-checked and validated!
    assert isinstance(resume, Resume)

```

```typescript typescript
import b from 'baml_client'
import { Resume } from 'baml_client/types'

async function main() {
  const resume_text = `Jason Doe\nPython, Rust\nUniversity of California, Berkeley, B.S.\nin Computer Science, 2020\nAlso an expert in Tableau, SQL, and C++`

  // this function comes from the autogenerated "baml_client".
  // It calls the LLM you specified and handles the parsing.
  const resume = await b.ExtractResume(resume_text)

  // Fully type-checked and validated!
  resume.name === 'Jason Doe'
  if (resume instanceof Resume) {
    console.log('resume is a Resume')
  }
}
```

```ruby ruby

require_relative "baml_client/client"
b = Baml.Client

# Note this is not async
res = b.TestFnNamedArgsSingleClass(
    myArg: Baml::Types::Resume.new(
        key: "key",
        key_two: true,
        key_three: 52,
    )
)
```

</CodeBlocks>


<Warning>
Do not modify any code inside `baml_client`, as it's autogenerated.
</Warning>

## Next steps

Checkout [PromptFiddle](https://promptfiddle.com) to see various interactive BAML function examples or view the [example prompts](/examples)

Read the next guide to learn more about choosing different LLM providers and running tests in the VSCode extension.

<CardGroup cols={2}>

  <Card title="Switching LLMs" icon="fa-solid fa-gears" href="/guide/baml-basics/switching-llms">

    Use any provider or open-source model

  </Card>

  <Card title="Testing Functions" icon="fa-solid fa-vial" href="/guide/baml-basics/testing-functions">

    Test your functions in the VSCode extension

  </Card>

  <Card title="Chat Roles" icon="fa-solid fa-comments" href="/examples/prompt-engineering/chat">

    Define user or assistant roles in your prompts

  </Card>

  <Card title="Function Calling / Tools" icon="fa-solid fa-toolbox" href="/examples/prompt-engineering/tools-function-calling">

    Use function calling or tools in your prompts

  </Card>

</CardGroup>


================================================
FILE: fern/01-guide/04-baml-basics/streaming.mdx
================================================
---
slug: /guide/baml-basics/streaming
---

BAML lets you stream in structured JSON output from LLMs as it comes in.

If you tried streaming in a JSON output from an LLM you'd see something like:
```
{"items": [{"name": "Appl
{"items": [{"name": "Apple", "quantity": 2, "price": 1.
{"items": [{"name": "Apple", "quantity": 2, "price": 1.50}], "total_cost":
{"items": [{"name": "Apple", "quantity": 2, "price": 1.50}], "total_cost": 3.00} # Completed
```

BAML gives you fine-grained control of how it fixes this partial JSON and transforms
it into a series of semantically valid partial objects.

<Tip>You can check out more examples (including streaming in FastAPI and NextJS) in the [BAML Examples] repo.</Tip>

[call BAML functions]: /docs/calling-baml/calling-functions
[BAML Examples]: https://github.com/BoundaryML/baml-examples/tree/main

Let's stream the output of this function `function ExtractReceiptInfo(email: string) -> ReceiptInfo` for our example:

<Accordion title="extract-receipt-info.baml">

```rust
class ReceiptItem {
  name string
  description string?
  quantity int
  price float
}

class ReceiptInfo {
    items ReceiptItem[]
    total_cost float?
}

function ExtractReceiptInfo(email: string) -> ReceiptInfo {
  client GPT4o
  prompt #"
    Given the receipt below:

    {{ email }}

    {{ ctx.output_format }}
  "#
}
```
</Accordion>

The BAML code generator creates a set of types in the `baml_client` library
in a module called `partial_types` in `baml_client`. These types are modified
from your original types to support streaming.

By default, BAML will convert all Class fields into nullable fields, and
fill those fields with non-null values as much as possible given the tokens
received so far.

<Tabs>

<Tab title="Python">
BAML will generate `b.stream.ExtractReceiptInfo()` for you, which you can use like so:

```python main.py
import asyncio
from baml_client import b, partial_types, types

# Using a stream:
def example1(receipt: str):
    stream = b.stream.ExtractReceiptInfo(receipt)

    # partial is a Partial type with all Optional fields
    for partial in stream:
        print(f"partial: parsed {len(partial.items)} items (object: {partial})")

    # final is the full, original, validated ReceiptInfo type
    final = stream.get_final_response()
    print(f"final: {len(final.items)} items (object: {final})")

# Using only get_final_response() of a stream
#
# In this case, you should just use b.ExtractReceiptInfo(receipt) instead,
# which is slightly faster and more efficient.
def example2(receipt: str):
    final = b.stream.ExtractReceiptInfo(receipt).get_final_response()
    print(f"final: {len(final.items)} items (object: {final})")

# Using the async client:
async def example3(receipt: str):
    # Note the import of the async client
    from baml_client.async_client import b
    stream = b.stream.ExtractReceiptInfo(receipt)
    async for partial in stream:
        print(f"partial: parsed {len(partial.items)} items (object: {partial})")

    final = await stream.get_final_response()
    print(f"final: {len(final.items)} items (object: {final})")

receipt = """
04/14/2024 1:05 pm

Ticket: 220000082489
Register: Shop Counter
Employee: Connor
Customer: Sam
Item	#	Price
Guide leash (1 Pair) uni UNI
1	$34.95
The Index Town Walls
1	$35.00
Boot Punch
3	$60.00
Subtotal	$129.95
Tax ($129.95 @ 9%)	$11.70
Total Tax	$11.70
Total	$141.65
"""

if __name__ == '__main__':
    #uncomment one at a time and run to see the difference
    example1(receipt)
    #example2(receipt)
    #asyncio.run(example3(receipt))
```
</Tab>

<Tab title="TypeScript">
BAML will generate `b.stream.ExtractReceiptInfo()` for you, which you can use like so:

```ts main.ts
import { b } from './baml_client'

// Using both async iteration and getFinalResponse() from a stream
const example1 = async (receipt: string) => {
  const stream = b.stream.ExtractReceiptInfo(receipt)

  // partial is a Partial type with all Optional fields
  for await (const partial of stream) {
    console.log(`partial: ${partial.items?.length} items (object: ${partial})`)
  }

  // final is the full, original, validated ReceiptInfo type
  const final = await stream.getFinalResponse()
  console.log(`final: ${final.items.length} items (object: ${final})`)
}

// Using only async iteration of a stream
const example2 = async (receipt: string) => {
  for await (const partial of b.stream.ExtractReceiptInfo(receipt)) {
    console.log(`partial: ${partial.items?.length} items (object: ${partial})`)
  }
}

// Using only getFinalResponse() of a stream
//
// In this case, you should just use b.ExtractReceiptInfo(receipt) instead,
// which is faster and more efficient.
const example3 = async (receipt: string) => {
  const final = await b.stream.ExtractReceiptInfo(receipt).getFinalResponse()
  console.log(`final: ${final.items.length} items (object: ${final})`)
}

const receipt = `
04/14/2024 1:05 pm

Ticket: 220000082489
Register: Shop Counter
Employee: Connor
Customer: Sam
Item	#	Price
Guide leash (1 Pair) uni UNI
1	$34.95
The Index Town Walls
1	$35.00
Boot Punch
3	$60.00
Subtotal	$129.95
Tax ($129.95 @ 9%)	$11.70
Total Tax	$11.70
Total	$141.65
`

if (require.main === module) {
  example1(receipt)
  example2(receipt)
  example3(receipt)
}
```
</Tab>

<Tab title="Ruby (beta)">
BAML will generate `Baml.Client.stream.ExtractReceiptInfo()` for you,
which you can use like so:

```ruby main.rb
require_relative "baml_client/client"

$b = Baml.Client

# Using both iteration and get_final_response() from a stream
def example1(receipt)
  stream = $b.stream.ExtractReceiptInfo(receipt)

  stream.each do |partial|
    puts "partial: #{partial.items&.length} items"
  end

  final = stream.get_final_response
  puts "final: #{final.items.length} items"
end

# Using only iteration of a stream
def example2(receipt)
  $b.stream.ExtractReceiptInfo(receipt).each do |partial|
    puts "partial: #{partial.items&.length} items"
  end
end

# Using only get_final_response() of a stream
#
# In this case, you should just use BamlClient.ExtractReceiptInfo(receipt) instead,
# which is faster and more efficient.
def example3(receipt)
  final = $b.stream.ExtractReceiptInfo(receipt).get_final_response
  puts "final: #{final.items.length} items"
end

receipt = <<~RECEIPT
  04/14/2024 1:05 pm

  Ticket: 220000082489
  Register: Shop Counter
  Employee: Connor
  Customer: Sam
  Item  #  Price
  Guide leash (1 Pair) uni UNI
  1 $34.95
  The Index Town Walls
  1 $35.00
  Boot Punch
  3 $60.00
  Subtotal $129.95
  Tax ($129.95 @ 9%) $11.70
  Total Tax $11.70
  Total $141.65
RECEIPT

if __FILE__ == $0
  example1(receipt)
  example2(receipt)
  example3(receipt)
end
```

</Tab>
<Tab title="OpenAPI">

Streaming is not yet supported via OpenAPI, but it will be coming soon!

</Tab>
</Tabs>

<Note>
Number fields are always streamed in only when the LLM completes them. E.g. if
the final number is 129.95, you'll only see null or 129.95 instead of partial
numbers like 1, 12, 129.9, etc.
</Note>

## Semantic Streaming

BAML provides powerful attributes to control how your data streams, ensuring that partial values always maintain semantic validity. Here are the three key streaming attributes:

### `@stream.done`
This attribute ensures a type or field is only streamed when it's completely finished. It's useful when you need atomic, fully-formed values.

For example:
```baml
class ReceiptItem {
  name string
  quantity int
  price float

  // The entire ReceiptItem will only stream when complete
  @@stream.done
}

// Receipts is a list of ReceiptItems,
// each internal item will only stream when complete
type Receipts = ReceiptItem[]

class Person {
  // Name will only appear when fully complete,
  // until then it will be null
  name string @stream.done
  // Numbers (floats and ints) will only appear
  // when fully complete by default
  age int
  // Bio will stream token by token
  bio string
}
```

### `@stream.not_null`
This attribute ensures a containing object is only streamed when this field has a value. It's particularly useful for discriminator fields or required metadata.

For example:
```baml
class Message {
  // Message won't stream until type is known
  type "error" | "success" | "info" @stream.not_null
  // Timestamp will only appear when fully complete
  // until then it will be null
  timestamp string @stream.done
  // Content can stream token by token
  content string
}
```

### `@stream.with_state`
This attribute adds metadata to track if a field has finished streaming. It's perfect for showing loading states in UIs.

For example:
```baml
class BlogPost {
  // The blog post will only stream when title is known
  title string @stream.done @stream.not_null
  // The content will stream token by token, and include completion state
  content string @stream.with_state
}
```

This will generate the following code in the `partial_types` module:
<Tabs>
<Tab title="Python">
```python
class StreamState(BaseModel, Generic[T]):
  value: T,
  state: "incomplete" | "complete"

class BlogPost(BaseModel):
  title: str
  content: StreamState[str | None]
```
</Tab>

<Tab title="Typescript">
```typescript
interface StreamState<T> {
  value: T,
  state: "incomplete" | "complete"
}

interface BlogPost {
  title: StreamState<string>
  content: StreamState<string>
}
```
</Tab>
</Tabs>

### Type Transformation Summary

Here's how these attributes affect your types in generated code:

| BAML Type                         | Generated Type (during streaming)              | Description                                    |
|----------------------------------|----------------------------|------------------------------------------------|
| `T`                               | `Partial[T]?`              | Default: Nullable and partial                   |
| `T @stream.done`                  | `T?`                       | Nullable but always complete when present       |
| `T @stream.not_null`              | `Partial[T]`               | Always present but may be partial              |
| `T @stream.done @stream.not_null` | `T`                        | Always present and always complete             |
| `T @stream.with_state`            | `StreamState[Partial[T]?]` | Includes streaming state metadata              |

<Warning>
The return type of a function is not affected by streaming attributes!
</Warning>

## Putting it all together

Let's put all of these concepts together to design an application that
streams a conversation containing stock recommendations, using semantic
streaming to ensure that the streamed data obeys our domain's invariants.

```baml
enum Stock {
  APPL
  MSFT
  GOOG
  BAML
}

// Make recommendations atomic - we do not want a recommendation to be
// modified by streaming additional messages.
class Recommendation {
  stock Stock
  amount float
  action "buy" | "sell"
  @@stream.done
}

class AssistantMessage {
  message_type "greeting" | "conversation" | "farewell" @stream.not_null
  message string @stream.with_state @stream.not_null
}

function Respond(
  history: (UserMessage | AssistantMessage | Recommendation)[]
) -> Message | Recommendation {
  client DeepseekR1
  prompt #"
    Make the message in the conversation, using a conversational
    message or a stock recommendation, based on this conversation history:
    {{ history }}.

    {{ ctx.output_format }}
  "#
}
```

<Tabs>

<Tab title="Python">
The above BAML code will generate the following Python definitions in the
`partial_types` module. The use of streaming attributes has several effects on
the generated code:

 - `Recommendation` does not have any partial fields because it was marked
   `@stream.done`.
 - The `Message.message` `string` is wrapped in `StreamState`, allowing
   runtime checking of its completion status. This status could be used
   to render a spinner as the message streams in.
 - The `Message.message_type` field may not be `null`, because it was marked
   as `@stream.not_null`.

```python
class StreamState(BaseModel, Generic[T]):
  value: T,
  state: Literal["Pending", "Incomplete", "Complete"]

class Stock(str, Enum):
    APPL = "APPL"
    MSFT = "MSFT"
    GOOG = "GOOG"
    BAML = "BAML"

class Recommendation(BaseClass):
    stock: Stock
    amount: float
    action: Literal["buy", "sell"]

class Message(BaseClass):
  message_type: Literal["gretting","conversation","farewell"]
  message: StreamState[string]
```
</Tab>

<Tab title="Typescript">
This BAML code will generate the following Typescript definitions in the
`partial_types` module. The use of streaming attributes has several effects on
the generated code:

 - `Recommendation` does not have any partial fields because it was marked
   `@stream.done`.
 - The `Message.message` `string` is wrapped in `StreamState`, allowing
   runtime checking of its completion status. This status could be used
   to render a spinner as the message streams in.
 - The `Message.message_type` field may not be `null`, because it was marked
   as `@stream.not_null`.

```typescript
export interface StreamState<T> {
  value: T,
  state: "Pending" | "Incomplete" | "Complete"
}

export enum Category {
  APPL = "APPl",
  MSFT = "MSFT",
  GOOG = "GOOG",
  BAML = "BAML",
}

export interface Recommendation {
  stock: Stock,
  amount: float,
  action: "buy" | "sell"
}

export interface Message {
  message_type: "gretting" | "conversation" | "farewell"
  message: StreamState<string>
}
```
</Tab>

</Tabs>



================================================
FILE: fern/01-guide/04-baml-basics/switching-llms.mdx
================================================
---
title: Switching LLMs
slug: guide/baml-basics/switching-llms
---

BAML Supports getting structured output from **all** major providers as well as all OpenAI-API compatible open-source models. See [LLM Providers Reference](/ref/llm-client-providers/open-ai) for how to set each one up.
<Tip>
BAML can help you get structured output from **any Open-Source model**, with better performance than other techniques, even when it's not officially supported via a Tool-Use API (like o1-preview) or fine-tuned for it! [Read more about how BAML does this](https://www.boundaryml.com/blog/schema-aligned-parsing).
</Tip>

### Using `client "<provider>/<model>"`

Using `openai/model-name` or `anthropic/model-name` will assume you have the ANTHROPIC_API_KEY or OPENAI_API_KEY environment variables set.

```rust BAML
function MakeHaiku(topic: string) -> string {
  client "openai/gpt-4o" // or anthropic/claude-3-5-sonnet-20240620
  prompt #"
    Write a haiku about {{ topic }}.
  "#
}
```

### Using a named client
<Note>Use this if you are using open-source models or need customization</Note>
The longer form uses a named client, and supports adding any parameters supported by the provider or changing the temperature, top_p, etc.

```rust BAML
client<llm> MyClient {
  provider "openai"
  options {
    model "gpt-4o"
    api_key env.OPENAI_API_KEY
    // other params like temperature, top_p, etc.
    temperature 0.0
    base_url "https://my-custom-endpoint.com/v1"
    // add headers
    headers {
      "anthropic-beta" "prompt-caching-2024-07-31"
    }
  }

}

function MakeHaiku(topic: string) -> string {
  client MyClient
  prompt #"
    Write a haiku about {{ topic }}.
  "#
}
```

Consult the [provider documentation](/ref/llm-client-providers/open-ai) for a list of supported providers
and models, the default options, and setting [retry policies](/ref/llm-client-strategies/retry-policy).

<Tip>
If you want to specify which client to use at runtime, in your Python/TS/Ruby code,
you can use the [client registry](/ref/baml_client/client-registry) to do so.

This can come in handy if you're trying to, say, send 10% of your requests to a
different model.
</Tip>



================================================
FILE: fern/01-guide/04-baml-basics/testing-functions.mdx
================================================
---
slug: /guide/baml-basics/testing-functions
---

You can test your BAML functions in the VSCode Playground by adding a `test` snippet into a BAML file:

```baml
enum Category {
    Refund
    CancelOrder
    TechnicalSupport
    AccountIssue
    Question
}

function ClassifyMessage(input: string) -> Category {
  client GPT4Turbo
  prompt #"
    ... truncated ...
  "#
}

test Test1 {
  functions [ClassifyMessage]
  args {
    // input is the first argument of ClassifyMessage
    input "Can't access my account using my usual login credentials, and each attempt results in an error message stating 'Invalid username or password.' I have tried resetting my password using the 'Forgot Password' link, but I haven't received the promised password reset email."
  }
  // 'this' is the output of the function
  @@assert( {{ this == "AccountIssue" }})
}
```

### Try it! Press 'Run Test' below!

{" "}

<div class="resizer">
  <iframe
    class="resized"
    src="https://promptfiddle.com/embed?id=testing_functions"
    height="640"
    style="border: none;"
    resize="both"
    overflow="auto"
    msallowfullscreen
  ></iframe>
</div>

See more [interactive examples](https://promptfiddle.com)

The BAML playground will give you a starting snippet to copy that will match your function signature.

<Warning>
  BAML doesn't use colons `:` between key-value pairs except in function
  parameters.
</Warning>

<hr />
## Complex object inputs

Objects are injected as dictionaries

```rust
class Message {
  user string
  content string
}

function ClassifyMessage(messages: Messages[]) -> Category {
...
}

test Test1 {
  functions [ClassifyMessage]
  args {
    messages [
      {
        user "hey there"
        // multi-line string using the #"..."# syntax
        content #"
          You can also add a multi-line
          string with the hashtags
          Instead of ugly json with \n
        "#
      }
    ]
  }
}
```

<hr />
## Test Image Inputs in the Playground

For a function that takes an image as input, like so:

```baml
function MyFunction(myImage: image) -> string {
  client GPT4o
  prompt #"
    Describe this image: {{myImage}}
  "#
}
```

You can define test cases using image files, URLs, or base64 strings.

<Tabs>

<Tab title="File">

<Warning>
  Committing a lot of images into your repository can make it slow to clone and
  pull your repository. If you expect to commit >500MiB of images, please read
  [GitHub's size limit documentation][github-large-files] and consider setting
  up [large file storage][github-lfs].
</Warning>

[github-large-files]: https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github
[github-lfs]: https://docs.github.com/en/repositories/working-with-files/managing-large-files/configuring-git-large-file-storage

```baml
test Test1 {
  functions [MyFunction]
  args {
    myImage {
      file "../path/to/image.png"
    }
  }
}
```

<ParamField path="file" type="string" required="true">
  The path to the image file, relative to the directory containing the current BAML file.

Image files must be somewhere in `baml_src/`.

</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the image. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on first, the file extension,
  and second, the contents of the file.
</ParamField>

</Tab>

<Tab title="URL">
```baml
test Test1 {
  functions [MyFunction]
  args {
    myImage {
      url "https...."
    }
  }
}
```

<ParamField path="url" type="string" required="true">
  The publicly accessible URL from which the image may be downloaded.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the image. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.
</ParamField>

</Tab>

<Tab title="Base64">
```baml
test Test1 {
  args {
    myImage {
      base64 "base64string"
      media_type "image/png"
    }
  }
}
```

<ParamField path="base64" type="string" required="true">
  The base64-encoded image data.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the image. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.

If `base64` is a data URL, this field will be ignored.

</ParamField>

</Tab>
</Tabs>

<br />
## Test Audio Inputs in the Playground

For a function that takes audio as input, like so:

```baml
function MyFunction(myAudio: audio) -> string {
  client GPT4o
  prompt #"
    Describe this audio: {{myAudio}}
  "#
}
```

You can define test cases using audio files, URLs, or base64 strings.

<Tabs>

<Tab title="File">

<Warning>
  Committing a lot of audio files into your repository can make it slow to clone
  and pull your repository. If you expect to commit >500MiB of audio, please
  read [GitHub's size limit documentation][github-large-files] and consider
  setting up [large file storage][github-lfs].
</Warning>

```baml
test Test1 {
  functions [MyFunction]
  args {
    myAudio {
      file "../path/to/audio.mp3"
    }
  }
}
```

<ParamField path="file" type="string" required="true">
  The path to the audio file, relative to the directory containing the current BAML file.

audio files must be somewhere in `baml_src/`.

</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the audio. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on first, the file extension,
  and second, the contents of the file.
</ParamField>

</Tab>

<Tab title="URL">
```baml
test Test1 {
  functions [MyFunction]
  args {
    myAudio {
      url "https...."
    }
  }
}
```

<ParamField path="url" type="string" required="true">
  The publicly accessible URL from which the audio may be downloaded.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the audio. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.
</ParamField>

</Tab>

<Tab title="Base64">
```baml
test Test1 {
  args {
    myAudio {
      base64 "base64string"
      media_type "audio/mp3"
    }
  }
}
```

<ParamField path="base64" type="string" required="true">
  The base64-encoded audio data.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the audio. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.

If `base64` is a data URL, this field will be ignored.

</ParamField>
</Tab>
</Tabs>

<br />
## Test Pdf Inputs in the Playground

For a function that takes a Pdf as input, like so:

```baml
function MyFunction(myPdf: pdf) -> string {
  client GPT4o
  prompt #"
    Summarize this Pdf: {{myPdf}}
  "#
}
```

You can define test cases using Pdf files, URLs, or base64 strings.

<Tabs>

<Tab title="File">

<Warning>
  Committing a lot of Pdf files into your repository can make it slow to clone
and pull your repository. If you expect to commit >500MiB of Pdfs, please
  read [GitHub's size limit documentation][github-large-files] and consider
  setting up [large file storage][github-lfs].
</Warning>

```baml
test Test1 {
  functions [MyFunction]
  args {
    myPdf {
      file "../path/to/document.pdf"
    }
  }
}
```

<ParamField path="file" type="string" required="true">
  The path to the Pdf file, relative to the directory containing the current BAML file.

Pdf files must be somewhere in `baml_src/`.

</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the Pdf. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on first, the file extension,
  and second, the contents of the file.
</ParamField>

</Tab>

<Tab title="URL">
```baml
test Test1 {
  functions [MyFunction]
  args {
    myPdf {
      url "https...."
    }
  }
}
```

<ParamField path="url" type="string" required="true">
  The publicly accessible URL from which the Pdf may be downloaded.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the Pdf. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.
</ParamField>

</Tab>

<Tab title="Base64">
```baml
test Test1 {
  args {
    myPdf {
      base64 "base64string"
      media_type "application/pdf"
    }
  }
}
```

<ParamField path="base64" type="string" required="true">
  The base64-encoded Pdf data.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the Pdf. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.

If `base64` is a data URL, this field will be ignored.

</ParamField>
</Tab>
</Tabs>

<br />
## Test Video Inputs in the Playground

For a function that takes a video as input, like so:

```baml
function MyFunction(myVideo: video) -> string {
  client GPT4o
  prompt #"
    Describe this video: {{myVideo}}
  "#
}
```

You can define test cases using video files, URLs, or base64 strings.

<Tabs>

<Tab title="File">

<Warning>
  Committing large video files into your repository can make it slow to clone
  and pull your repository. If you expect to commit >500MiB of videos, please
  read [GitHub's size limit documentation][github-large-files] and consider
  setting up [large file storage][github-lfs].
</Warning>

```baml
test Test1 {
  functions [MyFunction]
  args {
    myVideo {
      file "../path/to/video.mp4"
    }
  }
}
```

<ParamField path="file" type="string" required="true">
  The path to the video file, relative to the directory containing the current BAML file.

Video files must be somewhere in `baml_src/`.

</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the video. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on first, the file extension,
  and second, the contents of the file.
</ParamField>

</Tab>

<Tab title="URL">
```baml
test Test1 {
  functions [MyFunction]
  args {
    myVideo {
      url "https...."
    }
  }
}
```

<ParamField path="url" type="string" required="true">
  The publicly accessible URL from which the video may be downloaded.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the video. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.
</ParamField>

</Tab>

<Tab title="Base64">
```baml
test Test1 {
  args {
    myVideo {
      base64 "base64string"
      media_type "video/mp4"
    }
  }
}
```

<ParamField path="base64" type="string" required="true">
  The base64-encoded video data.
</ParamField>

<ParamField path="media_type" type="string">
  The mime-type of the video. If not set, and the provider expects a mime-type
  to be provided, BAML will try to infer it based on the contents of the file.

If `base64` is a data URL, this field will be ignored.

</ParamField>
</Tab>
</Tabs>

## Assertions

Test blocks in BAML code may contain checks and asserts. These attributes
behave similarly to value-level [Checks and Asserts](/guide/baml-advanced/checks-and-asserts),
with several additional variables available in the context of the jinja
expressions you can write in a test:

- The `_` variable contains fields `result`, `checks` and `latency_ms`.
- The `this` variable refers to the value computed by the test, and is
  shorthand for `_.result`.
- In a given check or assert, `_.checks.$NAME` can refer to the NAME of any earlier
  check that was run in the same test block. By referring to prior checks,
  you can build compound checks and asserts, for example asserting that all
  checks of a certain type passed.

The following example illustrates how each of these features can be used to
validate a test result.

```rust
test MyTest {
  functions [EchoString]
  args {
    input "example input"
  }
  @@check( nonempty, {{ this|length > 0 }} )
  @@check( small_enough, {{ _.result|length < 1000 }} )
  @@assert( {{ _.checks.nonempty and _.checks.small_enough }})
  @@assert( {{ _.latency_ms < 1000 }})
}
```

`@@check` and `@@assert` behave differently:

- A `@@check` represents a property
  of the test result that should either be manually checked or checked by a
  subsequent stage in the test. Multiple `@@check` predicates can fail
  without causing a hard failure of the test.
- An `@@assert` represents a hard guarantee. The first failing assert will halt
  the remainder of the checks and asserts in this particular test.

For more information about the syntax used inside `@@check` and `@@assert`
attributes, see [Checks and Asserts](/guide/baml-advanced/checks-and-asserts)

## Dynamic Types Tests

Classes and enums marked with the [`@@dynamic`](/ref/baml_client/type-builder)
attribute can be modified in tests using the `type_builder` and `dynamic`
blocks.

<Markdown src="../../snippets/dynamic-class-test.mdx" />

The `type_builder` block can contain new types scoped to the parent `test` block
and also `dynamic` blocks that act as modifiers for dynamic classes or enums.

### Try it! Press 'Run Test' below!

{" "}

<div class="resizer">
  <iframe
    class="resized"
    src="https://promptfiddle.com/embed?id=dynamic_types"
    height="640"
    style="border: none;"
    resize="both"
    overflow="auto"
    msallowfullscreen
  ></iframe>
</div>

## Command Line Testing

While the VSCode playground is excellent for interactive development and debugging, you can also run your tests from the command line using the BAML CLI:

```bash
# Run all tests
baml-cli test

# Run tests for a specific function
baml-cli test -i "ClassifyMessage::"

# Run tests in parallel with custom concurrency
baml-cli test --parallel 5

# List available tests without running them
baml-cli test --list
```

See the [CLI Test Reference](/ref/baml-cli/test) for complete documentation of all available options, filtering capabilities, and output formats.



================================================
FILE: fern/01-guide/05-baml-advanced/checks-and-asserts.mdx
================================================

With checks and asserts, you can set specific rules to ensure your data's
value falls within an acceptable range.

BAML provides two types of validations:
- **`@assert`** for strict validations. If a type fails an `@assert` validation, it
  will not be returned in the response. If the failing assertion was part of the
  top-level type, it will raise an exception. If it's part of a container, it
  will be removed from the container.
- **`@check`** for non-exception-raising validations. Whether a `@check` passes or
  fails, the data will be returned. You can access the results of invidividual
  checks in the response data.

## Assertions

Assertions are used to guarantee properties about a type or its components in a response.
They can be written directly as inline attributes next to the field
definition or on the line following the field definition, or on a top-level type used
in a function declaration.

### Using `@assert`

BAML will raise an exception if a function returns a `Foo` where `Foo.bar`
is not between 0 and 10.

If the function `NextInt8` returns `128`, BAML will raise an exception.

```baml BAML
class Foo {
  bar int @assert(between_0_and_10, {{ this > 0 and this < 10 }}) //this = Foo.bar value
}

function NextInt8(a: int) -> int @assert(ok_int8, {{ this >= -128 and this < 127 }}) {
  client GPT4
  prompt #"Return the number after {{ a }}"#
}
```

See [Jinja in Attributes](/ref/attributes/jinja-in-attributes) for a longer description of the Jinja syntax
available in asserts.

Asserts may be applied to a whole class via `@@assert`.

```baml BAML
class Bar {
  baz int
  quux string
  @@assert(length_limit, {{ this.quux|length < this.baz }})
}
```

### Using `@assert` with `Union` Types

Note that when using [`Unions`](/ref/baml/types#union-), it is
crucial to specify where the `@assert` attribute is applied within the union
type, as it is not known until runtime which type the value will be.

```baml BAML
class Foo {
  bar (int @assert(positive, {{ this > 0 }}) | bool @assert(is_true, {{ this }}))
}
```

In the above example, the `@assert` attribute is applied specifically to the
`int` and `string` instances of the `Union`, rather than to the `Foo.bar` field
as a whole.

Likewise, the keyword `this` refers to the value of the type instance it is
directly associated with (e.g., `int` or `string`).

## Chaining Assertions
You can have multiple assertions on a single field by chaining multiple `@assert` attributes.

In this example, the asserts on `bar` and `baz` are equivalent.
```baml BAML
class Foo {
  bar int @assert(between_0_and_10, {{ this > 0 and this < 10 }})
  baz int @assert(positive, {{ this > 0 }}) @assert(less_than_10, {{ this < 10 }})
}
```

Chained asserts are evaluated in order from left to right. If the first assert
fails, the second assert will not be evaluated.

## Writing Assertions

Assertions are represented as Jinja expressions and can be used to validate
various types of data. Possible constraints include checking the length of a
string, comparing two values, or verifying the presence of a substring with
regular expressions.

In the future, we plan to support shorthand syntax for common assertions to make
writing them easier.

For now, see our [Jinja cookbook / guide](/ref/prompt-syntax/what-is-jinja)
or the [Minijinja filters docs](https://docs.rs/minijinja/latest/minijinja/filters/index.html#functions)
for more information on writing expressions.



### Expression keywords

- `this` refers to the value of the current field being validated.


`this.field` is used to refer to a specific field within the context of `this`.
Access nested fields of a data type by chaining the field names together with a `.` as shown below.
```baml BAML
class Resume {
  name string
  experience string[]

}

class Person {
  resume Resume @assert({{ this.experience|length > 0 }}, "Nonzero experience")
  person_name name
}
```

## Assertion Errors

When asserts fail, your BAML function will raise a `BamlValidationError`
exception, same as when parsing fails. You can catch this exception and handle
it as you see fit.

You can define custom names for each assertion, which will be included
in the exception for that failure case. If you don't define a custom name,
BAML will display the body of the assert expression.

In this example, if the `quote` field is empty, BAML raises a
`BamlValidationError` with the message **"exact_citation_not_found"**. If the
`website_link` field does not contain **"https://",** it raises a
`BamlValidationError` with the message **invalid_link**.

```baml BAML
class Citation {
  //@assert(<name>, <expr>)
  quote string @assert(exact_citation_found,
	  {{ this|length > 0 }}
  )

  website_link string @assert(valid_link,
    {{ this|regex_match("https://") }}
  )
}
```

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_client.types import Citation

def main():
    try:
        citation: Citation = b.GetCitation("SpaceX, is an American spacecraft manufacturer, launch service provider...")

        # Access the value of the quote field
        quote = citation.quote
        website_link = citation.website_link
        print(f"Quote: {quote} from {website_link}")

    except BamlValidationError as e:
        print(f"Validation error: {str(e)}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import { b, BamlValidationError } from './baml_client';
import { Citation } from './baml_client/types';

const main = () => {
    try {
        const citation = b.GetCitation("SpaceX, is an American spacecraft manufacturer, launch service provider...");

        const quote = citation.quote.value;
        console.log(`Quote: ${quote}`);

        const checks = citation.quote.checks;
        console.log(`Check exact_citation_found: ${checks.exact_citation_found.status}`);
        for (const check of get_checks(checks)) {
            console.log(`Check ${check.name}: ${check.status}`);
        }

        const author = citation.author;
        console.log(`Author: ${author}`);
    } catch (e) {
        if (e instanceof BamlValidationError) {
            console.log(`Validation error: ${e}`);
        } else {
            console.error(e);
        }
    }
};
```
</Tab>
</Tabs>


## Checks

`@check` attributes add validation without raising exceptions if they fail.
Types with `@check` attributes allow the checks to be inspected at
runtime.


```baml BAML
( bar int @check(less_than_zero, {{ this < 0 }}) )[]
```

<Tabs>
<Tab title="Python" language="python">
```python
List[Checked[int, Dict[Literal["less_than_zero"]]]]
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
Checked<int,"less_than_zero">[]
```
</Tab>
</Tabs>


The following example uses both `@check` and `@assert`. If `line_number` fails its
`@assert`, no `Citation` will be returned by `GetCitation()`. However,
`exact_citation_not_found` can fail without interrupting the result. Because it
was a `@check`, client code can inspect the result of the check.


```baml BAML
class Citation {
  quote string @check(
      exact_citation_match,
	  {{ this|length > 0 }}
  )
  line_number string @assert(
    has_line_number,
    {{ this|length >= 0 }}
  )
}

function GetCitation(full_text: string) -> Citation {
  client GPT4
  prompt #"
    Generate a citation of the text below in MLA format:
    {{full_text}}

    {{ctx.output_format}}
  "#
}

```

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_client.types import Citation, get_checks

def main():
    citation = b.GetCitation("SpaceX, is an American spacecraft manufacturer, launch service provider...")

    # Access the value of the quote field
    quote = citation.quote.value
    print(f"Quote: {quote}")

    # Access a particular check.
    quote_match_check = citation.quote.checks['exact_citation_match'].status
    print(f"Citation match status: {quote_match_check})")

    # Access each check and its status.
    for check in get_checks(citation.quote.checks):
        print(f"Check {check.name}: {check.status}")
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import { b, get_checks } from './baml_client'
import { Citation } from './baml_client/types'

const main = () => {
    const citation = b.GetCitation("SpaceX, is an American spacecraft manufacturer, launch service provider...");

    // Access the value of the quote field
    const quote = citation.quote.value
    console.log(`Quote: ${quote}`)

    // Access a particular check.
    const quote_match_check = citation.quote.checks.exact_citation_match.status;
    console.log(`Exact citation status: ${quote_match_check}`);

    // Access each check and its status.
    for (const check of get_checks(citation.quote.checks)) {
        console.log(`Check: ${check.name}, Status: ${check.status}`)
    }
}
```
</Tab>
</Tabs>

You can also chain multiple `@check` and `@assert` attributes on a single field.

```baml BAML
class Foo {
  bar string @check(bar_nonempty, {{ this|length > 0 }})
  @assert(bar_no_foo, {{ this|regex_match("foo") }})
  @check(bar_no_fizzle, {{ this|regex_match("fizzle") }})
  @assert(bar_no_baz, {{ this|regex_match("baz") }})
}
```

<Tip> When using `@check`, all checks on the response data are evaluated even if
one fails. In contrast, with `@assert`, a failure will stop the parsing process
and immediately raise an exception. </Tip>


## Advanced Example

The following example shows more complex minijinja expressions, see the
[Minijinja filters docs](https://docs.rs/minijinja/latest/minijinja/filters/index.html#functions)
for more information on available operators to use in your assertions.

--------

The `Book` and `Library` classes below demonstrate how to validate a book's
title, author, ISBN, publication year, genres, and a library's name and books.
The block-level assertion in the `Library` class ensures that all books have
unique ISBNs.

```baml BAML
class Book {
    title string @assert(this|length > 0)
    author string @assert(this|length > 0)
    isbn string @assert(
        {{ this|regex_match("^(97(8|9))?\d{9}(\d|X)$") }},
        "Invalid ISBN format"
    )
    publication_year int @assert(valid_pub_year, {{ 1000 <= this <= 2100 }})
    genres string[] @assert(valid_length, {{ 1 <= this|length <= 10 }})
}

class Library {
    name string
    books Book[] @assert(nonempty_books, {{ this|length > 0 }})
                 @assert(unique_isbn, {{ this|map(attribute='isbn')|unique()|length == this|length }} )
}
```

In this example, we use a block-level `@@assert` to check a dependency across
a pair of fields.

```baml BAML
class Person {
    name string @assert(valid_name, {{ this|length >= 2 }})
    age int @assert(valid_age, {{ this >= 0 }})
    address Address

    @@assert(not_usa_minor, {{
        this.age >= 18 or this.address.country != "USA",
    }})
}

```



================================================
FILE: fern/01-guide/05-baml-advanced/client-registry.mdx
================================================
---
title: Client Registry
---

If you need to modify the model / parameters for an LLM client at runtime, you can modify the `ClientRegistry` for any specified function.

<Tabs>

<Tab title="Python">

```python
import os
from baml_py import ClientRegistry

async def run():
    cr = ClientRegistry()
    # Creates a new client
    cr.add_llm_client(name='MyAmazingClient', provider='openai', options={
        "model": "gpt-4o",
        "temperature": 0.7,
        "api_key": os.environ.get('OPENAI_API_KEY')
    })

    # Creates a client using the OpenAI Responses API
    cr.add_llm_client(name='MyResponsesClient', provider='openai-responses', options={
        "model": "gpt-4.1",
        "api_key": os.environ.get('OPENAI_API_KEY')
    })

    # Sets MyAmazingClient as the primary client
    cr.set_primary('MyAmazingClient')

    # ExtractResume will now use MyAmazingClient as the calling client
    res = await b.ExtractResume("...", { "client_registry": cr })
```

</Tab>

<Tab title="TypeScript">
```typescript
import { ClientRegistry } from '@boundaryml/baml'

async function run() {
    const cr = new ClientRegistry()
    // Creates a new client
    cr.addLlmClient('MyAmazingClient', 'openai', {
        model: "gpt-4o",
        temperature: 0.7,
        api_key: process.env.OPENAI_API_KEY
    })

    // Creates a client using the OpenAI Responses API
    cr.addLlmClient('MyResponsesClient', 'openai-responses', {
        model: "gpt-4.1",
        api_key: process.env.OPENAI_API_KEY
    })

    // Sets MyAmazingClient as the primary client
    cr.setPrimary('MyAmazingClient')

    // ExtractResume will now use MyAmazingClient as the calling client
    const res = await b.ExtractResume("...", { clientRegistry: cr })
}
```
</Tab>

<Tab title="Ruby">

```ruby
require_relative "baml_client/client"

def run
  cr = Baml::ClientRegistry.new

  # Creates a new client
  cr.add_llm_client(
    'MyAmazingClient',
    'openai',
    {
      model: 'gpt-4o',
      temperature: 0.7,
      api_key: ENV['OPENAI_API_KEY']
    }
  )

  # Creates a client using the OpenAI Responses API
  cr.add_llm_client(
    'MyResponsesClient',
    'openai-responses',
    {
      model: 'gpt-4.1',
      api_key: ENV['OPENAI_API_KEY']
    }
  )

  # Sets MyAmazingClient as the primary client
  cr.set_primary('MyAmazingClient')

  # ExtractResume will now use MyAmazingClient as the calling client
  res = Baml.Client.extract_resume(input: '...', baml_options: { client_registry: cr })
end

# Call the asynchronous function
run
```
</Tab>

<Tab title="OpenAPI">

The API supports passing client registry as a field on `__baml_options__` in the request body.

Example request body:

```json
{
    "resume": "Vaibhav Gupta",
    "__baml_options__": {
        "client_registry": {
            "clients": [
                {
                    "name": "OpenAI",
                    "provider": "openai",
                    "retry_policy": null,
                    "options": {
                        "model": "gpt-4o-mini",
                        "api_key": "sk-..."
                    }
                },
                {
                    "name": "OpenAIResponses",
                    "provider": "openai-responses",
                    "retry_policy": null,
                    "options": {
                        "model": "gpt-4.1",
                        "api_key": "sk-..."
                    }
                }
            ],
            "primary": "OpenAI"
        }
    }
}
```

```sh
curl -X POST http://localhost:2024/call/ExtractResume \
    -H 'Content-Type: application/json' -d @body.json
```

</Tab>

</Tabs>

## ClientRegistry Interface

<Tip>
    Note: `ClientRegistry` is imported from `baml_py` in Python and `@boundaryml/baml` in TypeScript, not `baml_client`.

    As we mature `ClientRegistry`, we will add a more type-safe and ergonomic interface directly in `baml_client`. See [Github issue #766](https://github.com/BoundaryML/baml/issues/766).
</Tip>

Methods use `snake_case` in Python and `camelCase` in TypeScript.

### add_llm_client / addLlmClient
A function to add an LLM client to the registry.

<ParamField
    path="name"
    type="string"
    required
>
    The name of the client.

    <Warning>
    Using the exact same name as a client also defined in .baml files overwrites the existing client whenever the ClientRegistry is used.
    </Warning>
</ParamField>

<Markdown src="/snippets/client-constructor.mdx" />

<ParamField path="retry_policy" type="string">
The name of a retry policy that is already defined in a .baml file. See [Retry Policies](/ref/llm-client-strategies/retry-policy).
</ParamField>

### set_primary / setPrimary
This sets the client for the function to use. (i.e. replaces the `client` property in a function)

<ParamField
    path="name"
    type="string"
    required
>
    The name of the client to use.

    This can be a new client that was added with `add_llm_client` or an existing client that is already in a .baml file.
</ParamField>



================================================
FILE: fern/01-guide/05-baml-advanced/collector.mdx
================================================
---
title: Collector
---
<Info>
This feature was added in 0.79.0
</Info>

The `Collector` allows you to inspect the internal state of BAML function calls, including raw HTTP requests, responses, usage metrics, and timing information, so you can always see the raw data, without any abstraction layers.

## Quick Start

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_py import Collector

# Create a collector with optional name
collector = Collector(name="my-collector")

# Use it with a function call
result = b.ExtractResume("...", baml_options={"collector": collector})

# Access logging information
print(collector.last.usage)  # Print usage metrics
print(collector.last.raw_llm_response)  # Print final response as string
# since there may be retries, print the last http response received
print(collector.last.calls[-1].http_response)
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import { b } from 'baml_client'
import { Collector } from '@boundaryml/baml'

// Create a collector with optional name
const collector = new Collector("my-collector")

// Use it with a function call
const result = await b.ExtractResume("...", { collector })

// Access logging information
console.log(collector.last?.usage)  // Print usage metrics
console.log(collector.last?.rawLlmResponse)  // Print final response
// since there may be retries, print the last http response received
console.log(collector.last?.calls[-1].httpResponse)
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative "baml_client/client"
b = Baml.Client

# Create a collector with optional name
collector = Baml::Collector.new(name: "my-collector")

# Use it with a function call
res = b.ExtractResume(input: '...', baml_options: { collector: collector })

# Access logging information
print(collector.last.usage)  # Print usage metrics
print(collector.last.calls[-1].http_response)  # Print final response
print(collector.last.raw_llm_response) # a string of the last response made
```
</Tab>
</Tabs>

## Common Use Cases

### Basic Logging

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_py import Collector  # Import the Collector class

def run():
    # Create a collector instance with an optional name
    collector = Collector(name="my-collector")
    # collector will be modified by the function to include all internal state
    res = b.ExtractResume("...", baml_options={"collector": collector})
    # This will print the return type of the function
    print(res)

    # This is guaranteed to be set by the function
    assert collector.last is not None

    # This will print the id of the last request
    print(collector.last.id)

    # This will print the usage of the last request
    # (This aggregates usage from all retries if there was usage emitted)
    print(collector.last.usage)

    # This will print the raw response of the last request
    print(collector.last.calls[-1].http_response)

    # This will print the raw text we used to run the parser.
    print(collector.last.raw_llm_response)
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import {b} from 'baml_client'
import {Collector} from '@boundaryml/baml'

async function run() {
    // Create a collector instance with an optional name
    const collector = new Collector("my-collector")
    // collector will be modified by the function to include all internal state
    const res = await b.ExtractResume("...", { collector })
    // This will print the return type of the function
    console.log(res)

    // This is guaranteed to be set by the function
    assert(collector.last)

    // This will print the id of the last request
    console.log(collector.last.id)

    // This will print the usage of the last request
    // (This aggregates usage from all retries if there was usage emitted)
    console.log(collector.last.usage)

    // This will print the raw response of the last request
    console.log(collector.last.calls[-1].httpResponse)

    // This will print the raw text we used to run the parser.
    console.log(collector.last.rawLlmResponse)
}
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative "baml_client/client"
b = Baml.Client

def run
    # Create a collector instance
    collector = Baml::Collector.new(name: "my-collector")
    # The function will now use the collector to track internal state
    res = b.ExtractResume(input: 'hi there', baml_options: { collector: collector })

    # This will print the return type of the function
    print(res)

    # This is guaranteed to be set by the function
    raise "Assertion failed" unless collector.last

    # This will print the id of the last request
    print(collector.last.id)

    # This will print the usage of the last request
    # (This aggregates usage from all retries if there was usage emitted)
    print(collector.last.usage)

    # This will print the raw response of the last request
    print(collector.last.calls[-1].http_response)

    # This will print the raw text we used to run the parser.
    print(collector.last.raw_llm_response)
end

# Call the function
run
```
</Tab>
</Tabs>

### Managing Collector State

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_py import Collector

def run():
    collector = Collector(name="reusable-collector")
    res = b.ExtractResume("...", baml_options={"collector": collector})

    # Reuse the same collector
    res = b.TestOpenAIGPT4oMini("Second call", baml_options={"collector": collector})
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import {b} from 'baml_client'
import {Collector} from '@boundaryml/baml'

async function run() {
    const collector = new Collector("reusable-collector")
    const res = await b.ExtractResume("...", { collector })

    // Reuse the same collector
    const res2 = await b.ExtractResume("...", { collector })
}
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative "baml_client/client"
b = Baml.Client

def run
    collector = Baml::Collector.new(name: "reusable-collector")
    res = b.ExtractResume(input: 'First call', baml_options: { collector: collector })

    # Reuse the same collector
    res = b.ExtractResume(input: 'Second call', baml_options: { collector: collector })
end
```
</Tab>
</Tabs>

### Using Multiple Collectors

You can use multiple collectors to track different aspects of your application:

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_py import Collector

def run():
    # Create separate collectors for different parts of your application
    collector_a = Collector(name="collector-a")
    collector_b = Collector(name="collector-b")

    # Use both collectors for the same function call
    res = b.ExtractResume("...", baml_options={"collector": [collector_a, collector_b]})

    # Both collectors will have the same logs
    assert collector_a.last.usage.input_tokens == collector_b.last.usage.input_tokens

    # Use only collector_a for another call
    res2 = b.TestOpenAIGPT4oMini("another call", baml_options={"collector": collector_a})

    # collector_a will have 2 logs, collector_b will still have 1
    assert len(collector_a.logs) == 2
    assert len(collector_b.logs) == 1
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import {b} from 'baml_client'
import {Collector} from '@boundaryml/baml'

async function run() {
    // Create separate collectors for different parts of your application
    const collector_a = new Collector("collector-a")
    const collector_b = new Collector("collector-b")

    // Use both collectors for the same function call
    const res = await b.ExtractResume("...", { collector: [collector_a, collector_b] })

    // Both collectors will have the same logs
    assert(collector_a.last?.usage.inputTokens === collector_b.last?.usage.inputTokens)

    // Use only collector_a for another call
    const res2 = await b.ExtractResume("...", { collector: collector_a })

    // collector_a will have 2 logs, collector_b will still have 1
    assert(collector_a.logs.length === 2)
    assert(collector_b.logs.length === 1)
}
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative "baml_client/client"
b = Baml.Client
def run
    # Create separate collectors for different parts of your application
    collector_a = Baml::Collector.new(name: "collector-a")
    collector_b = Baml::Collector.new(name: "collector-b")

    # Use both collectors for the same function call
    res = b.ExtractResume(input: 'hi there', baml_options: { collector: [collector_a, collector_b] })

    # Both collectors will have the same logs
    raise "Assertion failed" unless collector_a.last.usage.input_tokens == collector_b.last.usage.input_tokens

    # Use only collector_a for another call
    res2 = b.ExtractResume(input: 'another call', baml_options: { collector: collector_a })

    # collector_a will have 2 logs, collector_b will still have 1
    raise "Assertion failed" unless collector_a.logs.length == 2
    raise "Assertion failed" unless collector_b.logs.length == 1
end
```
</Tab>
</Tabs>

### Usage Tracking

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client import b
from baml_py import Collector

def run():
    collector_a = Collector(name="collector-a")
    res = b.ExtractResume("...", baml_options={"collector": collector_a})

    collector_b = Collector(name="collector-b")
    res = b.ExtractResume("...", baml_options={"collector": collector_b})

    # The total usage of both logs is now available
    print(collector_a.usage)
    print(collector_b.usage)
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import {b} from 'baml_client'
import {Collector} from '@boundaryml/baml'

async function run() {
    const collector_a = new Collector("collector-a")
    const res = await b.ExtractResume("...", { collector: collector_a })

    const collector_b = new Collector("collector-b")
    const res2 = await b.ExtractResume("...", { collector: collector_b })
    // The total usage of both logs is now available
    console.log(collector_a.usage)
    console.log(collector_b.usage)
}
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative "baml_client/client"

def run
    collector_a = Baml::Collector.new(name: "collector-a")
    res = Baml.Client.ExtractResume(input: 'First call', baml_options: { collector: collector_a })

    collector_b = Baml::Collector.new(name: "collector-b")
    res = Baml.Client.ExtractResume(input: 'Second call', baml_options: { collector: collector_b })


    # The total usage of both logs is now available
    print(collector_a.usage)
    print(collector_b.usage)
end
```
</Tab>
</Tabs>

## API Reference

### Collector Class

The Collector class provides properties to introspect the internal state of BAML function calls.

| Property | Type | Description |
|--------|------|-------------|
| `logs` | `List[FunctionLog]` | A list of all function calls (ordered from oldest to newest) |
| `last` | `FunctionLog \| null` | The most recent function log. |
| `usage` | `Usage` | The cumulative total usage of all requests this collector has tracked. This includes all retries and fallbacks, if those did use any tokens. |


The Collector class provides the following methods:

| Method | Type | Description |
|--------|------|-------------|
| `id(id: string)` | `FunctionLog \| null` | Get the function log by id. |
| `clear()` | `void` | Clears all logs. |

### FunctionLog Class

The `FunctionLog` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The id of the request. |
| `function_name` | `string` | The name of the function. |
| `log_type` | `"call" \| "stream"` | The manner in which the function was called. |
| `timing` | `Timing` | The timing of the request. |
| `usage` | `Usage` | The usage of the request (aggregated from all calls). |
| `calls` | `(LLMCall \| LLMStreamCall)[]` | Every call made to the LLM (including fallbacks and retries). Sorted from oldest to newest. |
| `raw_llm_response` | `string \| null` | The raw text from the best matching LLM. |
| `tags` | `Map[str, any]` | Any user provided metadata. |


### Timing Class

The `Timing` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `start_time_utc_ms` | `int` | The start time of the request in milliseconds since epoch. |
| `duration_ms` | `int \| null` | The duration of the request in milliseconds. |

#### StreamTiming Class (extends Timing)

| Property | Type | Description |
|----------|------|-------------|
| `time_to_first_token_ms` | `int \| null` | The time to first token in milliseconds. |

### Usage Class

The `Usage` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `input_tokens` | `int \| null` | The cumulative number of tokens used in the inputs. |
| `output_tokens` | `int \| null` | The cumulative number of tokens used in the outputs. |

<Info>
Note: Usage may not include all things like "thinking_tokens" or "cached_tokens". For that you may need to look at the raw HTTP response and build your own adapters.
</Info>

### LLMCall Class

The `LLMCall` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `client_name` | `str` | The name of the client used. |
| `provider` | `str` | The provider of the client used. |
| `timing` | `Timing` | The timing of the request. |
| `http_request` | `HttpRequest` | The raw HTTP request sent to the client. |
| `http_response` | `HttpResponse \| null` | The raw HTTP response from the client (null for streaming). |
| `usage` | `Usage \| null` | The usage of the request (if available). |
| `selected` | `bool` | Whether this call was selected and used for parsing. |

### LLMStreamCall Class (extends LLMCall)

The `LLMStreamCall` includes the same properties as `LLMCall` plus the following:

| Property | Type | Description |
|----------|------|-------------|
| `timing` | `StreamTiming` | The timing of the request. |
|`chunks` | `string[]` | The chunks of the response (API coming soon). |


### HttpRequest Class

The `HttpRequest` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `url` | `str` | The URL of the request. |
| `method` | `str` | The HTTP method of the request. |
| `headers` | `object` | The request headers. |
| `body` | `HTTPBody` | The request body. |

### HttpResponse Class

The `HttpResponse` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `status` | `int` | The HTTP status code. |
| `headers` | `object` | The response headers. |
| `body` | `HTTPBody` | The response body. |

### HTTPBody Class

The `HTTPBody` class has the following properties:

| Property | Type | Description |
|----------|------|-------------|
| `text()` | `string` | The body as a string. |
| `json()` | `object` | The body as a JSON object. |


## Related Topics
- [Using with_options](/ref/baml_client/with-options) - Learn how to configure logging globally
- [TypeBuilder](/ref/baml_client/type-builder) - Build custom types for your BAML functions
- [Client Registry](/ref/baml_client/client-registry) - Manage LLM clients and their configurations

## Best Practices
1. Use a single collector instance when tracking related function calls in a chain.
3. Consider using multiple collectors to track different parts of your application.
4. Use function IDs when tracking specific calls in parallel operations.
5. For streaming calls, be aware that `http_response` will be null, but you can still access usage information.



================================================
FILE: fern/01-guide/05-baml-advanced/dynamic-types.mdx
================================================
---
title: Dynamic Types - TypeBuilder
slug: guide/baml-advanced/dynamic-types
---

Sometimes you have **output schemas that change at runtime** -- for example if
you have a list of Categories that you need to classify that come from a
database, or your schema is user-provided.

`TypeBuilder` is used to create or modify dynamic types at runtime to achieve this.


### Dynamic BAML Enums

Imagine we want to make a categorizer prompt, but the list of categories to output come from a database.
1. Add `@@dynamic` to the class or enum definition to mark it as dynamic in BAML.

```rust baml
enum Category {
  VALUE1 // normal static enum values that don't change
  VALUE2
  @@dynamic // this enum can have more values added at runtime
}

// The Category enum can now be modified at runtime!
function DynamicCategorizer(input: string) -> Category {
  client GPT4
  prompt #"
    Given a string, classify it into a category
    {{ input }}

    {{ ctx.output_format }}
  "#
}

```

2. Import the `TypeBuilder` from baml_client in your runtime code and modify `Category`. All dynamic types you
define in BAML will be available as properties of `TypeBuilder`. Think of the
typebuilder as a registry of modified runtime types that the baml function will
read from when building the output schema in the prompt.

<Tabs>

<Tab title="Python">
```python
from baml_client.type_builder import TypeBuilder
from baml_client import b

async def run():
  tb = TypeBuilder()
  tb.Category.add_value('VALUE3')
  tb.Category.add_value('VALUE4')
  # Pass the typebuilder in the baml_options argument -- the last argument of the function.
  res = await b.DynamicCategorizer("some input", { "tb": tb })
  # Now res can be VALUE1, VALUE2, VALUE3, or VALUE4
  print(res)

```
</Tab>

<Tab title="TypeScript">
```typescript
import TypeBuilder from '../baml_client/type_builder'
import {
  b
} from '../baml_client'

async function run() {
  const tb = new TypeBuilder()
  tb.Category.addValue('VALUE3')
  tb.Category.addValue('VALUE4')
  const res = await b.DynamicCategorizer("some input", { tb: tb })
  // Now res can be VALUE1, VALUE2, VALUE3, or VALUE4
  console.log(res)
}
```
</Tab>

<Tab title="Ruby">
```ruby
require_relative '../baml_client'

def run
  tb = Baml::TypeBuilder.new
  tb.Category.add_value('VALUE3')
  tb.Category.add_value('VALUE4')
  res = Baml.Client.dynamic_categorizer(input: "some input", baml_options: {tb: tb})
  # Now res can be VALUE1, VALUE2, VALUE3, or VALUE4
  puts res
end
```
</Tab>

<Tab title="OpenAPI">
Dynamic types are not yet supported when used via OpenAPI.

Please let us know if you want this feature, either via [Discord] or [GitHub][openapi-feedback-github-issue].

[Discord]: https://discord.gg/BTNBeXGuaS
[openapi-feedback-github-issue]: https://github.com/BoundaryML/baml/issues/892
</Tab>

</Tabs>



### Dynamic BAML Classes
Now we'll add some properties to a `User` class at runtime using @@dynamic.


```rust BAML
class User {
  name string
  age int
  @@dynamic
}

function DynamicUserCreator(user_info: string) -> User {
  client GPT4
  prompt #"
    Extract the information from this chunk of text:
    "{{ user_info }}"

    {{ ctx.output_format }}
  "#
}
```

We can then modify the `User` schema at runtime. Since we marked `User` with `@@dynamic`, it'll be available as a property of `TypeBuilder`.

<Tabs>
<Tab title="Python" language="python">
```python
from baml_client.type_builder import TypeBuilder
from baml_client import b

async def run():
  tb = TypeBuilder()
  tb.User.add_property('email', tb.string())
  tb.User.add_property('address', tb.string()).description("The user's address")
  res = await b.DynamicUserCreator("some user info", { "tb": tb })
  # Now res can have email and address fields
  print(res)
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
import TypeBuilder from '../baml_client/type_builder'
import {
  b
} from '../baml_client'

async function run() {
  const tb = new TypeBuilder()
  tb.User.add_property('email', tb.string())
  tb.User.add_property('address', tb.string()).description("The user's address")
  const res = await b.DynamicUserCreator("some user info", { tb: tb })
  // Now res can have email and address fields
  console.log(res)
}
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
require_relative 'baml_client/client'

def run
  tb = Baml::TypeBuilder.new
  tb.User.add_property('email', tb.string)
  tb.User.add_property('address', tb.string).description("The user's address")

  res = Baml::Client.dynamic_user_creator(input: "some user info", baml_options: { tb: tb })
  # Now res can have email and address fields
  puts res
end
```
</Tab>
</Tabs>


### Add existing BAML types to a property (e.g. you want to add a subset of tools)

Imagine you have a `ChatResponse` type in a function that you want to modify with a set of tools.
```baml {3}
class ChatResponse {
  answer string?
  @@dynamic
}

function Chat(messages: Message[]) -> ChatResponse {
  ...
}
```

You want to add a `tool_calls` property to the `ChatResponse` type that can be a list of `GetWeather` or `GetNews` types, that are completely defined in BAML.
```baml {11,12}
class GetWeather {
  location string
}

class GetNews {
  topic string
}

class ChatResponse {
  answer string?
  // We want to add this property at runtime!
  tools (GetWeather | GetNews)[]?
  @@dynamic
}

function Chat(messages: Message[]) -> ChatResponse {
  ...
}
```

You can modify the set of tools that can be used in the `ChatResponse` type at runtime like this:


<Tabs>

<Tab title="Python">
```python
tb = TypeBuilder()
tb.ChatResponse.add_property(
    "tools",
    tb.union([
        # we could comment one of these if we wanted!
        tb.GetWeather.type(),
        tb.GetNews.type()
    ]).list()
).description("The tool calls in the response")
```
</Tab>

<Tab title="TypeScript">
```typescript
const tb = new TypeBuilder()
tb.ChatResponse.addProperty("tools",
    tb.union([
      // we could comment one of these if we wanted!
      tb.GetWeather.type(),
      tb.GetNews.type()
    ]).list()).description("The tool calls in the response")
```
</Tab>

<Tab title="Ruby">
```ruby
tb = Baml::TypeBuilder.new
tb.ChatResponse.add_property("tools", tb.union([tb.GetWeather.type(), tb.GetNews.type()]).list).description("The tool calls in the response")
```
</Tab>

</Tabs>

### Creating new dynamic classes or enums not in BAML
The previous examples showed how to modify existing types. Here we create a new `Hobbies` enum, and a new class called `Address` without having them defined in BAML.

Note that you must attach the new types to the existing Return Type of your BAML function(in this case it's `User`).

<Tabs>
  <Tab title="Python" language="python">
    ```python Python
    from baml_client.type_builder import TypeBuilder
    from baml_client.async_client import b

    async def run():
      tb = TypeBuilder()
      hobbies_enum = tb.add_enum("Hobbies")
      hobbies_enum.add_value("Soccer")
      hobbies_enum.add_value("Reading")

      address_class = tb.add_class("Address")
      address_class.add_property("street", tb.string()).description("The user's street address")

      tb.User.add_property("hobby", hobbies_enum.type().optional())
      tb.User.add_property("address", address_class.type().optional())
      res = await b.DynamicUserCreator("some user info", {"tb": tb})
      # Now res might have the hobby property, which can be Soccer or Reading
      print(res)

    ```
  </Tab>

  <Tab title="TypeScript" language="typescript">
    ```typescript TypeScript
    import TypeBuilder from '../baml_client/type_builder'
    import { b } from '../baml_client'

    async function run() {
      const tb = new TypeBuilder()
      const hobbiesEnum = tb.addEnum('Hobbies')
      hobbiesEnum.addValue('Soccer')
      hobbiesEnum.addValue('Reading')

      const addressClass = tb.addClass('Address')
      addressClass.addProperty('street', tb.string()).description("The user's street address")


      tb.User.addProperty('hobby', hobbiesEnum.type().optional())
      tb.User.addProperty('address', addressClass.type())
      const res = await b.DynamicUserCreator("some user info", { tb: tb })
      # Now res might have the hobby property, which can be Soccer or Reading
      console.log(res)
    }
    ```
  </Tab>

  <Tab title="Ruby" language="ruby">
    ```ruby Ruby
    require_relative 'baml_client/client'

    def run
      tb = Baml::TypeBuilder.new
      hobbies_enum = tb.add_enum('Hobbies')
      hobbies_enum.add_value('Soccer')
      hobbies_enum.add_value('Reading')

      address_class = tb.add_class('Address')
      address_class.add_property('street', tb.string)

      tb.User.add_property('hobby', hobbies_enum.type.optional)
      tb.User.add_property('address', address_class.type.optional)

      res = Baml::Client.dynamic_user_creator(input: "some user info", baml_options: { tb: tb })
      # Now res might have the hobby property, which can be Soccer or Reading
      puts res
    end
    ```
  </Tab>
</Tabs>


TypeBuilder provides methods for building different kinds of types:

| Method | Returns | Description | Example |
|--------|---------|-------------|---------|
| `string()` | `FieldType` | Creates a string type | `tb.string()` |
| `int()` | `FieldType` | Creates an integer type | `tb.int()` |
| `float()` | `FieldType` | Creates a float type | `tb.float()` |
| `bool()` | `FieldType` | Creates a boolean type | `tb.bool()` |
| `literal_string(value: string)` | `FieldType` | Creates a literal string type | `tb.literal_string("hello")` |
| `literal_int(value: int)` | `FieldType` | Creates a literal integer type | `tb.literal_int(123)` |
| `literal_bool(value: boolean)` | `FieldType` | Creates a literal boolean type | `tb.literal_bool(true)` |
| `list(type: FieldType)` | `FieldType` | Makes a type into a list | `tb.list(tb.string())` |
| `union(types: FieldType[])` | `FieldType` | Creates a union of types | `tb.union([tb.string(), tb.int()])` |
| `map(key: FieldType, value: FieldType)` | `FieldType` | Creates a map type | `tb.map(tb.string(), tb.int())` |
| `add_class(name: string)` | `ClassBuilder` | Creates a new class | `tb.add_class("User")` |
| `add_enum(name: string)` | `EnumBuilder` | Creates a new enum | `tb.add_enum("Category")` |
| `MyClass` | `FieldType` | Reference an existing BAML class | `tb.MyClass.type()` |


### Adding descriptions to dynamic types

<Tabs>
<Tab title="Python" language="python">
```python
tb = TypeBuilder()
tb.User.add_property("email", tb.string()).description("The user's email")
```
</Tab>

<Tab title="TypeScript" language="typescript">
```typescript
const tb = new TypeBuilder()
tb.User.addProperty("email", tb.string()).description("The user's email")
```
</Tab>

<Tab title="Ruby" language="ruby">
```ruby
tb = Baml::TypeBuilder.new
tb.User.add_property("email", tb.string).description("The user's email")
```
</Tab>
</Tabs>


### Creating dynamic classes and enums at runtime with BAML syntax
Ok, what if you just want to write some actual baml code to modify the types at runtime?

The `TypeBuilder` has a higher level API `add_baml` to do this:

<Tabs>

<Tab title="Python">
```python Python
tb = TypeBuilder()
tb.add_baml("""
  // Creates a new class Address that does not exist in the BAML source.
  class Address {
    street string
    city string
    state string
  }

  // Modifies the existing @@dynamic User class to add the new address property.
  dynamic class User {
    address Address
  }

  // Modifies the existing @@dynamic Category enum to add a new variant.
  dynamic enum Category {
    VALUE5
  }
""")
```
</Tab>

<Tab title="TypeScript">
```typescript TypeScript
const tb = new TypeBuilder()
tb.addBaml(`
  // Creates a new class Address that does not exist in the BAML source.
  class Address {
    street string
    city string
    state string
  }

  // Modifies the existing @@dynamic User class to add the new address property.
  dynamic class User {
    address Address
  }

  // Modifies the existing @@dynamic Category enum to add a new variant.
  dynamic enum Category {
    VALUE5
  }
`)
```
</Tab>

<Tab title="Ruby">
```ruby Ruby
tb = Baml::TypeBuilder.new
tb.add_baml("
  // Creates a new class Address that does not exist in the BAML source.
  class Address {
    street string
    city string
    state string
  }

  // Modifies the existing @@dynamic User class to add the new address property.
  dynamic class User {
    address Address
  }

  // Modifies the existing @@dynamic Category enum to add a new variant.
  dynamic enum Category {
    VALUE5
  }
")
```
</Tab>

</Tabs>

### Building dynamic types from JSON schema

JSON Schema is a declarative language for validating JSON data structures, often derived from language-native type definitions such as Python classes, TypeScript interfaces, or Java classes.

BAML supports converting JSON schemas into dynamic BAML types, allowing you to automatically use your existing data models with BAML's LLM functions. This feature enables seamless integration between your application's type system and BAML's structured output capabilities.

We have a working implementation of this feature, but are waiting for concrete use cases to merge it into the main codebase. For a detailed explanation of this functionality, see our [article on dynamic JSON schemas](https://www.boundaryml.com/blog/dynamic-json-schemas). You can also explore the [source code and examples](https://github.com/BoundaryML/baml-examples/tree/main/json-schema-to-baml) to understand how to implement this in your projects.

Please chime in on [the GitHub issue](https://github.com/BoundaryML/baml/issues/771) if this is something you'd like to use.

### Testing dynamic types in BAML

When testing dynamic types there are two different cases:
1. Injecting properties into dynamic types returned by the tested function.
2. Injecting values into dynamic types received as arguments by the tested function.

The first case requires using the `type_builder` and `dynamic` blocks in the
test, whereas the second case only requires specifying the values in the `args`
block.

#### Testing return types

##### Dynamic classes

Suppose we have a dynamic class `Resume` and we want to add a property that
stores the user's work experience when we testing a specific function. We can
do that by specifying the types and properties that we need in the
`type_builder` block.


```baml {4, 14-27}
class Resume {
  name string
  skills string[]
  @@dynamic // Marked as @@dynamic.
}

// Function that returns a dynamic class.
function ExtractResume(from_text: string) -> Resume {
  // Prompt
}

test ReturnDynamicClassTest {
  functions [ExtractResume]
  type_builder {
    // Defines a new type available only within this test block.
    class Experience {
      title string
      company string
      start_date string
      end_date string
    }

    // Injects new properties into the `@@dynamic` part of the Resume class.
    dynamic class Resume {
      experience Experience[]
    }
  }
  args {
    from_text #"
      John Doe

      Experience
      - Software Engineer, Boundary, Sep 2022 - Sep 2023

      Skills
      - Python
      - Java
    "#
  }
}
```

The rendered prompt for `ExtractResume` will now include the `experience` field
defined in the `dynamic` block and the LLM will correctly extract the experience
in the input text.

##### Dynamic enums

Dynamic enums can be included in the `type_builder` block just like classes. The
only difference is that we inject new variants in the `dynamic` block instead of
properties.

```baml {7, 17-22}
enum Category {
  Refund
  CancelOrder
  TechnicalSupport
  AccountIssue
  Question
  @@dynamic // Marked as @@dynamic.
}

// Function that returns a dynamic enum.
function ClassifyMessage(message: string) -> Category {
  // Prompt
}

test ReturnDynamicEnumTest {
  functions [ClassifyMessage]
  type_builder {
    // Injects new variants into the `@@dynamic` part of the Category enum.
    dynamic enum Category {
      Feedback
    }
  }
  args {
	  message "I think the product is great!"
  }
}
```

The `Feedback` variant will be rendered in the prompt for `ClassifyMessage`
during the test execution.

#### Testing parameter types

When a dynamic type is used as an input parameter of a function, we can simply
pass any value in the `args` block of the test and the value will be rendered in
the prompt.

##### Dynamic classes

```baml {4, 17-24}
class Resume {
  name string
  skills string[]
  @@dynamic // Marked as @@dynamic.
}

function WriteResume(resume: Resume) -> string {
  // Prompt
}

test DynamicClassAsInputTest {
  functions [WriteResume]
  args {
    resume {
      name "John Doe"
      skills ["C++", "Java"]
      experience [
        {
          title "Software Engineer"
          company "Boundary"
          start_date "2023-09-01"
          end_date "2024-09-01"
        }
      ]
    }
  }
}
```

##### Dynamic enums

Enums work the same way, any variant defined in the `args` block will be
rendered normally.

```baml {7, 17}
enum Category {
  Refund
  CancelOrder
  TechnicalSupport
  AccountIssue
  Question
  @@dynamic // Marked as @@dynamic.
}

function WriteCustomerMessage(category: Category) -> string {
  // Prompt
}

test DynamicEnumAsInputTest {
  functions [WriteCustomerMessage]
  args {
    category Feedback // The enum is dynamic so it accepts a new variant.
  }
}
```

For more information about dynamic types, see [Type Builder](/ref/baml_client/type-builder).



================================================
FILE: fern/01-guide/05-baml-advanced/modular-api.mdx
================================================
<Info>
  Requires BAML version >=0.79.0
</Info>

First and foremost, BAML provides a high level API where functions are a first
class citizen and their execution is fully transparent to the developer. This
means that you can simply call a BAML function and everything from prompt
rendering, HTTP request building, LLM API network call and response parsing is
handled for you. Basic example:

```baml BAML
class Resume {
  name string
  experience string[]
  education string[]
}

function ExtractResume(resume: string) -> Resume {
  client "openai/gpt-4o"
  prompt #"
    Extract the following information from the resume:

    ---
    {{ resume }}
    ---

    {{ ctx.output_format }}
  "#
}
```

Now we can use this function in our server code after running `baml-cli generate`:

<CodeBlocks>
```python Python
from baml_client import b

async def run():
  # HTTP request + LLM response parsing.
  resume = await b.ExtractResume("John Doe | Software Engineer | BSc in CS")
  print(resume)
```

```typescript TypeScript
import { b } from 'baml_client'

async function run() {
  // HTTP request + LLM response parsing.
  const resume = await b.ExtractResume("John Doe | Software Engineer | BSc in CS")
  console.log(resume)
}
```

```ruby Ruby
require_relative 'baml_client'

b = Baml.Client

def run
  # HTTP request + LLM response parsing.
  resume = b.ExtractResume("John Doe | Software Engineer | BSc in CS")
  puts resume
end
```
</CodeBlocks>

However, sometimes we may want to execute a function without so much abstraction
or have access to the HTTP request before sending it. For this, BAML provides a
lower level API that exposes the HTTP request and LLM response parser to the
caller. Here's an example that uses the `requests` library in Python, the
`fetch` API in Node.js and the `Net::HTTP` library in Ruby to manually send an
HTTP request to OpenAI's API and parse the LLM response.

<CodeBlocks>
```python Python
import requests
# requests is not async so for simplicity we'll use the sync client.
from baml_client.sync_client import b

def run():
  # Get the HTTP request object.
  req = b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  # Send the HTTP request.
  res = requests.post(url=req.url, headers=req.headers, json=req.body.json())

  # Parse the LLM response.
  parsed = b.parse.ExtractResume(response.json()["choices"][0]["message"]["content"])

  # Fully parsed Resume type.
  print(parsed)
```

```typescript TypeScript
import { b } from 'baml_client'

async function run() {
  // Get the HTTP request object.
  const req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  // Send the HTTP request.
  const res = await fetch(req.url, {
    method: req.method,
    headers: req.headers,
    body: JSON.stringify(req.body.json())
  })

  // Parse the HTTP body.
  const body = await res.json() as any

  // Parse the LLM response.
  const parsed = b.parse.ExtractResume(body.choices[0].message.content)

  // Fully parsed Resume type.
  console.log(parsed)
}
```

```ruby Ruby
require 'net/http'
require 'uri'
require 'json'

require_relative 'baml_client'

b = Baml.Client

def run
  # Get the HTTP request object.
  baml_req = b.request.ExtractResume(resume: "John Doe | Software Engineer | BSc in CS")

  # Construct the Ruby HTTP client.
  uri = URI.parse(baml_req.url)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = uri.scheme == 'https'

  # Construct the Ruby HTTP request.
  req = Net::HTTP::Post.new(uri.path)
  req.initialize_http_header(baml_req.headers)
  req.body = baml_req.body.json.to_json

  # Send the HTTP request.
  response = http.request(req)

  # Parse the LLM response.
  parsed = b.parse.ExtractResume(
    llm_response: JSON.parse(response.body)["choices"][0]["message"]["content"]
  )

  # Fully parsed Resume type.
  puts parsed
end
```
</CodeBlocks>

Note that `request.body.json()` returns an object (dict in Python, hash in Ruby)
which we are then serializing to JSON, but `request.body` also exposes the raw
binary buffer so we can skip the serialization:

<CodeBlocks>
```python Python
res = requests.post(url=req.url, headers=req.headers, data=req.body.raw())
```

```typescript TypeScript
const res = await fetch(req.url, {
  method: req.method,
  headers: req.headers,
  body: req.body.raw()
})
```

```ruby Ruby
req.body = baml_req.body.raw.pack("C*")
```
</CodeBlocks>

## Using Provider SDKs

We can use the same modular API with the official SDKs. Here are some examples:

### [OpenAI Chat Completions API](https://platform.openai.com/docs/quickstart?api-mode=chat)

<CodeBlocks>
```python Python
from openai import AsyncOpenAI
from baml_client import b

async def run():
  # Initialize the OpenAI client.
  client = AsyncOpenAI()

  # Get the HTTP request object.
  req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  # Use the openai library to send the request.
  res = await client.chat.completions.create(**req.body.json())

  # Parse the LLM response.
  parsed = b.parse.ExtractResume(res.choices[0].message.content)

  # Fully parsed Resume type.
  print(parsed)
```

```typescript TypeScript
import OpenAI from 'openai'
import { b } from 'baml_client'

async function run() {
  // Initialize the OpenAI client.
  const client = new OpenAI()

  // Get the HTTP request object.
  const req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  // Use the openai library to send the request.
  const res = await client.chat.completions.create(req.body.json())

  // Parse the LLM response.
  const parsed = b.parse.ExtractResume(res.choices[0].message.content!)

  // Fully parsed Resume type.
  console.log(parsed)
}
```
</CodeBlocks>

### [OpenAI Responses API](https://platform.openai.com/docs/api-reference/responses)

The OpenAI Responses API uses the `/v1/responses` endpoint and is designed for enhanced reasoning capabilities. BAML supports this through the `openai-responses` provider:

<CodeBlocks>
```python Python
from openai import AsyncOpenAI
from openai.types.responses import Response
from baml_client import b
import typing

async def run():
  # Initialize the OpenAI client.
  client = AsyncOpenAI()

  # Get the HTTP request object from a function using openai-responses provider.
  req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  # Use the openai responses API endpoint.
  res = typing.cast(Response, await client.responses.create(**req.body.json()))

  # Parse the LLM response from the responses API.
  parsed = b.parse.ExtractResume(res.output_text)

  # Fully parsed Resume type.
  print(parsed)
```

```typescript TypeScript
import OpenAI from 'openai'
import { b } from 'baml_client'

async function run() {
  // Initialize the OpenAI client.
    const client = new OpenAI();

    // Use TestOpenAIResponses from the providers directory
    const req = await b.request.TestOpenAIResponses("mountains");

    // The openai-responses provider should use the /v1/responses endpoint
    const res = await client.responses.create(req.body.json()) as any;

    // Parse the response from the responses API (uses output_text instead of choices)
    const parsed = b.parse.TestOpenAIResponses(res.output_text);

    expect(typeof parsed).toBe("string");
    expect(parsed.length).toBeGreaterThan(0);
}
```
</CodeBlocks>

### [Anthropic](https://docs.anthropic.com/en/api/client-sdks)

Remember that the client is defined in the BAML function (or you can use the
[client registry](./client-registry.mdx)):

```baml BAML {2}
function ExtractResume(resume: string) -> Resume {
  client "anthropic/claude-3-haiku"
  // Prompt here...
}
```

<CodeBlocks>
```python Python
import anthropic
from baml_client import b

async def run():
  # Initialize the Anthropic client.
  client = anthropic.AsyncAnthropic()

  # Get the HTTP request object.
  req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  # Use the anthropic library to send the request.
  res = await client.messages.create(**req.body.json())

  # Parse the LLM response.
  parsed = b.parse.ExtractResume(res.content[0].text)

  # Fully parsed Resume type.
  print(parsed)
```

```typescript TypeScript
import Anthropic from '@anthropic-ai/sdk'
import { b } from 'baml_client'

async function run() {
  // Initialize the Anthropic client.
  const client = new Anthropic()

  // Get the HTTP request object.
  const req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  // Use the anthropic library to send the request.
  const res = await client.messages.create(req.body.json())

  // Narrow type so that TS doesn't complain below.
  // https://github.com/anthropics/anthropic-sdk-typescript/issues/432
  if (res.content[0].type != "text") {
    return console.error("Unexpected type for content block: ", res.content[0])
  }

  // Parse the LLM response.
  const parsed = b.parse.ExtractResume(res.content[0].text)

  // Fully parsed Resume type.
  console.log(parsed)
}
```
</CodeBlocks>

### [Google Gemini](https://ai.google.dev/gemini-api/docs/quickstart)

Remember that the client is defined in the BAML function (or you can use the
[client registry](./client-registry.mdx)):

```baml BAML {2}
function ExtractResume(resume: string) -> Resume {
  client "google-ai/gemini-1.5-pro-001"
  // Prompt here...
}
```

<CodeBlocks>
```python Python
from google import genai
from baml_client import b

async def run():
  # Initialize the Gemini client.
  client = genai.Client()

  # Get the HTTP request object.
  req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  # Get the request body.
  body = req.body.json()

  # Use the gemini library to send the request.
  res = await client.aio.models.generate_content(
    model="gemini-1.5-pro-001",
    contents=body["contents"],
    config={
      "safety_settings": [body["safetySettings"]] # REST API uses camelCase
    }
  )

  # Parse the LLM response.
  parsed = b.parse.ExtractResume(res.text)

  # Fully parsed Resume type.
  print(parsed)
```

```typescript TypeScript
import { GoogleGenerativeAI } from '@google/generative-ai';
import { b } from 'baml_client'

async function run() {
  // Initialize the Gemini client.
  const client = new GoogleGenerativeAI(process.env.GOOGLE_API_KEY!)
  const model = client.getGenerativeModel({ model: "gemini-1.5-pro-001" })

  // Get the HTTP request object.
  const req = await b.request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  // Use the gemini library to send the request.
  const res = await model.generateContent(req.body.json())

  // Parse the LLM response.
  const parsed = b.parse.ExtractResume(res.response.text())

  // Fully parsed Resume type.
  console.log(parsed)
}
```
</CodeBlocks>

## Type Checking

### Python

The return type of `request.body.json()` is `Any` so you won't get full type
checking in Python when using the SDKs. Here are some workarounds:

**1. Using `typing.cast`**

<Tabs>
  <Tab title="OpenAI" language="openai">
    ```python OpenAI
    import typing
    from openai.types.chat import ChatCompletion

    res = typing.cast(ChatCompletion, await client.chat.completions.create(**req.body.json()))
    ```
  </Tab>

  <Tab title="Anthropic" language="anthropic">
    ```python Anthropic
    import typing
    from anthropic.types import Message

    res = typing.cast(Message, await client.messages.create(**req.body.json()))
    ```
  </Tab>
</Tabs>

**2. Manually setting the arguments**

```python OpenAI
body = req.body.json()
res = await client.chat.completions.create(model=body["model"], messages=body["messages"])
```

This will preserve the type hints for the OpenAI SDK but it doesn't work for
Anthropic. On the other hand, Gemini SDK / REST API is built in such a way that
it basically forces us to use this pattern as seen in the
[example above](#google-gemini).

### TypeScript

TypeScript doesn't have optional parameters like Python, it uses objects instead
so you can just cast to the expected type:

<Tabs>
  <Tab title="OpenAI" language="openai">
    ```typescript OpenAI
    import { ChatCompletionCreateParamsNonStreaming } from 'openai/resources';

    const res = await client.chat.completions.create(req.body.json() as ChatCompletionCreateParamsNonStreaming)
    ```
  </Tab>

  <Tab title="Anthropic" language="anthropic">
    ```typescript Anthropic
    import { MessageCreateParamsNonStreaming } from '@anthropic-ai/sdk/resources';

    const res = await client.messages.create(req.body.json() as MessageCreateParamsNonStreaming)
    ```
  </Tab>

  <Tab title="Gemini" language="Gemini">
    ```typescript Gemini
    import { GenerateContentRequest } from '@google/generative-ai';

    const res = await model.generateContent(req.body.json() as GenerateContentRequest)
    ```
  </Tab>
</Tabs>

## Streaming

Stream requests and parsing is also supported. Here's an example using OpenAI
SDK:

<CodeBlocks>
```python Python
import typing
from openai import AsyncOpenAI, AsyncStream
from openai.types.chat import ChatCompletionChunk
from baml_client import b

async def run():
  client = AsyncOpenAI()

  req = await b.stream_request.ExtractResume("John Doe | Software Engineer | BSc in CS")

  stream = typing.cast(
    AsyncStream[ChatCompletionChunk],
    await client.chat.completions.create(**req.body.json())
  )

  llm_response: list[str] = []

  async for chunk in stream:
    if len(chunk.choices) > 0 and chunk.choices[0].delta.content is not None:
      llm_response.append(chunk.choices[0].delta.content)
      # You can parse the partial responses as they come in.
      print(b.parse_stream.ExtractResume("".join(llm_response)))
```

```typescript TypeScript
import OpenAI from 'openai'
import { ChatCompletionCreateParamsStreaming } from 'openai/resources';
import { b } from 'baml_client'

async function run() {
  const client = new OpenAI()

  const req = await b.streamRequest.ExtractResume("John Doe | Software Engineer | BSc in CS")

  const stream = await client.chat.completions.create(
    req.body.json() as ChatCompletionCreateParamsStreaming
  )

  let llmResponse: string[] = []

  for await (const chunk of stream) {
    if (chunk.choices.length > 0 && chunk.choices[0].delta.content) {
      llmResponse.push(chunk.choices[0].delta.content)
      // You can parse the partial responses as they come in.
      console.log(b.parseStream.ExtractResume(llmResponse.join('')))
    }
  }
}
```
</CodeBlocks>

## OpenAI Batch API Example

Currently, BAML doesn't support OpenAI's [Batch API](https://platform.openai.com/docs/guides/batch)
out of the box, but you can use the modular API to build the prompts and parse
the responses of batch jobs. Here's an example:

<CodeBlocks>
```python Python
import asyncio
import json
from openai import AsyncOpenAI
from baml_py import HTTPRequest as BamlHttpRequest
from baml_client import b
from baml_client import types

async def run():
  client = AsyncOpenAI()

  # Build the batch requests with BAML.
  john_req, jane_req = await asyncio.gather(
    b.request.ExtractResume("John Doe | Software Engineer | BSc in CS"),
    b.request.ExtractResume("Jane Smith | Data Scientist | PhD in Statistics"),
  )

  # Build the JSONL content.
  jsonl = to_openai_jsonl(john_req) + to_openai_jsonl(jane_req)

  # Create the batch input file.
  batch_input_file = await client.files.create(
    file=jsonl.encode("utf-8"),
    purpose="batch",
  )

  # Create the batch.
  batch = await client.batches.create(
    input_file_id=batch_input_file.id,
    endpoint="/v1/chat/completions",
    completion_window="24h",
    metadata={
      "description": "BAML Modular API Python Batch Example"
    },
  )

  # Wait for the batch to complete (exponential backoff).
  backoff = 2
  attempts = 0
  max_attempts = 5

  while True:
    batch = await client.batches.retrieve(batch.id)
    attempts += 1

    if batch.status == "completed":
        break

    if attempts >= max_attempts:
      try:
        await client.batches.cancel(batch.id)
      finally:
        raise Exception("Batch failed to complete in time")

    await asyncio.sleep(backoff)
    back_off *= 2

  # Retrieve the batch output file.
  output = await client.files.content(batch.output_file_id)

  # You can match the batch results using the BAML request IDs.
  expected = {
    john_req.id: types.Resume(
      name="John Doe",
      experience=["Software Engineer"],
      education=["BSc in CS"]
    ),
    jane_req.id: types.Resume(
      name="Jane Smith",
      experience=["Data Scientist"],
      education=["PhD in Statistics"]
    ),
  }

  resumes = {}

  for line in output.text.splitlines():
    result = json.loads(line)
    llm_response = result["response"]["body"]["choices"][0]["message"]["content"]

    parsed = b.parse.ExtractResume(llm_response)
    resumes[result["custom_id"]] = parsed

  print(resumes)

  # Should be equal.
  assert resumes == expected


def to_openai_jsonl(req: BamlHttpRequest) -> str:
  """ Helper that converts a BAML HTTP request to OpenAI JSONL format. """
  line = json.dumps({
    "custom_id": req.id, # Important for matching the batch results.
    "method": "POST",
    "url": "/v1/chat/completions",
    "body": req.body.json(),
  })

  return f"{line}\n"
```

```typescript TypeScript
import OpenAI from 'openai'
import { HTTPRequest as BamlHttpRequest } from '@boundaryml/baml'
import { Resume } from "baml_client/types"
import { b } from 'baml_client'

async function run() {
  const client = new OpenAI()

  // Build the batch requests with BAML.
  const [johnReq, janeReq] = await Promise.all([
    b.request.ExtractResume("John Doe | Software Engineer | BSc in CS"),
    b.request.ExtractResume("Jane Smith | Data Scientist | PhD in Statistics"),
  ])

  const jsonl = toOpenaiJsonl(johnReq) + toOpenaiJsonl(janeReq)

  // Create batch input file.
  const batchInputFile = await client.files.create({
    file: new File([jsonl], 'batch.jsonl'),
    purpose: 'batch',
  })

  // Create batch.
  let batch = await client.batches.create({
    input_file_id: batchInputFile.id,
    endpoint: '/v1/chat/completions',
    completion_window: '24h',
    metadata: {
      description: 'BAML Modular API TypeScript Batch Example'
    },
  })

  // Wait for the batch to complete (exponential backoff).
  let backoff = 1000 // ms
  let attempts = 0
  const maxAttempts = 30

  while (true) {
    batch = await client.batches.retrieve(batch.id)
    attempts += 1

    if (batch.status === 'completed') {
      break
    }

    if (attempts >= maxAttempts) {
      try {
        await client.batches.cancel(batch.id)
      } finally {
        throw 'Batch failed to complete in time'
      }
    }

    await new Promise(resolve => setTimeout(resolve, backoff))
    backoff *= 2
  }

  // Retrieve the batch output file.
  const output = await client.files.content(batch.output_file_id!)

  const resumes: Record<string, Resume> = {}
  const outputJsonl = await output.text()

  // Process the batch results (skip empty lines).
  for (const line of outputJsonl.split("\n").filter(line => line.trim().length > 0)) {
    const result = JSON.parse(line.trim())
    const llmResponse = result.response.body.choices[0].message.content

    const parsed = b.parse.ExtractResume(llmResponse)
    resumes[result.custom_id] = parsed
  }

  // The resumes object should contain this.
  // With Jest we can compare using `expect(resumes).toEqual(expected)`.
  const expected: Record<string, Resume> = {
    [johnReq.id]: JOHN_DOE_PARSED_RESUME,
    [janeReq.id]: JANE_SMITH_PARSED_RESUME,
  }

  console.log(resumes)
}

// Helper function to convert BAML HTTP request to OpenAI batch JSONL format
function toOpenaiJsonl(req: BamlHttpRequest): string {
  const line = JSON.stringify({
    custom_id: req.id,
    method: 'POST',
    url: '/v1/chat/completions',
    body: req.body.json(),
  })

  return `${line}\n`
}
```
</CodeBlocks>



================================================
FILE: fern/01-guide/05-baml-advanced/prompt-caching.mdx
================================================
---
title: Prompt Caching / Message Role Metadata
---

Recall that an LLM request usually looks like this, where it sometimes has metadata in each `message`. In this case, Anthropic has a `cache_control` key.

```curl {3,11} Anthropic Request
curl https://api.anthropic.com/v1/messages \
  -H "content-type: application/json" \
  -H "anthropic-beta: prompt-caching-2024-07-31" \
  -d '{
    "model": "claude-3-5-sonnet-20241022",
    "max_tokens": 1024,
    "messages": [
       {
        "type": "text",
        "text": "<the entire contents of Pride and Prejudice>",
        "cache_control": {"type": "ephemeral"}
      },
      {
        "role": "user",
        "content": "Analyze the major themes in Pride and Prejudice."
      }
    ]
  }'
```


This is nearly the same as this BAML code, minus the `cache_control` metadata:


Let's add the `cache-control` metadata to each of our messages in BAML now.
There's just 2 steps:

<Steps>
### Allow role metadata and header in the client definition
```baml {5-8} main.baml
client<llm> AnthropicClient {
  provider "anthropic"
  options {
    model "claude-3-5-sonnet-20241022"
    allowed_role_metadata ["cache_control"]
    headers {
      "anthropic-beta" "prompt-caching-2024-07-31"
    }
  }
}
```

### Add the metadata to the messages
```baml {2,6} main.baml
function AnalyzeBook(book: string) -> string {
  client<llm> AnthropicClient
  prompt #"
    {{ _.role("user") }}
    {{ book }}
    {{ _.role("user", cache_control={"type": "ephemeral"}) }}
    Analyze the major themes in Pride and Prejudice.
  "#
}
```

</Steps>

We have the "allowed_role_metadata" so that if you swap to other LLM clients, we don't accidentally forward the wrong metadata to the new provider API.


<Tip>
Remember to switch from "Prompt Review" to "Raw cURL" in the VSCode Playground to see the exact request being sent!
</Tip>



================================================
FILE: fern/01-guide/05-baml-advanced/reusing-prompt-snippets.mdx
================================================
---
title: Reusing Prompt Snippets
---


Writing prompts requires a lot of string manipulation. BAML has a `template_string` to let you combine different string templates together. Under-the-hood they use [jinja](/ref/prompt-syntax/what-is-jinja) to evaluate the string and its inputs.

**Template Strings are functions that always return a string.** They can be used to define reusable parts of a prompt, or to make the prompt more readable by breaking it into smaller parts.

Example
```baml BAML
// Inject a list of "system" or "user" messages into the prompt.
// Note the syntax -- there are no curlies. Just a string block.
template_string PrintMessages(messages: Message[]) #"
  {% for m in messages %}
    {{ _.role(m.role) }}
    {{ m.message }}
  {% endfor %}
"#

function ClassifyConversation(messages: Message[]) -> Category[] {
  client GPT4Turbo
  prompt #"
    Classify this conversation:
    {{ PrintMessages(messages) }}

    Use the following categories:
    {{ ctx.output_format}}
  "#
}
```

In this example we can call the template_string `PrintMessages` to subdivide the prompt into "user" or "system" messages using `_.role()` (see [message roles](/ref/prompt-syntax/role)). This allows us to reuse the logic for printing messages in multiple prompts.

You can nest as many template strings inside each other and call them however many times you want.

<Warning>
  The BAML linter may give you a warning when you use template strings due to a static analysis limitation. You can ignore this warning. If it renders in the playground, you're good!
</Warning>
Use the playground preview to ensure your template string is being evaluated correctly!




================================================
FILE: fern/01-guide/06-prompt-engineering/action-items.mdx
================================================
# Extracting Action Items from Meeting Transcripts

In this tutorial, you'll learn how to build a BAML function that automatically extracts structured action items from meeting transcripts. By the end, you'll have a working system that can identify tasks, assignees, priorities, subtasks, and dependencies.

## Prerequisites

- Basic understanding of BAML syntax
- An OpenAI API key configured in your environment

## Step 1: Define the Data Models

First, let's define the data structures for our tasks. Create a new BAML file called `action_items.baml` and add these class definitions:

```baml action_items.baml
class Subtask {
  id int
  name string
}

enum Priority {
  HIGH
  MEDIUM
  LOW
}

class Ticket {
  id int
  name string
  description string
  priority Priority
  assignees string[]
  subtasks Subtask[]
  dependencies int[]
}
```

These models define:
- A `Subtask` class for breaking down larger tasks
- A `Priority` enum for task urgency levels
- A `Ticket` class that represents a complete task with all its metadata

## Step 2: Create the Task Extraction Function

Next, we'll create a function that uses GPT-4 to analyze meeting transcripts and extract tasks:

```baml action_items.baml
function ExtractTasks(transcript: string) -> Ticket[] {
  client "openai/gpt-4"
  prompt #"
    You are an expert at analyzing meeting transcripts and extracting structured action items and tasks.
    Extract all action items, tasks and subtasks from the meeting transcript below.
    For each task:
    - Generate a unique ID
    - Include who is assigned to it
    - Set appropriate priority level
    - Identify subtasks if any
    - Note any dependencies on other tasks

    {{ ctx.output_format }}

    {{ _.role("user") }} {{ transcript }}
  "#
}
```

This function:
- Takes a meeting transcript as input
- Returns an array of `Ticket` objects
- Uses GPT-4 to analyze the transcript
- Includes clear instructions in the prompt for task extraction

## Step 3: Test the Implementation

Let's add test cases to verify our implementation works correctly. Add these test cases to your BAML file:

```baml action_items.baml
test SimpleTranscript {
  functions [ExtractTasks]
  args {
    transcript #"
        Alice: We need to update the website by next week. This is high priority.
        Bob: I can handle that. I'll need Carol's help with the design though.
        Carol: Sure, I can help with the design part.
    "#
  }
}

test ComplexTranscript {
  functions [ExtractTasks]
  args {
    transcript #"
        Alice: Hey team, we have several critical tasks we need to tackle for the upcoming release. First, we need to work on improving the authentication system. It's a top priority.
        Bob: Got it, Alice. I can take the lead on the authentication improvements. Are there any specific areas you want me to focus on?
        Alice: Good question, Bob. We need both a front-end revamp and back-end optimization. So basically, two sub-tasks.
        Carol: I can help with the front-end part of the authentication system.
        Bob: Great, Carol. I'll handle the back-end optimization then.
        Alice: Perfect. Now, after the authentication system is improved, we have to integrate it with our new billing system. That's a medium priority task.
        Carol: Is the new billing system already in place?
        Alice: No, it's actually another task. So it's a dependency for the integration task. Bob, can you also handle the billing system?
        Bob: Sure, but I'll need to complete the back-end optimization of the authentication system first, so it's dependent on that.
        Alice: Understood. Lastly, we also need to update our user documentation to reflect all these changes. It's a low-priority task but still important.
        Carol: I can take that on once the front-end changes for the authentication system are done. So, it would be dependent on that.
        Alice: Sounds like a plan. Let's get these tasks modeled out and get started.
    "#
  }
}
```

These tests provide:
- A simple case with a single task and subtask
- A complex case with multiple tasks, priorities, dependencies, and assignees

This is what you see in the BAML playground:
<img src="../../assets/guide/action-items-simple.png"/>

This is the output from the complex test case:

``` output.txt
[
  {
    "id": 1,
    "name": "Improve Authentication System",
    "description": "Overhaul the authentication system focusing on both front-end and back-end aspects.",
    "priority": "HIGH",
    "assignees": ["Bob", "Carol"],
    "subtasks": [
      {
        "id": 2,
        "name": "Front-end Revamp"
      },
      {
        "id": 3,
        "name": "Back-end Optimization"
      }
    ],
    "dependencies": []
  },
  {
    "id": 4,
    "name": "Develop Billing System",
    "description": "Create a new billing system which will be integrated with the authentication system.",
    "priority": "MEDIUM",
    "assignees": ["Bob"],
    "subtasks": [],
    "dependencies": [3]
  },
  {
    "id": 5,
    "name": "Integrate Authentication System with Billing System",
    "description": "Integrate the improved authentication system with the new billing system.",
    "priority": "MEDIUM",
    "assignees": ["Bob"],
    "subtasks": [],
    "dependencies": [3, 4]
  },
  {
    "id": 6,
    "name": "Update User Documentation",
    "description": "Update the user documentation to reflect changes in the authentication and billing systems.",
    "priority": "LOW",
    "assignees": ["Carol"],
    "subtasks": [],
    "dependencies": [2, 5]
  }
]
```


## What's Next?

You can enhance this implementation by:
- Adding due dates to the `Ticket` class
- Including status tracking for tasks
- Adding validation for task dependencies
- Implementing custom formatting for the extracted tasks

## Common Issues and Solutions

- If tasks aren't being properly identified, try adjusting the prompt to be more specific
- If priorities aren't being set correctly, consider adding examples in the prompt
- For complex transcripts, you might need to adjust the model parameters for better results



================================================
FILE: fern/01-guide/06-prompt-engineering/chain-of-thought.mdx
================================================
---
title: Chain-of-Thought Prompting
---

Chain-of-thought prompting is a technique that encourages the language model to think step by step, reasoning through the problem before providing an answer. This can improve the quality of the response and make it easier to understand.

<Frame caption="Chain-of-Thought Prompting [Wei et al. (2022)](https://arxiv.org/abs/2201.11903)">
  <img src="../../assets/guide/cot.png" alt="Chain-of-Thought Prompting"/>
</Frame>


There are a few different ways to implement chain-of-thought prompting, especially for structured outputs.

1. Require the model to reason before outputting the structured object.
    - Bonus: Use a `template_string` to embed the reasoning into multiple functions.
2. Require the model to **flexibly** reason before outputting the structured object.
3. Embed reasoning in the structured object.
4. Ask the model to embed reasoning as comments in the structured object.

Let's look at an example of each of these.

<Tip>
  We recommend [Technique 2](#technique-2-allowing-for-flexible-reasoning) for most use cases.
  But each technique has its own trade-offs, so please try them out and see which one works best for your use case.
</Tip>

<Info>
  Since BAML leverages [Schema-Aligned Parsing (SAP)](https://www.boundaryml.com/blog/schema-aligned-parsing) instead of JSON.parse or LLM modification (like constrained generation or structured outputs), we can do all of the above techniques with any language model!
</Info>

## Technique 1: Reasoning before outputting the structured object

In the below example, we use chain of thought prompting to extract information from an email.

```baml {9-17}
function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-4o-mini"
  prompt #"
    extract everything from this email.


    {{ ctx.output_format }}

    Before you answer, please explain your reasoning step-by-step.

    For example:
    If we think step by step we can see that ...

    Therefore the output is:
    {
      ... // schema
    }

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}

class Email {
    subject string
    body string
    from_address string
}


class OrderInfo {
    order_status "ORDERED" | "SHIPPED" | "DELIVERED" | "CANCELLED"
    tracking_number string?
    estimated_arrival_date string?
}

test Test1 {
  functions [GetOrderInfo]
  args {
    email {
      from_address "hello@amazon.com"
      subject "Your Amazon.com order of 'Wood Dowel Rods...' has shipped!"
      body #"
        Hi Sam, your package will arrive:
        Thurs, April 4
        Track your package:
        www.amazon.com/gp/your-account/ship-track?ie=23&orderId123

        On the way:
        Wood Dowel Rods...
        Order #113-7540940
        Ship to:
            Sam
            SEATTLE, WA

        Shipment total:
        $0.00
    "#

    }
  }
}
```


### Reusable Chain-of-Thought Snippets

You may want to reuse the same technique for multiple functions. Consider [template_string](/ref/baml/template-string)!

```baml {1-12, 21}
template_string ChainOfThought(action: string?) #"
    Before you answer, please explain your reasoning step-by-step.
    {% if action %}{{ action }}{% endif %}

    For example:
    If we think step by step we can see that ...

    Therefore the output is:
    {
      ... // schema
    }
"#

function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-"
  prompt #"
    Extract everything from this email.

    {{ ctx.output_format }}

    {{ ChainOfThought("focus on things related to shipping") }}

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}

```

## Technique 2: Allowing for flexible reasoning

<Tip>
  This is one we recommend for most use cases.
</Tip>

```baml {9-16}
function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-"
  prompt #"
    extract everything from this email.


    {{ ctx.output_format }}

    Outline some relevant information before you answer.
    Example:
    - ...
    - ...
    ...
    {
      ... // schema
    }

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}
```

The benefit of using `- ...` is that we allow the model to know it needs to output some information, but we don't limit it to a specific format or inject any bias by adding example text that may not be relevant.

Similarly, we use `...` after two `- ...` to indicate that we don't mean to limit the number of items to 2.

<Accordion title="Reuseable snippet">

```baml {1-10, 19}
template_string ChainOfThought() #"
    Outline some relevant information before you answer.
    Example:
    - ...
    - ...
    ...
    {
      ... // schema
    }
"#

function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-"
  prompt #"
    extract everything from this email.

    {{ ctx.output_format }}

    {{ ChainOfThought() }}

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}
```
</Accordion>

## Technique 3: Embed reasoning in the structured object

```baml {2-4}
class OrderInfo {
    clues string[] @description(#"
      relevant quotes from the email related to shipping
    "#)
    order_status "ORDERED" | "SHIPPED" | "DELIVERED" | "CANCELLED"
    tracking_number string?
    estimated_arrival_date string?
}

function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-"
  prompt #"
    extract everything from this email.

    {{ ctx.output_format }}

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}
```

## Technique 4: Ask the model to embed reasoning as comments in the structured object

```baml {3-5}
class OrderInfo {
    order_status "ORDERED" | "SHIPPED" | "DELIVERED" | "CANCELLED"
      @description(#"
        before fields, in comments list out any relevant clues from the email
      "#)
    tracking_number string?
    estimated_arrival_date string?
}

function GetOrderInfo(email: Email) -> OrderInfo {
  client "openai/gpt-"
  prompt #"
    extract everything from this email.

    {{ ctx.output_format }}

    {{ _.role('user') }}

    Sender: {{email.from_address}}
    Email Subject: {{email.subject}}
    Email Body: {{email.body}}
  "#
}
```



================================================
FILE: fern/01-guide/06-prompt-engineering/chat-history.mdx
================================================
---
title: Chat
---

In this guide we'll build a small chatbot that takes in user messages and generates responses.


```baml chat-history.baml
class MyUserMessage {
  role "user" | "assistant"
  content string
}

function ChatWithLLM(messages: MyUserMessage[]) -> string {
  client "openai/gpt-4o"
  prompt #"
    Answer the user's questions based on the chat history:
    {% for message in messages %}
      {{ _.role(message.role) }}
      {{ message.content }}
    {% endfor %}

    Answer:
  "#
}

test TestName {
  functions [ChatWithLLM]
  args {
    messages [
      {
        role "user"
        content "Hello!"
      }
      {
        role "assistant"
        content "Hi!"
      }
    ]
  }
}

```

#### Code
<CodeGroup>
```python Python
from baml_client import b
from baml_client.types import MyUserMessage

def main():
    messages: list[MyUserMessage] = []

    while True:
        content = input("Enter your message (or 'quit' to exit): ")
        if content.lower() == 'quit':
            break

        messages.append(MyUserMessage(role="user", content=content))

        agent_response = b.ChatWithLLM(messages=messages)
        print(f"AI: {agent_response}")
        print()

        # Add the agent's response to the chat history
        messages.append(MyUserMessage(role="assistant", content=agent_response))

if __name__ == "__main__":
    main()
```
```typescript Typescript
import { b, MyUserMessage } from 'baml_client';
import * as readline from 'readline';

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

const messages: MyUserMessage[] = [];

function askQuestion(query: string): Promise<string> {
  return new Promise((resolve) => {
    rl.question(query, resolve);
  });
}

async function main() {

  while (true) {
    const content = await askQuestion("Enter your message (or 'quit' to exit): ");
    if (content.toLowerCase() === 'quit') {
      break;
    }

    messages.push({ role: "user", content });

    const agentResponse = await b.ChatWithLLM({ messages });
    console.log(`AI: ${agentResponse}`);
    console.log();

    // Add the agent's response to the chat history
    messages.push({ role: "assistant", content: agentResponse });
  }

  rl.close();
}

main();
```
</CodeGroup>



================================================
FILE: fern/01-guide/06-prompt-engineering/classification.mdx
================================================
---
title: Classification
---

# Building a Spam Classifier with BAML

In this tutorial, you'll learn how to create a simple but effective spam classifier using BAML and OpenAI's GPT models. By the end, you'll have a working classifier that can distinguish between spam and legitimate messages.

## Prerequisites

- Basic understanding of BAML syntax
- Access to OpenAI API (you'll need an API key)

## Step 1: Define the Classification Schema

First, let's define what our classification output should look like. Create a new file called `spam_classifier.baml` and add the following schema:

```baml
enum MessageType {
  SPAM
  NOT_SPAM
}
```

This schema defines a simple classification with two possible labels: `SPAM` or `NOT_SPAM`.

## Step 2: Create the Classification Function

Next, we'll create a function that uses GPT-4 to classify text. Add this to your `spam_classifier.baml` file:

```baml
function ClassifyText(input: string) -> MessageType {
  client "openai/gpt-4o-mini"
  prompt #"
    Classify the message.

    {{ ctx.output_format }}

    {{ _.role("user") }}

    {{ input }}
  "#
}
```

Let's break down what this function does:
- Takes an input as a string
- Uses the `gpt-4o-mini` model
- Provides clear guidelines for classification in the prompt
- Returns a MessageType

## Step 3: Test the Classifier

To ensure our classifier works correctly, let's add some test cases:

```baml
test BasicSpamTest {
  functions [ClassifyText]
  args {
    input "Buy cheap watches now! Limited time offer!!!"
  }
}

test NonSpamTest {
  functions [ClassifyText]
  args {
    input "Hey Sarah, can we meet at 3 PM tomorrow to discuss the project?"
  }
}
```

This is what it looks like in the BAML Playground:
<img src="../../assets/guide/classification-1_m.png"/>

## Try it yourself in the Interactive Playground!

Now that you have your classifier set up, try it with your own examples. Here are some messages you can test:

1. "Meeting at 2 PM in the conference room"
2. "CONGRATULATIONS! You've won $1,000,000!!!"
3. "Can you review the document I sent yesterday?"
4. "Make money fast! Work from home!!!"

 <div class="resizer">
<iframe
  class="resized"
  src="https://promptfiddle.com/embed?id=classification"

  height="640"
  style="border: none;"
  resize="both"
  overflow="auto"
  msallowfullscreen
></iframe>
</div>

## Next Steps

- Experiment with different prompt templates to improve accuracy
- Add more spam indicators to the classification criteria
- Create a more complex classification schema with confidence scores
- Try using different GPT models to compare performance

# Multi-Label Classification

While the spam classifier demonstrates single-label classification (where each input belongs to exactly one category), many real-world problems require multiple labels. Let's build a support ticket classifier that can assign multiple relevant categories to each ticket.

## Step 1: Define the Label Enum and Schema

Create a new file called `ticket_classifier.baml` and define the possible ticket categories as an enum:

```baml
enum TicketLabel {
  ACCOUNT
  BILLING
  GENERAL_QUERY
}

class TicketClassification {
  labels TicketLabel[]
}
```

Notice how this schema differs from our spam classifier:
- We use an `enum` to define valid labels
- The `labels` field is an array (`TicketLabel[]`), allowing multiple labels per ticket

## Step 2: Create the Multi-Label Classification Function

Add the classification function to your `ticket_classifier.baml` file:

```baml
function ClassifyTicket(ticket: string) -> TicketClassification {
  client "openai/gpt-4o-mini"
  prompt #"
    You are a support agent at a tech company. Analyze the support ticket and select all applicable labels.

    {{ ctx.output_format }}

    {{ _.role("user") }}

    {{ ticket }}
  "#
}
```

Key differences from the spam classifier:
- The prompt includes examples showing both single and multiple labels
- Examples demonstrate how labels can overlap
- The model is instructed to consider all applicable labels

## Step 3: Test Multi-Label Classification

Add test cases that cover both single-label and multi-label scenarios:

```baml
test ClassifyTicketSingleLabel {
  functions [ClassifyTicket]
  args {
    ticket "I need help resetting my password"
  }
}

test ClassifyTicketMultiLabel {
  functions [ClassifyTicket]
  args {
    ticket "My account is locked and I can't access my billing information"
  }
}
```

This is what it looks like in the BAML Playground:
<img src="../../assets/guide/classification-2_m.png"/>

## Try it yourself!

Test the multi-label classifier with these examples:

1. "How do I upgrade my subscription plan?"
2. "I forgot my password and need to update my payment method"
3. "What are the features included in the premium plan?"
4. "My account is showing incorrect billing history"

## Tips for Multi-Label Classification

1. **Balanced Examples**: Include examples in your prompt that show both single and multiple labels
2. **Clear Descriptions**: Add descriptive annotations to help the model understand each label
3. **Test Edge Cases**: Include test cases that verify the model can handle:
   - Single label cases
   - Multiple label cases
   - Edge cases where no labels apply


================================================
FILE: fern/01-guide/06-prompt-engineering/hallucinations.mdx
================================================
---
title: Reduce Hallucinations
---

We recommend these simple ways to reduce hallucinations:


### 1. Set temperature to 0.0 (especially if extracting data verbatim)
This will make the model less creative and more likely to just extract the data that you want verbatim.
```baml clients.baml
client<llm> MyClient {
  provider openai
  options {
    temperature 0.0
  }
}
```

### 2. Reduce the number of input tokens
Reduce the amount of data you're giving the model to process to reduce confusion.

Prune as much data as possible, or split your prompt into multiple prompts analyzing subsets of the data.

If you're processing `images`, try cropping the parts of the image that you don't need. LLMs can only handle images of certain sizes, so every pixel counts. Make sure you resize images to the model's input size (even if the provider does the resizing for you), so you can gauge how clear the image is at the model's resolution. You'll notice the blurrier the image is, the higher the hallucination rate.

Let us know if you want more tips for processing images, we have some helper prompts we can share with you, or help debug your prompt.



### 2. Use reasoning or reflection prompting
Read our [chain-of-thought guide](/examples/prompt-engineering/chain-of-thought) for more.

### 3. Watch out for contradictions and word associations

Each word you add into the prompt will cause it to associate it with something it saw before in its training data. This is why we have techniques like [symbol tuning](/examples/prompt-engineering/symbol-tuning) to help control this bias.


Let's say you have a prompt that says:
```
Answer in this JSON schema:



But when you answer, add some comments in the JSON indicating your reasoning for the field like this:

Example:
---
{
  // I used the name "John" because it's the name of the person who wrote the prompt
  "name": "John"
}

JSON:
```

The LLM may not write the `// comment` inline, because it's been trained to associate JSON with actual "valid" JSON.

You can get around this with some more coaxing like:
```text {12,13}
Answer in this JSON schema:



But when you answer, add some comments in the JSON indicating your reasoning for the field like this:
---
{
  // I used the name "John" because it's the name of the person who wrote the prompt
  "name": "John"
}

It's ok if this isn't fully valid JSON,
we will fix it afterwards and remove the comments.

JSON:
```

The LLM made an assumption that you want "JSON" -- which doesn't use comments -- and our instructions were not explicit enough to override that bias originally.

Keep on reading for more tips and tricks! Or reach out in our Discord



================================================
FILE: fern/01-guide/06-prompt-engineering/pii-data-extraction.mdx
================================================
# Building a PII Data Extraction and Scrubbing System with BAML

In this tutorial, you'll learn how to create a robust PII (Personally Identifiable Information) data extraction and scrubbing system using BAML and GPT-4. By the end, you'll have a working system that can identify, extract, and scrub various types of PII from text documents.

## Prerequisites

- Basic understanding of BAML syntax
- Access to OpenAI API (you'll need an API key)

## Step 1: Define the Data Schema

First, let's define what our PII data structure should look like. Create a new file called `pii_extractor.baml` and add the following schema:

```baml pii_extractor.baml
class PIIData {
  index int
  dataType string
  value string
}

class PIIExtraction {
  privateData PIIData[]
  containsSensitivePII bool @description("E.g. SSN")
}
```

This schema defines:
- `PIIData`: A class representing a single piece of PII with its type and value
- `PIIExtraction`: A container class that holds an array of PII data items and a sensitive data flag

## Step 2: Create the Extraction Function

Next, let's create the function that uses GPT-4 to extract PII. Add this to your `pii_extractor.baml` file:

```baml pii_extractor.baml
function ExtractPII(document: string) -> PIIExtraction {
  client "openai/gpt-4o-mini"
  prompt #"
    Extract all personally identifiable information (PII) from the given document. Look for items like:
    - Names
    - Email addresses
    - Phone numbers
    - Addresses
    - Social security numbers
    - Dates of birth
    - Any other personal data

    {{ ctx.output_format }}

    {{ _.role("user") }}

    {{ document }}
  "#
}
```

Let's break down what this function does:
- Takes a `document` input as a string
- Uses the `gpt-4o-mini` model
- Provides clear guidelines for PII extraction in the prompt
- Returns a `PIIExtraction` object containing all found PII data

## Step 3: Test the Extractor

To ensure our PII extractor works correctly, let's add some test cases:

```baml pii_extractor.baml
test BasicPIIExtraction {
  functions [ExtractPII]
  args {
    document #"
      John Doe was born on 01/02/1980.
      His email is john.doe@email.com and phone is 555-123-4567.
      He lives at 123 Main St, Springfield, IL 62704.
    "#
  }
}

test EmptyDocument {
  functions [ExtractPII]
  args {
    document "This document contains no PII data."
  }
}
```

This is what it looks like in BAML playground after running the test:
<img src="../../assets/guide/pii-scrubber.png"/>


<Tip>
  You can try playing with the functions and tests online at https://www.promptfiddle.com/Pii-data-O4PmJ
</Tip>


## Step 4: Implementing PII Extraction and Scrubbing

Now you can use the PII extractor to both identify and scrub sensitive information from your documents:

```python pii_scrubber.py
from baml_client import b
from baml_client.types import PIIExtraction
from typing import Dict, Tuple

def scrub_document(text: str) -> Tuple[str, Dict[str, str]]:
    # Extract PII from the document
    result = b.ExtractPII(text)

    # Create a mapping of real values to scrubbed placeholders
    scrubbed_text = text
    pii_mapping = {}

    # Process each PII item and replace with a placeholder
    for pii_item in result.privateData:
        pii_type = pii_item.dataType.upper()
        placeholder = f"[{pii_type}_{pii_item.index}]"

        # Store the mapping for reference
        pii_mapping[placeholder] = pii_item.value

        # Replace the PII with the placeholder
        scrubbed_text = scrubbed_text.replace(pii_item.value, placeholder)

    return scrubbed_text, pii_mapping

def restore_document(scrubbed_text: str, pii_mapping: Dict[str, str]) -> str:
    """Restore the original text using the PII mapping."""
    restored_text = scrubbed_text
    for placeholder, original_value in pii_mapping.items():
        restored_text = restored_text.replace(placeholder, original_value)
    return restored_text

# Example usage
document = """
John Smith works at Tech Corp.
You can reach him at john.smith@techcorp.com
or call 555-0123 during business hours.
His employee ID is TC-12345.
"""

# Scrub the document
scrubbed_text, pii_mapping = scrub_document(document)

print("Original Document:")
print(document)
print("\nScrubbed Document:")
print(scrubbed_text)
print("\nPII Mapping:")
for placeholder, original in pii_mapping.items():
    print(f"{placeholder}: {original}")

# If needed, restore the original document
restored_text = restore_document(scrubbed_text, pii_mapping)
print("\nRestored Document:")
print(restored_text)
```

This implementation provides several key features:
1. **PII Detection**: Uses BAML's ExtractPII function to identify PII
2. **Data Scrubbing**: Replaces PII with descriptive placeholders
3. **Mapping Preservation**: Maintains a mapping of placeholders to original values
4. **Restoration Capability**: Allows restoration of the original text when needed

Example output:
``` output.txt
Original Document:

John Smith works at Tech Corp.
You can reach him at john.smith@techcorp.com
or call 555-0123 during business hours.
His employee ID is TC-12345.


Scrubbed Document:

[NAME_1] works at Tech Corp.
You can reach him at [EMAIL_2]
or call [PHONE_3] during business hours.
His employee ID is [EMPLOYEE ID_4].


PII Mapping:
[NAME_1]: John Smith
[EMAIL_2]: john.smith@techcorp.com
[PHONE_3]: 555-0123
[EMPLOYEE ID_4]: TC-12345

Restored Document:

John Smith works at Tech Corp.
You can reach him at john.smith@techcorp.com
or call 555-0123 during business hours.
His employee ID is TC-12345.
```

## Next Steps

Now that you have a working PII extractor, you can:
- Add more specific PII types to look for
- Implement validation for extracted PII (e.g., email format checking)
- Create a more sophisticated prompt to handle edge cases
- Add error handling for malformed documents
- Integrate with your data privacy compliance system

## Enhanced Security: Using Local Models

For organizations handling sensitive data, using cloud-based LLMs like OpenAI's GPT models might not be suitable due to data privacy concerns.
BAML supports using local models, which keeps all PII processing within your infrastructure.

In this example, we're going to use a Ollama model.
For more details on how to use Ollama with BAML, check out [this page](/ref/llm-client-providers/openai-generic-ollama).


1. First, define your local model client in `pii_extractor.baml`:

```baml
// Please ensure you've got ollama set up with llama:3.1 installed
//
// ollama pull llama:3.1
// ollama run llama:3.1
client<llm> SecureLocalLLM {
  provider "openai-generic"
  options {
    base_url "http://localhost:11434/v1"
    model "llama3.1:latest"
    temperature 0
    default_role "user"
  }
}
```

2. Update the ExtractPII function to use your local model:

```baml
function ExtractPII(document: string) -> PIIExtraction {
  // use a local model instead of openai
  client SecureLocalLLM
  prompt #"
    Extract all personally identifiable information (PII) from the given document. Look for items like:
    - Names
    - Email addresses
    - Phone numbers
    - Addresses
    - Social security numbers
    - Dates of birth
    - Any other personal data

    {{ ctx.output_format }}

    {{ _.role("user") }}

    {{ document }}
  "#
}
```



================================================
FILE: fern/01-guide/06-prompt-engineering/rag.mdx
================================================
---
title: Retrieval-Augmented Generation (RAG)
---

RAG is a commonly used technique used to improve the quality of LLM-generated responses by
grounding the model on external sources of knowledge. In this example, we'll use
BAML to manage the prompts for a RAG pipeline.

### Creating BAML functions

The most common way to implement RAG is to use a vector store that contains embeddings of
the data. First, let's define our BAML model for RAG.

#### BAML Code

```baml rag.baml
class Response {
  question string
  answer string
}

function RAG(question: string, context: string) -> Response {
  client "openai/gpt-4o-mini"
  prompt #"
    Answer the question in full sentences using the provided context.
    Do not make up an answer. If the information is not provided in the context, say so clearly.

    QUESTION: {{ question }}
    RELEVANT CONTEXT: {{ context }}

    {{ ctx.output_format }}

    RESPONSE:
  "#
}

test TestOne {
  functions [RAG]
  args {
    question "When was SpaceX founded?"
    context #"
      SpaceX is an American spacecraft manufacturer and space transportation company founded by Elon Musk in 2002.
    "#
  }
}

test TestTwo {
  functions [RAG]
  args {
    question "Where is Fiji located?"
    context #"
      Fiji is a country in the South Pacific known for its rugged landscapes, palm-lined beaches, and coral reefs with clear lagoons.
    "#
  }
}

test TestThree {
  functions [RAG]
  args {
    question "What is the primary product of BoundaryML?"
    context #"
      BoundaryML is the company that makes BAML, the best way to get structured outputs with LLMs.
    "#
  }
}

test TestMissingContext{
  functions [RAG]
  args {
    question "Who founded SpaceX?"
    context #"
      BoundaryML is the company that makes BAML, the best way to get structured with LLMs.
    "#
  }
}
```

Note how in the `TestMissingContext` test, the model correctly says that it doesn't know the answer
because it's not provided in the context. The model doesn't make up an answer, because of the way
we've written the prompt.

You can generate the BAML client code for this prompt by running `baml-cli generate`.

### Creating a VectorStore

Next, let's create our own minimal vector store and retriever using `scikit-learn`.

#### Python Code

```py rag.py
# Install scikit-learn and use its TfidfVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
import numpy as np

class VectorStore:
    """
    Adapted from https://github.com/MadcowD/ell/blob/main/examples/rag/rag.py
    """
    def __init__(self, vectorizer, tfidf_matrix, documents):
        self.vectorizer = vectorizer
        self.tfidf_matrix = tfidf_matrix
        self.documents = documents

    @classmethod
    def from_documents(cls, documents: list[str]) -> "VectorStore":
        vectorizer = TfidfVectorizer()
        tfidf_matrix = vectorizer.fit_transform(documents)
        return cls(vectorizer, tfidf_matrix, documents)

    def retrieve_with_scores(self, query: str, k: int = 2) -> list[dict]:
        query_vector = self.vectorizer.transform([query])
        similarities = cosine_similarity(query_vector, self.tfidf_matrix).flatten()
        top_k_indices = np.argsort(similarities)[-k:][::-1]
        return [
            {"document": self.documents[i], "relevance": float(similarities[i])}
            for i in top_k_indices
        ]

    def retrieve_context(self, query: str, k: int = 2) -> str:
        documents = self.retrieve_with_scores(query, k)
        return "\n".join([item["document"] for item in documents])
```

We can then build our RAG application in Python by calling the BAML client.

```py rag.py
from baml_client import b

# class VectorStore:
# ...

if __name__ == "__main__":
    documents = [
        "SpaceX is an American spacecraft manufacturer and space transportation company founded by Elon Musk in 2002.",
        "Fiji is a country in the South Pacific known for its rugged landscapes, palm-lined beaches, and coral reefs with clear lagoons.",
        "Dunkirk is a 2017 war film depicting the Dunkirk evacuation of World War II, featuring intense aerial combat scenes with Spitfire aircraft.",
        "BoundaryML is the company that makes BAML, the best way to get structured outputs with LLMs."
    ]

    vector_store = VectorStore.from_documents(documents)

    questions = [
        "What is BAML?",
        "Which aircraft was featured in Dunkirk?",
        "When was SpaceX founded?",
        "Where is Fiji located?",
        "What is the capital of Fiji?"
    ]

    for question in questions:
        context = vector_store.retrieve_context(question)
        response = b.RAG(question, context)
        print(response)
        print("-" * 10)
```

When you run the Python script, you should see output like the following:

```
question='What is BAML?' answer='BAML is a product made by BoundaryML, and it is described as the best way to get structured outputs with LLMs.'
----------
question='Which aircraft was featured in Dunkirk?' answer='The aircraft featured in Dunkirk were Spitfire aircraft.'
----------
question='When was SpaceX founded?' answer='SpaceX was founded in 2002.'
----------
question='Where is Fiji located?' answer='Fiji is located in the South Pacific.'
----------
question='What is the capital of Fiji?' answer='The information about the capital of Fiji is not provided in the context.'
----------
```

Once again, in the last question, the model correctly says that it doesn't know the answer because
it's not provided in the context.

That's it! You can now attempt such a RAG workflow with a vector database on a larger dataset.
All you have to do is point BAML to the retriever class you've implemented.

### Creating Citations with LLM

In this advanced section, we'll explore how to enhance our RAG implementation to include citations for the generated responses. This is particularly useful when you need to track the source of information in the generated responses.

First, let's extend our BAML model to support citations. We'll create a new response type and function that explicitly handles citations:

```baml rag.baml
class ResponseWithCitations {
  question string
  answer string
  citations string[]
}

function RAGWithCitations(question: string, context: string) -> ResponseWithCitations {
  client "openai/gpt-4o-mini"
  prompt #"
    Answer the question in full sentences using the provided context.
    If the statement contains information from the context, put the exact cited quotes in complete sentences in the citations array.
    Do not make up an answer. If the information is not provided in the context, say so clearly.

    QUESTION: {{ question }}
    RELEVANT CONTEXT: {{ context }}
    {{ ctx.output_format }}
    RESPONSE:
  "#
}
```

Let's add a test to verify our citation functionality:

```baml rag.baml
test TestCitations {
  functions [RAGWithCitations]
  args {
    question "What can you tell me about SpaceX and its founder?"
    context #"
      SpaceX is an American spacecraft manufacturer and space transportation company founded by Elon Musk in 2002.
      The company has developed several launch vehicles and spacecraft.
      Einstein was born on March 14, 1879.
    "#
  }
}
```

This test will demonstrate how the model:
1. Provides relevant information about SpaceX and its founder
2. Includes the exact source quotes in the citations array
3. Only uses information that's actually present in the context

To use this enhanced RAG implementation in our Python code, we simply need to update our loop to use the new `RAGWithCitations` function:

```py rag.py
for question in questions:
    context = vector_store.retrieve_context(question)
    response = b.RAGWithCitations(question, context)
    print(response)
    print("-" * 10)
```

When you run this modified code, you'll see responses that include both answers and their supporting citations. For example:

```
question='What is BAML?' answer='BAML is a product made by BoundaryML that provides the best way to get structured outputs with LLMs.' citations=['BoundaryML is the company that makes BAML, the best way to get structured outputs with LLMs.']
----------
question='Which aircraft was featured in Dunkirk?' answer='The aircraft featured in Dunkirk were Spitfire aircraft.' citations=['Dunkirk is a 2017 war film depicting the Dunkirk evacuation of World War II, featuring intense aerial combat scenes with Spitfire aircraft.']
----------
question='When was SpaceX founded?' answer='SpaceX was founded in 2002.' citations=['SpaceX is an American spacecraft manufacturer and space transportation company founded by Elon Musk in 2002.']
----------
question='Where is Fiji located?' answer='Fiji is located in the South Pacific.' citations=['Fiji is a country in the South Pacific.']
----------
question='What is the capital of Fiji?' answer='The capital of Fiji is not provided in the context.' citations=[]
----------
```

Notice how each piece of information in the answer is backed by a specific citation from the source context. This makes the responses more transparent and verifiable, which is especially important in applications where the source of information matters.

### Using Pinecone as Vector Database

Instead of using our custom vector store, we can use Pinecone, a production-ready vector database. Here's how to implement the same RAG pipeline using Pinecone:

First, install the required packages:

```bash
pip install pinecone
```

Now, let's modify our Python code to use Pinecone:

```py rag_pinecone.py
import pinecone as pc
from sentence_transformers import SentenceTransformer
from pinecone import ServerlessSpec
from baml_client import b

# Initialize Pinecone
pc = Pinecone(api_key="YOUR_API_KEY")

class PineconeStore:
    def __init__(self, index_name: str):
        self.index_name = index_name
        self.encoder = SentenceTransformer('all-MiniLM-L6-v2')

        # Create index if it doesn't exist
        if index_name not in pc.list_indexes().names():
            pc.create_index(
                name=index_name,
                dimension=self.encoder.get_sentence_embedding_dimension(),
                metric='cosine',
                spec=ServerlessSpec(
                    cloud='aws',
                    region='us-east-1'
                )
            )
        self.index = pc.Index(index_name)

    def add_documents(self, documents: list[str], ids: list[str] = None):
        if ids is None:
            ids = [str(i) for i in range(len(documents))]

        # Create embeddings
        embeddings = self.encoder.encode(documents)

        # Create vector records
        vectors = [(id, emb.tolist(), {"text": doc})
                  for id, emb, doc in zip(ids, embeddings, documents)]

        # Upsert to Pinecone
        self.index.upsert(vectors=vectors)

    def retrieve_context(self, query: str, k: int = 2) -> str:
        # Create query embedding
        query_embedding = self.encoder.encode(query).tolist()

        # Query Pinecone
        results = self.index.query(
            vector=query_embedding,
            top_k=k,
            include_metadata=True
        )

        # Extract and join the document texts
        contexts = [match.metadata["text"] for match in results.matches]
        return "\n".join(contexts)

if __name__ == "__main__":
    # Initialize Pinecone store
    vector_store = PineconeStore("baml-rag-demo")

    # Sample documents (same as before)
    documents = [
        "SpaceX is an American spacecraft manufacturer and space transportation company founded by Elon Musk in 2002.",
        "Fiji is a country in the South Pacific known for its rugged landscapes, palm-lined beaches, and coral reefs with clear lagoons.",
        "Dunkirk is a 2017 war film depicting the Dunkirk evacuation of World War II, featuring intense aerial combat scenes with Spitfire aircraft.",
        "BoundaryML is the company that makes BAML, the best way to get structured outputs with LLMs."
    ]

    # Add documents to Pinecone
    vector_store.add_documents(documents)

    # Test questions (same as before)
    questions = [
        "What is BAML?",
        "Which aircraft was featured in Dunkirk?",
        "When was SpaceX founded?",
        "Where is Fiji located?",
        "What is the capital of Fiji?"
    ]

    # Query using the same BAML functions
    for question in questions:
        context = vector_store.retrieve_context(question)
        response = b.RAGWithCitations(question, context)
        print(response)
        print("-" * 10)
```

The key differences when using Pinecone are:

1. Documents are stored in Pinecone's serverless infrastructure on AWS instead of in memory
2. We can persist our vector database across sessions

Here is a snapshot of the entriies in our Pinecone database console:
<img src="../../assets/guide/pinecone-rag-example.png" width="600px" height="auto" />

Note that you'll need to:
1. [Create a Pinecone account](https://www.pinecone.io/)
2. Get your API key from the Pinecone console
3. Replace `YOUR_API_KEY` with your actual Pinecone credentials
4. Make sure you have access to the serverless offering in your Pinecone account

The BAML functions (`RAG` and `RAGWithCitations`) remain exactly the same, demonstrating how BAML cleanly separates the prompt engineering from the implementation details of your vector database.

When you run this code, you'll get the same type of responses as before, but now you're using a production-ready serverless vector database that can scale automatically based on your usage.





================================================
FILE: fern/01-guide/06-prompt-engineering/symbol-tuning.mdx
================================================
---
title: Creating a Classification Function with Symbol Tuning
---

Aliasing field names to abstract symbols like "k1", "k2", etc. can improve classification results. This technique, known as symbol tuning, helps the LLM focus on your descriptions rather than being biased by the enum or property names themselves.

See the paper [Symbol Tuning Improves In-Context Learning in Language Models](https://arxiv.org/abs/2305.08298) for more details.

```baml
enum MyClass {
    Refund @alias("k1")
    @description("Customer wants to refund a product")

    CancelOrder @alias("k2")
    @description("Customer wants to cancel an order")

    TechnicalSupport @alias("k3")
    @description("Customer needs help with a technical issue unrelated to account creation or login")

    AccountIssue @alias("k4")
    @description("Specifically relates to account-login or account-creation")

    Question @alias("k5")
    @description("Customer has a question")
}

function ClassifyMessageWithSymbol(input: string) -> MyClass {
  client GPT4o

  prompt #"
    Classify the following INPUT into ONE
    of the following categories:

    INPUT: {{ input }}

    {{ ctx.output_format }}

    Response:
  "#
}

test Test1 {
  functions [ClassifyMessageWithSymbol]
  args {
    input "I can't access my account using my login credentials. I havent received the promised reset password email. Please help."
  }
}
```


================================================
FILE: fern/01-guide/06-prompt-engineering/tools.mdx
================================================
---
title: Tools / Function Calling
---


"Function calling" is a technique for getting an LLM to choose a function to call for you.

The way it works is:
1. You define a task with certain function(s)
2. Ask the LLM to **choose which function to call**
3. **Get the function parameters from the LLM** for the appropriate function it choose
4. **Call the functions** in your code with those parameters

It's common for people to think of "function calling" or "tool use" separately from "structured outputs" (even OpenAI has separate parameters for them), but at BAML, we think it's simpler and more impactful to think of them equivalently. This is because, at the end of the day, you are looking to get something processable back from your LLM. Whether it's extracting data from a document or calling the Weather API, you need a standard representation of that output, which is where BAML lives.

<Frame caption="Baml Control Flow">
  <img src="../../assets/guide/tool-calling.png" alt="Tool-Calling"/>
</Frame>

In BAML, you can get represent a `tool` or a `function` you want to call as a BAML `class`, and make the function output be that class definition.

```baml BAML
class WeatherAPI {
  // we can use literals to denote the name of the tool
  // the field can be named anything we want! "api_name" "tool" "function_name"
  // whatever you feel the LLM would understand best
  api_name "weather_request"
  city string @description("the user's city")
  timeOfDay string @description("As an ISO8601 timestamp")
}

function UseTool(user_message: string) -> WeatherAPI {
  client "openai/gpt-4o-mini"
  prompt #"
    Given a message, extract info.
    {# special macro to print the functions return type. #}
    {{ ctx.output_format }}

    {{ _.role('user') }}
    {{ user_message }}
  "#
}
```
Call the function like this:

<CodeGroup>
```python Python
import asyncio
import datetime
from baml_client import b
from baml_client.types import WeatherAPI

def get_weather(city: str, time_of_day: datetime.date):
    ...

def main():
    weather_info = b.UseTool("What's the weather like in San Francisco?")
    print(weather_info)
    assert isinstance(weather_info, WeatherAPI)
    print(f"City: {weather_info.city}")
    print(f"Time of Day: {weather_info.time_of_day}")
    weather = get_weather(city=weather_info.city, time_of_day=weather_info.timeOfDay)

if __name__ == '__main__':
    main()
```

```typescript TypeScript
import { b } from './baml_client'
import { WeatherAPI } from './baml_client/types'
import assert from 'assert'

const main = async () => {
  const weatherInfo = await b.UseTool("What's the weather like in San Francisco?")
  console.log(weatherInfo)
  // BAML doesn't generate concrete types in TypeScript
  // so we can only validate the interfaces
  assert("city" in weatherInfo)
  console.log(`City: ${weatherInfo.city}`)
  console.log(`Time of Day: ${weatherInfo.timeOfDay}`)
}
```

```ruby Ruby
require_relative "baml_client/client"

$b = Baml.Client

def main
  weather_info = $b.UseTool(user_message: "What's the weather like in San Francisco?")
  puts weather_info
  raise unless weather_info.is_a?(Baml::Types::WeatherAPI)
  puts "City: #{weather_info.city}"
  puts "Time of Day: #{weather_info.timeOfDay}"
end
```
</CodeGroup>

## Choosing multiple Tools

To choose ONE tool out of many, you can use a union:
```baml BAML
function UseTool(user_message: string) -> WeatherAPI | MyOtherAPI {
  .... // same thing
}
```

<Tip>If you use [VSCode Playground](/guide/installation-editors/vs-code-extension), you can see what we inject into the prompt, with full transparency.</Tip>

Call the function like this:

<CodeGroup>
```python Python
import asyncio
from baml_client import b
from baml_client.types import WeatherAPI, MyOtherAPI

async def main():
    tool = b.UseTool("What's the weather like in San Francisco?")
    print(tool)

    if isinstance(tool, WeatherAPI):
        print(f"Weather API called:")
        print(f"City: {tool.city}")
        print(f"Time of Day: {tool.timeOfDay}")
    elif isinstance(tool, MyOtherAPI):
        print(f"MyOtherAPI called:")
        # Handle MyOtherAPI specific attributes here

if __name__ == '__main__':
    main()
```

```typescript TypeScript
import { b } from './baml_client'
import { WeatherAPI, MyOtherAPI } from './baml_client/types'

const main = async () => {
  const tool = await b.UseTool("What's the weather like in San Francisco?")
  console.log(tool)

  // BAML doesn't generate concrete types in TypeScript
  // We check which tool by checking if certain fields exist
  if ("city" in tool) {
    console.log("Weather API called:")
    console.log(`City: ${tool.city}`)
    console.log(`Time of Day: ${tool.timeOfDay}`)
  } else if ("operation" in tool) {
    console.log("MyOtherAPI called:")
    // Handle MyOtherAPI specific attributes here
  }

  /*
   * Alternatively, we could modify our BAML file as such
   *
   * class WeatherAPI {
   *   class_name "WeatherAPI"
   *   city string
   *   time string @description("Current time in ISO8601 format")
   * }
   *
   * class MyOtherAPI {
   *   class_name "MyOtherAPI"
   *   operation "add" | "subtract" | "multiply" | "divide"
   *   numbers float[]
   * }
   *
   * Then, in typescript, we could check the class_name to determine which tool to call
   *
   * if (tool.class_name === "WeatherAPI") {
   *   // Handle WeatherAPI specific attributes here
   * } else if (tool.class_name === "MyOtherAPI") {
   *   // Handle MyOtherAPI specific attributes here
   * }
   */
}

main()
```

```ruby Ruby
require_relative "baml_client/client"

$b = Baml.Client

def main
  tool = $b.UseTool(user_message: "What's the weather like in San Francisco?")
  puts tool

  case tool
  when Baml::Types::WeatherAPI
    puts "Weather API called:"
    puts "City: #{tool.city}"
    puts "Time of Day: #{tool.timeOfDay}"
  when Baml::Types::MyOtherAPI
    puts "MyOtherAPI called:"
    # Handle MyOtherAPI specific attributes here
  end
end

main
```
</CodeGroup>

## Choosing N Tools
To choose many tools, you can use a union of a list:
```baml BAML
function UseTool(user_message: string) -> (WeatherAPI | MyOtherAPI)[] {
  client "openai/gpt-4o-mini"
  prompt #"
    Given a message, extract info.
    {# special macro to print the functions return type. #}
    {{ ctx.output_format }}

    {{ _.role('user') }}
    {{ user_message }}
  "#
}
```

Call the function like this:

<CodeGroup>
```python Python
import asyncio
from baml_client import b
from baml_client.types import WeatherAPI, MyOtherAPI

async def main():
    tools = b.UseTool("What's the weather like in San Francisco and New York?")
    print(tools)

    for tool in tools:
        if isinstance(tool, WeatherAPI):
            print(f"Weather API called:")
            print(f"City: {tool.city}")
            print(f"Time of Day: {tool.timeOfDay}")
        elif isinstance(tool, MyOtherAPI):
            print(f"MyOtherAPI called:")
            # Handle MyOtherAPI specific attributes here

if __name__ == '__main__':
    main()
```

```typescript TypeScript
import { b } from './baml_client'
import { WeatherAPI, MyOtherAPI } from './baml_client/types'

const main = async () => {
  const tools = await b.UseTool("What's the weather like in San Francisco and New York?")
  console.log(tools)

  tools.forEach(tool => {
    if ("city" in tool) {
      console.log("Weather API called:")
      console.log(`City: ${tool.city}`)
      console.log(`Time of Day: ${tool.timeOfDay}`)
    } else if ("operation" in tool) {
      console.log("MyOtherAPI called:")
      // Handle MyOtherAPI specific attributes here
    }
  })
}

main()
```

```ruby Ruby
require_relative "baml_client/client"

$b = Baml.Client

def main
  tools = $b.UseTool(user_message: "What's the weather like in San Francisco and New York?")
  puts tools

  tools.each do |tool|
    case tool
    when Baml::Types::WeatherAPI
      puts "Weather API called:"
      puts "City: #{tool.city}"
      puts "Time of Day: #{tool.timeOfDay}"
    when Baml::Types::MyOtherAPI
      puts "MyOtherAPI called:"
      # Handle MyOtherAPI specific attributes here
    end
  end
end

main
```
</CodeGroup>

## Disambiguating Between Similar Tools

When building functions that can call multiple tools (represented as BAML classes), you might encounter situations where different tools accept arguments with the same name. For instance, consider `GetWeather` and `GetTimezone` classes, both taking a `city: string` argument. How does the system determine whether a user query like "What's the time in London?" corresponds to `GetTimezone` or potentially `GetWeather`?

You can use string literals to solve this problem:

```baml BAML
class GetWeather {
  tool_name "get_weather" @description("Use this tool to get the current weather forecast for a specific city.")
  city string @description("The city for which to get the weather.")
}

class GetTimezone {
  tool_name "get_timezone" @description("Use this tool to find the current timezone of a specific city.")
  city string @description("The city for which to find the timezone.")
}

function ChooseTool(query: string) -> GetWeather | GetTimezone {
  client "openai/gpt-4o"
  prompt #"
    Given the user query, determine the primary intent and select the appropriate tool to call.

    {# special macro to add tool structures + descriptions here #}
    {{ ctx.output_format }}

    {{ _.role('user') }}
    {{ query }}
  "#
}
```

## Dynamically Generate the tool signature
It might be cumbersome to define schemas in baml and code, so you can define them from code as well. Read more about dynamic types [here](/guide/baml-advanced/dynamic-runtime-types)
```baml BAML
class WeatherAPI {
  @@dynamic // params defined from code
}

function UseTool(user_message: string) -> WeatherAPI {
  client "openai/gpt-4o-mini"
  prompt #"
    Given a message, extract info.
    {# special macro to print the functions return type. #}
    {{ ctx.output_format }}

    {{ _.role('user') }}
    {{ user_message }}
  "#
}
```

Call the function like this:

<CodeGroup>
```python Python
import asyncio
import inspect

from baml_client import b
from baml_client.type_builder import TypeBuilder
from baml_client.types import WeatherAPI

async def get_weather(city: str, time_of_day: str):
    print(f"Getting weather for {city} at {time_of_day}")
    return 42

async def main():
    tb = TypeBuilder()
    type_map = {int: tb.int(), float: tb.float(), str: tb.string()}
    signature = inspect.signature(get_weather)
    for param_name, param in signature.parameters.items():
        tb.WeatherAPI.add_property(param_name, type_map[param.annotation])
    tool = b.UseTool("What's the weather like in San Francisco this afternoon?", { "tb": tb })
    print(tool)
    weather = await get_weather(**tool.model_dump())
    print(weather)

if __name__ == '__main__':
    asyncio.run(main())
```
</CodeGroup>

<Warning>Note that the above approach is not fully generic. Recommended you read: [Dynamic JSON Schema](https://www.boundaryml.com/blog/dynamic-json-schemas)</Warning>

## Function-calling APIs vs Prompting
Injecting your function schemas into the prompt, as BAML does, outperforms function-calling across all benchmarks for major providers ([see our Berkeley FC Benchmark results with BAML](https://www.boundaryml.com/blog/sota-function-calling?q=0)).

Amongst other limitations, function-calling APIs will at times:
1. Return a schema when you don't want any (you want an error)
2. Not work for tools with more than 100 parameters.
3. Use [many more tokens than prompting](https://www.boundaryml.com/blog/type-definition-prompting-baml).

Keep in mind that "JSON mode" is nearly the same thing as "prompting", but it enforces the LLM response is ONLY a JSON blob.
BAML does not use JSON mode since it allows developers to use better prompting techniques like chain-of-thought, to allow the LLM to express its reasoning before printing out the actual schema. BAML's parser can find the json schema(s) out of free-form text for you. Read more about different approaches to structured generation [here](https://www.boundaryml.com/blog/schema-aligned-parsing)

BAML will still support native function-calling APIs in the future (please let us know more about your use-case so we can prioritize accordingly)


## Create an Agent that utilizes these Tools

We can create an Agent or an "agentic loop" that continuously uses tools in a program simply by adding a while loop in our code.
In this example, we'll have two tools:
1. An API that queries the weather.
2. An API that does basic calculations on numbers.

This is what it looks in the BAML file:

```

---
