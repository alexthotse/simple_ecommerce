# Coding & Learning: Using GenAI To Support Software Development

## Introduction

In this course you will learn how to unlock your potential as a software developer with the power of Generative AI. Designed for students and junior software engineers, this course will empower you to integrate Generative AI into your development toolkit, boosting productivity, learning, and your skills.

### What is Generative AI?

Generative AI is a type of artificial intelligence that can create new content—such as text, code, images, or audio—that wasn’t explicitly programmed. It learns patterns from existing data and uses those patterns to generate original outputs that resemble what it was trained on.

One of the core technologies it uses is the Large Language Model (LLM). A LLM is a sophisticated AI system trained on vast amounts of text data that can understand, interpret, and generate human language. LLMs like Claude, ChatGPT, or GitHub Copilot learn patterns and relationships between words and concepts, allowing them to write code, answer questions, summarize information, and assist with various programming tasks.

### What you are going to learn

*   **A brief overview of Generative AI tools**
    We will start with a brief overview of Generative AI tools applicable to software engineering.

*   **Using AI for everyday work**
    In this module we will look at several common scenarios you might come across on a regular basis, and learn to use AI to make us more efficient in executing them. This includes:
    *   Using AI to comprehend existing codebases
    *   Generating and Improving Documentation with AI
    *   Using AI to debug errors
    *   Using AI to help with testing
    *   Using AI to refactoring and enhance code

*   **Learning with AI**
    Then we learn some strategies and princples to make sure we engage with AI in such a way that we keep learning. There are a few specific learning scenarios we look at:
    *   Learning more about the programming language you are using
    *   Learning a new programming language
    *   Learning a new SDK, library or API

*   **Principles when using AI**
    During the course we will highlight a number of important principles and practices when engaging with AI. In this module we recap those.

Embrace AI not as a crutch, but as a seamless augmentation of your capabilities — just like Ironman’s suit. Learn to ask the right questions and elevate the quality of responses.

### Course Structure

*   **Facilitator-Led Sessions:**
    About 20% of the content will be facilitated (either online or in-person, depending on the course format you are participating in).

*   **Self-Directed Learning:**
    Part of the course consists of self-learning material and examples that you can follow on your own time.

*   **Hands-On Practice:**
    The majority of the course consists on hands-on exercises where you will engage with AI and code.

*   **Assessment and Interactive Q&A:**
    There is also time for group discussions, Q&A and assessments.

At the end of each chapter there is a link for a form to complete. Please look out for this and complete it when you finished with a chapter.

## A brief overview of Generative AI tools

The number of generative AI tools and Large Language Models (LLMs) are growing exponentially, and it is easy to be overwhelmed by all the options out there. For this course we are only to look at a few of the key providers.

### AI Tool Categories

We can broadly place AI tools into different categories.

#### Code Assistant Tools

Code Assistant tools analyze your coding patterns and context to suggest code snippets as you type, significantly accelerating development while reducing repetitive typing. They typically integrate directly with your IDE.

*   GitHub Copilot (github.com/features/copilot) - Integrates directly with your IDE for real-time suggestions as you type, powered by OpenAI’s models
*   Amazon CodeWhisperer (aws.amazon.com/codewhisperer) - AWS’s alternative to Copilot with strong security scanning features and AWS integration
*   Tabnine (tabnine.com) - Code completion tool that can be used locally without sending code to external servers
*   Cursor (cursor.ai) - Code IDE directly integrated with AI assistance

More and more of these tools are starting to offer a chat interface and the same capabilities as the general AI tools like ChatGPT and Claude.

#### Code Explanation & Learning Assistants

These tools help you understand unfamiliar code, learn new technologies, and grasp complex programming concepts through interactive explanations tailored to your knowledge level. Many in this category are also being used in the background by new IDE plugins and code editors like Cursor.ai

*   Claude (claude.ai) - Excels at explaining complex concepts and reasoning through problems with nuanced understanding
*   ChatGPT (chat.openai.com) - Versatile assistant with strong coding knowledge across multiple languages and frameworks
*   Bard/Gemini (gemini.google.com) - Google’s AI with access to web information for up-to-date technical documentation

#### Prototyping Tools

These AI-powered tools can rapidly transform ideas into working prototypes, allowing you to visualize and test concepts quickly without extensive manual coding.

*   Bolt (bolt.new) - Creates interactive web apps from a text description, allowing rapid prototyping of ideas without coding
*   v0 (v0.dev) - Vercel’s tool for generating React components and entire UI layouts from text descriptions
*   Replit (replit.com) - Collaborative browser-based IDE with AI features for quick prototyping and experimentation
*   Lovable (lovable.ai) - Transforms verbal app concepts into functional prototypes with customizable design elements

### Legal & Security Considerations

When using AI tools for development, several important legal and security factors must be considered. Most organizations have established policies regarding which AI tools employees can use for company projects. Always adhere to these guidelines when working on professional assignments.

For personal projects or when evaluating AI tools, consider the following:

*   **Data Privacy:** Understand how the tool handles your data. Many AI services store your prompts and code snippets to improve their models. Review the privacy policy to determine if sensitive information might be retained or used for training purposes.
*   **Intellectual Property:** Be aware that code generated by AI tools may have complex licensing implications. Some tools use open-source code in their training data, which could affect the licensing requirements of your project.
*   **Code Attribution:** Consider whether the tool provides information about how generated code should be attributed, especially if it’s derived from copyrighted sources.
*   **Security Scanning:** Check if the tool offers security scanning capabilities to identify potential vulnerabilities in generated code. Some AI tools can suggest insecure patterns without warning.
*   **On-premise vs. Cloud:** Determine whether the tool processes your code locally or sends it to cloud servers. On-premise solutions offer greater privacy but may have less powerful capabilities.
*   **Terms of Service:** Review the terms of service carefully to understand any limitations or restrictions that might affect your projects.
*   **Export Controls:** Be aware that some AI tools may be subject to export control regulations, which could impact their use in certain countries or for certain applications.
*   **Cost Structure:** Understand the pricing model, especially for commercial use. Free tiers often come with significant limitations or may change their terms unexpectedly.

### Recommended Tools for This Course

We’ll be focusing on GitHub Copilot for code assistance and Claude for concept explanation and problem-solving, as these provide complementary capabilities that cover most development needs.
Most of the exercises in this course can be done with the free tiers of these products. However, if you do reach free usage limits, you can try another tool as well, and use them intermittently.

## Using AI for everyday work

In this module we are going to have a very practical look at how GenAI can help us with typical use cases we are faced with daily as software engineers.

We typically work on existing code, and sometimes it is difficult to make sense of the code, or find some edge case error condition. It might be that the code has no tests yet, or has complex algorithms. We might need help with developing UI components or deciding on different options to solve a problem.

Generative AI is surprisingly good at analysing code, and understanding industry standards for good quality code. This combination, combined with clear communication from our side, can literally get rid of hours of grunt work on our side. Not only that, if we do it right, we will learn in the process, and understand the reasoning for the responses from the AI models.

### Topics for this module

| Skill | Description |
|---|---|
| Using AI to comprehend existing codebases | Use AI to interpret existing codebases and complex functions. |
| Generating and Improving Documentation with AI | Leverage AI in crafting high-quality software documentation. |
| Using AI to debug errors | See how AI can help us trace and understand errors and how to fix it. |
| Using AI to help with testing | AI can help us create and enhance our tests. |
| Using AI to refactor and enhance code | Discover how AI assists in code refactoring and optimisation. |

## Using AI to comprehend existing codebases

As software developers we mostly work on existing project, and thus faced with existing codebases we need to understand in order to either fix something or add or change a feature.

AI can help us with this comprehension, from the code structure to complex algorithms, functions, and components.

We look at these categories of using AI to understand existing code:

1.  Knowing Where to Start
2.  Understanding Existing Code Functionality
3.  Deciphering Complex Functions and Algorithms

### 1. Knowing Where to Start

When facing an existing codebase, it’s easy to feel overwhelmed by the volume of files, unfamiliar patterns, and new technologies. This section demonstrates how AI can help developers create a mental map of the codebase and establish a starting point for exploration.

Some common challenges developers face when working with existing projects:

*   **Where’s the starting point?:** Difficulty identifying where the program execution begins
*   **Tool and dependency confusion:** Unfamiliarity with build tools, package managers, or frameworks
*   **Unclear project structure:** Not understanding how folders and files are organized
*   **Missing context:** Not knowing which parts of the code handle specific features
*   **Unfamiliar domain language:** Encountering business terminology and concepts with no explanation
*   **Connecting code to features:** Trouble mapping user-facing features to their implementations

AI tools can help overcome these hurdles by providing guidance and context. The prompts in this section will help you gain practical understanding that you can build upon using the more detailed prompts from previous sections.

#### Prompt 1: Understanding Project Structure and Technology Stack

**Prompt Template:**

```
I'm a junior developer who just joined this project. I've read the README but still need help understanding the project structure and technology stack.

Here's my current understanding of the project:
- It seems to be a [your best guess at what the application does]
- It appears to use [technologies/frameworks you've identified]
- The folder structure seems to follow [pattern you've observed]

Project structure:
[Paste concise directory structure - limit to top-level folders and key subfolders]

Key configuration files:
[Paste relevant sections from package.json/pom.xml/requirements.txt/Gemfile, docker files, etc.]

Could you:
1. Validate my understanding and correct any misconceptions
2. Identify additional key technologies, frameworks, and libraries used
3. Explain what each main folder likely contains and its purpose
4. Point out where the application entry points are located
5. Suggest 3-5 specific questions I should ask my team to deepen my understanding

I'm particularly confused about [mention specific areas of confusion, if any].

After your explanation, could you suggest a small exploration exercise I could do to verify my understanding of the project structure?
```

**Practical Application:**

*   Use when you understand the basic setup but need deeper insight into the project structure
*   Test your initial assumptions and correct any misconceptions early
*   Helps identify the technologies you might need to learn more about
*   Provides context on code organization to navigate the project more effectively
*   Gives you specific questions to ask your team that will demonstrate engagement

#### Prompt 2: Finding Feature Implementation Locations

**Prompt Template:**

```
I need to work on the [specific feature] in this codebase, but I'm not sure where the code for this feature lives.

My approach so far:
- I've searched for keywords like [terms you searched for]
- I looked in [directories you checked] which seemed relevant
- I think the feature might relate to [your guess about related components]

Project structure:
[Paste relevant directory structure]

Based on my search, these files might be relevant, but I'm not sure:
[Paste file names or search results that seem potentially related]

Can you help me:
1. Evaluate my search approach and suggest improvements
2. Identify which files and directories most likely contain the implementation for this feature
3. Suggest specific search terms or patterns that would be more effective
4. Explain what parts of the feature might be located in different areas of the codebase
5. Recommend a step-by-step investigation process to understand the complete feature flow

Also, what questions could I ask myself as I'm exploring the code to ensure I'm on the right track? What specific patterns should I look for to confirm I've found all the relevant parts?

After your guidance, could you give me a small challenge to test my understanding of how to navigate this feature's code?
```

**Practical Application:**

*   Helps you articulate your current approach and thinking process
*   Validates and improves your search strategy
*   Provides a systematic process for feature exploration rather than random searching
*   Teaches you to recognize patterns that connect related code
*   Gives you self-assessment questions to gauge your progress

#### Prompt 3: Understanding Domain Models and Business Concepts

**Prompt Template:**

```
I'd like you to act as a senior developer who deeply understands our codebase's domain model. I'm a junior developer trying to make sense of the business logic and domain concepts in this application.

Here's what I've found in the codebase:
[Paste relevant model/entity classes, database schemas, or data structures]

Based on this code, my current understanding is:
- The system seems to be modeling [your interpretation of what the system represents]
- I think [Entity A] and [Entity B] are related because [your reasoning]
- The [specific field or method] appears to represent [your guess at its business purpose]
- I'm confused about why [specific aspect you don't understand]

Could you, as a senior developer:
1. Validate my current understanding, correcting any misconceptions
2. Help me recognize the core domain concepts represented in this code
3. Explain the relationships between these entities in business terms, not just technical relationships
4. Clarify any domain-specific terminology or patterns I might be missing
5. Help me connect these models to actual user-facing features or business processes

Then, please ask me 3-5 questions that would test my understanding of this domain model. These should be questions that make me think about the business logic, not just the code syntax.

Finally, suggest a simple diagram I could sketch to visualize these relationships that would help solidify my understanding.
```

**Practical Application:**

*   Creates a learning dialogue that mimics pair programming with a senior developer
*   Forces you to articulate your current understanding, which helps identify gaps
*   Provides domain knowledge interpretation, not just technical explanation
*   Tests your understanding through targeted questions
*   Encourages visualization to reinforce mental models
*   Bridges the gap between code and business functionality

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Being Too Vague About Your Current Understanding

**Problem:** Not clearly articulating what you already know or think you know.

**Solution:**

*   Be specific about your current understanding, even if you think it might be wrong
*   Identify particular points of confusion rather than saying "I don’t understand"
*   Describe your reasoning process, not just your conclusions
*   Use diagrams or lists to organize your thoughts before asking for help

##### Pitfall 2: Focusing Too Much on Implementation Before Understanding Purpose

**Problem:** Getting lost in implementation details without understanding what the code is trying to accomplish.

**Solution:**

*   First seek to understand the "why" before the "how"
*   Ask about business purpose before diving into technical implementations
*   Connect code to user-facing features whenever possible
*   Build a glossary of domain terms to interpret the code correctly

##### Pitfall 3: Not Following Up on the AI’s Questions

**Problem:** Ignoring the interactive elements designed to test your understanding.

**Solution:**

*   Actually answer the questions the AI poses to test your understanding
*   Use these questions as prompts for self-study or team discussions
*   Create flashcards from key concepts the AI identifies
*   Revisit these questions after exploring the code further

##### Pitfall 4: Trying to Understand Everything at Once

**Problem:** Attempting to comprehend the entire codebase instead of focusing on relevant parts.

**Solution:**

*   Start with the specific feature or bug you’re working on
*   Expand understanding gradually in concentric circles from your starting point
*   Accept that complete understanding takes time
*   Keep a knowledge journal to document your growing understanding
*   Build context just-in-time rather than trying to learn everything upfront

**Exercise**

Do the activities in Exercise: Knowing where to start

### 2. Understanding Existing Code Functionality

Working with existing code can be overwhelming, especially figuring out how exactly a specific feature works. This section demonstrates how AI can help translate existing code into understandable concepts and logic. You will see that in this section we first focus on understanding, and not jumping directly into code changes.

Some common pains we have all experienced at some point are:

*   Feeling overwhelmed by large codebases with multiple interconnected components
*   Difficulty tracing program flow across different files, services, or modules
*   Encountering undocumented code with unclear intentions or business logic
*   Facing challenges with understanding code that has poor naming conventions or structure
*   Struggling to identify which parts of the codebase are responsible for specific features

Below we discuss various prompt scenarios you can use to address these pain points and grok a codebase.
Remember to update your personal prompt template library with the prompts below that gives value to you. These prompts are quite detailed, but remember that the better you communicate your context and understanding, the more valuable the AI response will be to you.

#### Prompt 1: Understand how a specific feature works

**Prompt Template:**

```
I'm trying to understand how [specific feature] works in our [language/framework] codebase.
This feature seems to handle [brief description of what you think it does].

Here are the key files that appear to be involved:
1. [filepath 1] - Seems to be [your guess about purpose]
2. [filepath 2] - Might be handling [your guess]
3. [filepath 3] - Contains references to [relevant terms]

Here are code snippets from parts I'm struggling to understand:

[First file snippet]
[Second file snippet]

Could you:
1. Explain in simple terms what this component actually does
2. Walk me through the execution flow when [specific trigger/action happens]
3. Clarify how these files interact with each other
4. Identify any external dependencies or services this component relies on
5. Explain any complex code blocks
6. Provide a mental model I can use to think about this component

I'm particularly confused about [specific aspect], so extra detail there would help.
Finally, suggest 3 small code changes I could make to validate my understanding. Do not give the me change, and instead give me the requirement.
```

**Practical Application:**

*   Understand how a feature is implemented so you can plan changes
*   Test your own understanding of the codebase
*   Improve your mental model of the various code components and features of the codebase

#### Prompt 2: Deepen understanding of a codebase

**Prompt Template:**

```
I'd like your help in deepening my understanding of a codebase by you acting as my senior development pair programmer.

First, I'll share my current understanding of the code I'm exploring. Please acknowledge what parts I've understood correctly, then guide me with thoughtful questions rather than direct explanations.

## My Current Understanding:

I'm exploring [describe the specific code functionality or files you're working with]. From what I can tell, it seems to [describe what you think this code does].

The main files involved appear to be:
- [list specific files you're looking at]

I think the code works like this:
[describe what you believe happens when this code runs]

What's still unclear to me is [mention specific parts that confuse you].

## What I'd like from you:

1. Acknowledge what parts of my understanding seem accurate
2. Ask me 3-5 thoughtful questions that will help me discover insights about:
   - What specific parts of the code actually do
   - How data moves through these functions
   - What happens in different scenarios (like error cases)
   - Why certain implementation choices were made

3. For some questions, ask me to share specific code snippets that would help answer the question
4. End with a practical question about how I might use or modify this code

Please don't give me direct explanations - help me discover the answers through guided questioning.
```

**Practical Application:**

*   Enhance your understanding of code based on your current understanding as starting point
*   Learn by simulating an interaction with a more experienced developer
*   Make use of guided questions to help you deepen understanding

#### Prompt 3: Mapping Data Flow and State Management

**Prompt Template:**

```
I need help understanding how data flows through our [language/framework] application, specifically for the [feature name] functionality.

Here's what I know so far:
- The feature starts at [entry point, e.g., API endpoint, user action]
- It seems to involve these components/files:
  1. [Component/file 1]
  2. [Component/file 2]
  3. [Component/file 3]

Here are key code snippets that show data handling:

[First snippet showing data input/initial state]

[Second snippet showing data transformation/processing]

[Third snippet showing where data is stored/output]

What I'm trying to understand:
1. What is the complete path data takes from input to output?
2. How and where is state managed throughout this process?
3. What transformations happen to the data at each step?
4. Where are potential points of failure in this data flow?
5. How does the application handle edge cases or errors?

I've noticed [specific data structure or state management approach] being used but I'm not sure why this approach was chosen over alternatives.

Could you help me create a clear mental model of:
1. The complete data flow diagram
2. Where and how state changes occur
3. How I might debug issues in this flow
4. What I should consider if I need to modify this data flow in the future

Please include any relevant descriptions, design patterns or principles that would help me understand the existing code decisions.
```

**Practical Application:**

*   Visualize and understand complex data transformations in an application
*   Gain clarity on state management approaches in different parts of the application
*   Better understand coding decisions around data handling
*   Prepare for making modifications to data flow without breaking existing functionality

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Providing Incomplete or Inaccurate Context

**Problem:** Sharing only fragments of code without sufficient context, or misrepresenting how code pieces connect.

**Solution:**

*   Always include file paths and relationships between components
*   Share complete functions rather than disconnected snippets
*   Include imports/dependencies to show connections

##### Pitfall 2: Asking Overly Broad Questions

**Problem:** Questions like "How does this entire codebase work?" are too vague to get useful responses.

**Solution:**

*   Focus on specific features, flows, or components
*   Break down complex systems into manageable chunks
*   Be clear about which aspect of the code is most confusing
*   Start with smaller, well-defined questions before asking about larger systems

##### Pitfall 3: Relying Solely on AI Without Verification

**Problem:** Accepting AI explanations without verifying against actual code behavior.

**Solution:**

*   Use AI insights as hypotheses to test with debugging or tracing
*   Verify explanations by adding logging or running tests
*   Cross-reference AI explanations with documentation or team knowledge
*   Use the suggested validation steps to confirm understanding

##### Pitfall 4: Missing the Learning Opportunity

**Problem:** Using AI to get quick answers without building personal understanding.

**Solution:**

*   Use the "pair programming" approach to develop your own insights
*   Take time to articulate your current understanding before seeking help
*   Create diagrams or notes based on AI responses to reinforce learning
*   Explain what you’ve learned to someone else to solidify understanding

**Exercise**

Do the activities in Exercise: Codebase Exploration Challenge

### 3. Deciphering Complex Functions and Algorithms

Even experienced developers sometimes encounter code that’s difficult to understand at first glance. Complex algorithms or functions with intricate logic can be particularly challenging. This section demonstrates how AI can help translate complex code into understandable concepts and logic.

Some common pains we have all experienced at some point are:

*   **Dense algorithms:** Functions with advanced mathematical or computational concepts
*   **Cryptic variable names:** Poor naming practices that obscure intent
*   **Nested logic:** Deeply nested conditionals or loops that are difficult to trace
*   **Optimized code:** Code optimized for performance at the expense of readability
*   **Domain-specific algorithms:** Specialized code implementing industry-specific concepts
*   **Lack of comments:** Functions without explanatory comments or documentation

Again, GenAI tools can come to the rescue and help us decipher this kind of code.
Remember to update your personal prompt template library with the prompts below that gives value to you.

#### Prompt 1: Understand an Algorithm Through Step-by-Step Analysis

**Prompt Template:**

```
I'm trying to understand this algorithm/function in our codebase:

[Paste complex function here]

Based on my current understanding:
1. I think this function is trying to [your best guess at purpose]
2. The inputs seem to be [parameters you can identify] and it returns [what you think it returns]
3. I'm particularly confused about [specific part that's unclear]

Could you help me understand this by:
1. Breaking down the algorithm into key sections with their purposes
2. Walking through a simple example execution with concrete values
3. Explaining the core technique/pattern being used here
4. Highlighting any non-obvious optimizations or tricks

After your explanation, could you ask me 2-3 targeted questions that would test my understanding of this algorithm's:
- Underlying principles
- Edge cases
- Performance characteristics

This will help me make sure I've really grasped how it works.
```

**Practical Application:**

*   Gain a deeper understanding of complex algorithms through concrete examples
*   Test your comprehension by answering the follow-up questions
*   Build a mental model of how sophisticated code operates
*   Learn to identify common algorithmic patterns and techniques

#### Prompt 2: Decipher Code with Unclear Intent or Poor Documentation

**Prompt Template:**

```
I need help understanding the intent behind this poorly documented/named code:

[Paste code with unclear naming or sparse comments]

Here's what I've figured out so far:
- This code appears in [describe where it's used in the codebase]
- It seems to be called when [context of function calls]
- I can see it's manipulating [data structures or state it affects]
- The variable names suggest it might be [your theory about purpose]

Please help me by:
1. Suggesting better names for functions/variables that reflect their likely purpose
2. Identifying the programming patterns or techniques being used
3. Creating pseudocode that reveals the underlying intent
4. Drafting documentation comments that would make this code understandable

Then, please share 3-4 questions I should ask myself to validate whether my new understanding is correct. These questions should help me check my understanding against the rest of the codebase and application behavior.

Finally, what are some small, safe experiments I could run to verify how this code actually behaves without disrupting the system?
```

**Practical Application:**

*   Turn opaque code into understandable logic
*   Practice recognizing patterns despite poor naming
*   Develop techniques for documenting unclear code
*   Learn how to safely test your understanding of unfamiliar code

#### Prompt 3: Understand Complex Logic and Control Flow

**Prompt Template:**

```
I'm trying to untangle the logic in this complex function with nested conditionals and loops:

[Paste complex code with nested logic]

My current understanding of the control flow is:
[Describe your best attempt at tracing the logic path]

I'm particularly unsure about:
1. [Specific conditional or loop that's confusing]
2. [Another point of confusion]
3. [Any variables that change in unclear ways]

Could you help me by:
1. Creating a visual representation of the control flow (described in text)
2. Refactoring this code into more understandable segments without changing functionality
3. Explaining the key decision points and their interdependencies
4. Identifying any potential logic bugs or edge cases that might not be handled correctly

Then, guide me through an exercise where I can test my understanding:
- Provide 2-3 specific input scenarios
- Ask me to predict what would happen in each case
- Explain what actually happens and why

This will help me build an accurate mental model of this complex logic.
```

**Practical Application:**

*   Transform tangled logic into clear decision paths
*   Learn refactoring techniques for complicated functions
*   Practice tracing execution flow through complex conditions
*   Develop skills for detecting potential logic errors

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Providing Insufficient Context About the Codebase

**Problem:** Without broader context, AI may miss important relationships and constraints.

**Solution:**

*   Include information about the surrounding code and project domain
*   Mention what systems or features this code interacts with
*   Describe any performance or compatibility requirements
*   Explain relevant business rules or domain concepts

##### Pitfall 2: Missing Important Algorithmic Implications

**Problem:** Some algorithms have non-obvious characteristics related to performance, memory usage, or numerical stability.

**Solution:**

*   Explicitly ask about complexity (Big O notation)
*   Request information about memory consumption patterns
*   Ask about potential floating-point issues or integer overflow conditions
*   Inquire about thread safety or concurrency concerns
*   Question assumptions the algorithm makes about its inputs

##### Pitfall 3: Focusing Too Much on Implementation Details Rather Than Concepts

**Problem:** Getting lost in the specifics without understanding the higher-level pattern.

**Solution:**

*   Ask the AI to relate the code to standard algorithms or design patterns
*   Request analogies to more familiar concepts
*   Have the AI explain the "why" behind design choices, not just the "how"
*   Seek explanations at multiple levels of abstraction
*   Ask how a junior developer would implement the same functionality in a simpler way

**Exercise**

Do the activities in Exercise: Algorithm Deconstruction Challenge

Please complete Assessment: Using AI to comprehend existing codebases.

### A Principle Discovered: Communicate Clearly

As we go on with discovering how AI can amplify us as software engineers, we will identify a few key principles to help guide your future adventures with AI.

If you reflect on the various prompts laid out in this chapter, what similarity do you observe?

In every prompt we showed, we communicated clearly and to the point, and provided a lot of context.

Talking to Generative AI models are just like talking to a colleague in your team, or a technical mentor or some senior developer you have access to; someone who will need more context as they are not immersed in the code you are working on in the same way you are.

You will get better feedback or advise if you ask specific question, and also provide enough context for them to be able to determine how to guide you. Part of good communication is also test your own understanding and answer questions from the other party. All of this forms part of communicating clearly with AI.

The various principles are revisited in Principles when using AI

## Generating and Improving Documentation with AI

Documentation is often called "a love letter to your future self." Good documentation helps new team members get up to speed, assists users in understanding your software, and even helps you remember why you made certain decisions months later. Despite its importance, documentation is frequently overlooked or rushed due to time constraints and competing priorities.

Artificial intelligence can transform documentation from a tedious afterthought into an integrated part of the development process. AI can help generate initial documentation drafts, improve existing documentation, ensure consistency, and explain complex concepts clearly—all while saving valuable development time.

We face several challenges when it comes to documentation:

*   **Documentation debt:** Documentation is often outdated or incomplete as code evolves
*   **Time constraints:** Developers prioritize working code over documentation
*   **Inconsistent style and quality:** Documentation varies widely across different parts of a project
*   **Technical communication barriers:** Difficulty explaining complex concepts clearly
*   **Audience considerations:** Struggles adapting documentation for different audiences (users, developers, admins)
*   **Maintenance burden:** Keeping documentation current with code changes
*   **Knowledge gaps:** The person documenting might not fully understand all aspects of the code
*   **Language and clarity issues:** We may not be native speakers or skilled communicators

Let’s explore how AI can help overcome these challenges through three common documentation scenarios:

1.  Code Documentation Generation
2.  API Documentation
3.  User Guides and README Files

### 1. Code Documentation Generation

One of the most immediate ways to use AI is to generate documentation for your code. This includes function and method documentation, class overviews, function comments, and inline comments explaining complex logic.

#### Prompt 1: Comprehensive Function Documentation

**Prompt Template:**

```
Please create comprehensive code comments for this function following [JSDoc/Python docstring/etc.] conventions:

```[language]
[Paste function code here]
```

The documentation should include:
1. A clear description of what the function does
2. All parameters with types and descriptions
3. Return value with type and description
4. Any exceptions or errors that might be thrown
5. Example usage
6. Any important notes or edge cases developers should be aware of
```

**Practical Application:**

*   Generate complete documentation for new functions
*   Backfill missing documentation for existing code
*   Ensure documentation follows team conventions
*   Make code more maintainable and easier to use

#### Prompt 2: Intent and Logic Explanation

**Prompt Template:**

```
I need help documenting the intent and logic behind this code. Please:

```[language]
[Paste code here]
```

1. Explain what this code is trying to accomplish at a high level
2. Break down the logic step-by-step
3. Identify any assumptions or edge cases in the implementation
4. Suggest inline comments for complex parts
5. Note any potential improvements while maintaining the original functionality
```

**Practical Application:**

*   Document complex algorithms or business logic
*   Help team members understand code purpose and implementation
*   Document edge cases and assumptions
*   Identify areas for improvement during documentation

#### Prompt 3: Documentation Style Conversion

**Prompt Template:**

```
Please convert this documentation to [target style] format:

Original documentation:
```
[Paste existing documentation]
```

Target style: [JSDoc/Google style/NumPy style/etc.]
Language: [JavaScript/Python/etc.]

Please ensure all information from the original is preserved while following the conventions of the target style.
```

**Practical Application:**

*   Standardize documentation across a codebase
*   Update legacy documentation to current standards
*   Ensure consistent style in team projects
*   Make documentation more accessible to developers familiar with standard formats

#### Common Pitfalls and Solutions

**Pitfall:** Generic or Unhelpful Documentation
**Solution:** Specify exactly what information you need in the documentation and ask the AI to include concrete examples, edge cases, and practical usage scenarios.

**Pitfall:** Missing Parameter or Return Value Explanations
**Solution:** Explicitly ask for documentation of all parameters, return values, and exceptions, including types and descriptions.

**Pitfall:** Documentation That Doesn’t Match Code Behavior
**Solution:** Review AI-generated documentation carefully against the actual code behavior, and iterate with the AI to correct any discrepancies.

**Exercise**

Do the activities in Exercise: Code Documentation

### 2. API Documentation

Effective API documentation is crucial for adoption and proper use of your services. AI can help create clear, consistent, and comprehensive API documentation with examples and error scenarios.

#### Prompt 1: Endpoint Documentation Generation

**Prompt Template:**

```
Please create comprehensive documentation for this API endpoint:

Endpoint: [HTTP method] [endpoint path]

Implementation code:
```[language]
[Paste endpoint implementation code]
```

Please include:
1. A clear description of the endpoint's purpose
2. Request parameters (path, query, body) with types and descriptions
3. Response format with status codes and examples
4. Authentication requirements
5. Potential error responses with codes and messages
6. At least 2 example requests with their responses
7. Any rate limiting or special considerations
```

**Practical Application:**

*   Generate consistent documentation for all API endpoints
*   Ensure documentation covers all necessary aspects
*   Provide clear examples for API consumers
*   Document error scenarios and edge cases

#### Prompt 2: API Reference Conversion

**Prompt Template:**

```
Please convert this API information into a structured [Swagger/OpenAPI/API Blueprint/Markdown] document:

API details:
[Paste API information, can be informal description]

I need the documentation to include:
1. Endpoint definitions with paths and methods
2. Request parameters and body schemas
3. Response schemas with status codes
4. Example requests and responses
5. Error handling information

Format the output as a complete, valid [Swagger/OpenAPI/etc.] document.
```

**Practical Application:**

*   Transform informal API descriptions into structured formats
*   Create standardized API documentation from code or descriptions
*   Generate documentation that can be used with API documentation tools
*   Ensure consistent structure across all API endpoints

#### Prompt 3: API Usage Guide Creation

**Prompt Template:**

```
Please create a developer guide for using our API. The guide should explain how to:

1. Get started (authentication, base URL, general concepts)
2. Perform common operations using the following endpoints:
   [List key endpoints with brief descriptions]
3. Handle errors and troubleshoot common issues
4. Follow best practices when integrating with our API

API information:
[Paste API details or link to documentation]

Target audience: [Describe experience level and background of users]
Tone: [Friendly/formal/technical/etc.]
```

**Practical Application:**

*   Create user-friendly guides for API consumption
*   Help developers understand the API conceptually
*   Document common usage patterns and workflows
*   Provide troubleshooting guidance

#### Common Pitfalls and Solutions

**Pitfall:** Incomplete Endpoint Descriptions
**Solution:** Use a structured template that requires all necessary information and review documentation to ensure all parameters, responses, and scenarios are covered.

**Pitfall:** Missing Error Scenarios
**Solution:** Explicitly ask the AI to document all possible error responses with status codes, messages, and the conditions that trigger them.

**Pitfall:** Examples That Don’t Match Actual API Behavior
**Solution:** Provide real API response examples if available, and verify AI-generated examples against actual API behavior.

**Exercise**

Do the activities in Exercise: API Documentation

### 3. User Guides and README Files

Project documentation like README files, installation guides, and user manuals is essential for helping others understand and use your software.AI can help create clear, structured, and comprehensive documentation that addresses different user needs.

#### Prompt 1: Project README Generation

**Prompt Template:**

```
Please create a comprehensive README.md file for my project based on the following information:

Project name: [Name]
Description: [Brief description]
Key features:
- [Feature 1]
- [Feature 2]
- [etc.]

Technologies used: [List technologies, frameworks, languages]
Installation requirements: [List prerequisites]

The README should include:
1. Clear project title and description
2. Installation instructions
3. Basic usage examples
4. Features overview
5. Configuration options
6. Troubleshooting section
7. Contributing guidelines
8. License information

Code structure overview:
[Briefly describe main directories/files or paste project structure]
```

**Practical Application:**

*   Create standardized README files for all projects
*   Ensure documentation covers essential information
*   Make projects more accessible to new users and contributors
*   Present project information in a clear, structured format

#### Prompt 2: Step-by-Step Guide Creation

**Prompt Template:**

```
Please create a step-by-step guide for how to [specific task/process] in our application.

The guide should:
1. Start with any prerequisites or required access
2. Break down the process into clear, numbered steps
3. Include screenshots or code blocks where indicated [Placeholder]
4. Highlight potential issues or common mistakes
5. End with a troubleshooting section for common problems

Process overview:
[Describe the task or provide notes on what the user needs to accomplish]

User experience level: [Beginner/Intermediate/Advanced]
```

**Practical Application:**

*   Create user-friendly guides for complex procedures
*   Document installation or configuration processes
*   Help users troubleshoot common issues
*   Create onboarding materials for new team members

#### Prompt 3: FAQ Document Generation

**Prompt Template:**

```
Please help me create a comprehensive FAQ document for [project/feature/product].

Basic information:
- [Brief description of what we're creating FAQs for]
- [Target audience]
- [Any specific areas to focus on]

Please include:
1. Questions about getting started
2. Questions about common features and functionality
3. Questions about troubleshooting common issues
4. Questions about [specific area of interest]

For each question, provide a clear, concise answer that would be helpful to our users.

Known issues or common user questions:
[List any specific questions or issues to include]
```

**Practical Application:**

*   Answer common user questions proactively
*   Create help center content
*   Reduce support requests
*   Improve user experience with self-service information

#### Common Pitfalls and Solutions

**Pitfall:** Assuming Too Much Prior Knowledge
**Solution:** Specify the target audience’s expertise level in your prompt and ask the AI to include prerequisites and basic explanations where needed.

**Pitfall:** Missing Critical Setup Information
**Solution:** Provide comprehensive project information and explicitly request installation prerequisites, configuration details, and troubleshooting steps.

**Pitfall:** Documentation That’s Too Generic
**Solution:** Give specific project details and examples in your prompt to get customized documentation rather than generic templates.

**Exercise**

Do the activities in Exercise: README and User Guide Documentation

## Using AI to debug errors

The ability to debug code, whether it is a running application, backend service, automated build pipeline or some simple script, is a very important skill. However, with the exponential growth in available technology solutions, including platforms, libraries, frameworks, components, as well as the rate of change of each, makes it more and more difficult to stay on top of each part of a moving puzzle.

We already saw AI can help us with comprehending existing codebases. Even more powerfully: it can also help us figure out what is going wrong. In this chapter we are going to use a number of prompting strategies for each of the debugging related topics below:

1.  Tracing Error Messages and Stack Traces
2.  Identifying Performance Bottlenecks
3.  Limitations and Verification

### 1. Tracing Error Messages and Stack Traces

Error messages and stack traces can be cryptic and overwhelming, especially for junior developers. What looks like an indecipherable wall of text often contains valuable clues about what’s wrong with your code. This section demonstrates how AI can help interpret these messages, identify root causes, and suggest solutions.

Some of the problems we typically face are:

*   **Cryptic language:** Error messages that use technical jargon or abbreviated terms
*   **Long stack traces:** Extensive traces that mix framework code with application code
*   **Misleading errors:** Error messages that point to symptoms rather than causes
*   **Nested dependencies:** Issues originating in third-party libraries or dependencies
*   **Environment-specific errors:** Problems that only appear in certain environments
*   **Unfamiliar frameworks:** Error patterns specific to frameworks you’re learning
*   **Runtime vs. compile-time errors:** Different types of errors requiring different approaches

Below we discuss various prompt scenarios you can use to address these pain points and make debugging more efficient.
Remember to update your personal prompt template library with the prompts below that give value to you. These prompts are quite detailed, but remember that the better you communicate your context and debugging information, the more valuable the AI response will be to you.

#### Prompt 1: Error Message Translation

**Prompt Template:**

```
I need help understanding this error message from my [language/framework] application.

Here's the complete error message and stack trace:

[paste full error message and stack trace or log file]

My application context:
- This happened when I was trying to [action that triggered the error]
- The application is a [brief description of application type]
- I'm using [language version] and [framework version]

Could you:
1. Explain what this error means in simple, non-technical terms
2. Identify the most relevant lines in the stack trace (which ones actually point to my code)
3. List 2-3 of the most likely causes based on this type of error
4. Suggest what specific information I should look for in my code
5. Provide a step-by-step debugging approach I could follow

I'm particularly unfamiliar with [specific technology or concept] mentioned in the error, so extra explanation there would help.
```

**Practical Application:**

*   Use when encountering errors with unfamiliar terminology or concepts
*   Get a plain-language interpretation of technical error messages
*   Learn which parts of a stack trace are most relevant to your application code
*   Build a mental model for interpreting similar errors in the future
*   Create a systematic debugging plan rather than random trial-and-error fixes

#### Prompt 2: Root Cause Analysis

**Prompt Template:**

```
I need help diagnosing the root cause of an error in my [language/framework] application.

Here's the error and stack trace:

[paste complete error and stack trace or log file]

Here are the relevant code snippets from files mentioned in the stack trace:

File: [filename 1]
[code snippet from file 1]

File: [filename 2]
[code snippet from file 2]

Additional context:
- This error occurs when [specific scenario or user action]
- It happens [consistently/intermittently]
- I've already tried [mention any debugging steps already taken]
- These files interact by [brief explanation of how these components connect]

Could you please:
1. Identify the likely root cause (not just the symptoms)
2. Explain the chain of events leading to this error
3. Suggest 2-3 specific code changes that might fix the issue
4. Recommend tests I could write to verify the fix
5. Explain any patterns or anti-patterns you notice that might cause similar problems elsewhere
6. Suggest debugging tools or techniques specific to this type of error

I'm most confused about [specific aspect of the error or code], so detailed explanation there would be helpful.
```

**Practical Application:**

*   Use when you have an error message and relevant code but don’t understand the connection
*   Get beyond surface-level fixes to understand fundamental issues
*   Learn patterns that cause similar errors for future prevention
*   Develop a deeper understanding of code interactions and failure points
*   Build more robust testing strategies based on identified vulnerabilities

#### Prompt 3: Dependency and Version Tracing

**Prompt Template:**

```
I'm debugging an error that appears to be related to dependencies in my [language/framework] project.

Here's the error message:

[paste error message and relevant parts of stack trace of log file]

My project's environment:
- Operating System: [OS name and version]
- Language: [language and version]
- Framework: [framework and version]
- Package Manager: [npm/yarn/pip/etc. and version]

Key dependencies from my package file:
[package.json/requirements.txt/etc. snippet showing dependencies and versions]

Recent changes:
- Recently [updated/installed/removed] these packages: [list of recent dependency changes]
- Last working version was: [previous working state if known]
- The error started after [specific change or update if known]

Could you:
1. Identify if this is a known issue with any of these dependencies
2. Detect any version conflicts or compatibility issues
3. Explain what's happening at the dependency level
4. Suggest specific version combinations that would resolve the issue
5. Recommend a strategy for updating dependencies without breaking changes
6. Provide commands I should run to fix or diagnose further

I've searched for solutions and found [mention any resources or solutions already discovered], but they didn't resolve my issue because [reason previous solutions didn't work].
```

**Practical Application:**

*   Troubleshoot issues stemming from package incompatibilities or version conflicts
*   Understand dependency chains and how they affect application functionality
*   Develop a strategy for managing dependencies and versions over time
*   Learn best practices for dependency updates and maintenance
*   Resolve "it works on my machine" problems related to environment differences

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Providing Incomplete Error Information

**Problem:** Sharing only a fragment of an error message or stack trace, making it impossible to see the full context.

**Solution:**

*   Always include the complete error message and stack trace
*   Highlight the line where your application code is referenced
*   Include timestamps if they appear in the logs
*   Show surrounding log entries that might give context
*   Don’t edit or summarize the error messages

##### Pitfall 2: Failing to Share Relevant Code

**Problem:** Sharing the error but not the code that generated it, making diagnosis much harder.

**Solution:**

*   Include the function or method where the error occurs
*   Share the full file if it’s reasonably sized, or the relevant section with 10+ lines before and after the error line
*   Include related files that are referenced in the stack trace
*   Share initialization code that sets up the context
*   Include import/require statements to show dependencies

##### Pitfall 3: Missing Environmental Context

**Problem:** Not providing information about your development environment, making it hard to identify environment-specific issues.

**Solution:**

*   Always specify operating system, language version, and framework versions
*   Include database versions if database-related errors occur
*   Share browser information for frontend errors
*   Mention if the error occurs in development, testing, or production environments
*   Specify if it’s a local-only or affects all environments

##### Pitfall 4: Premature Fix Focus

**Problem:** Asking directly for a fix without seeking understanding, leading to shallow solutions that don’t address root causes.

**Solution:**

*   First ask for an explanation of what the error means
*   Request information about potential causes before solutions
*   Ask about patterns that might be causing the issue
*   Seek to understand the "why" behind a proposed solution
*   Focus on learning from the error to prevent future occurrences

##### Pitfall 5: Ignoring Error Patterns

**Problem:** Treating each error as isolated, missing opportunities to improve code quality broadly.

**Solution:**

*   Ask if this error type indicates a broader pattern in your code
*   Request explanations of principles or practices that could prevent this class of errors
*   Look for similar patterns in other parts of your codebase
*   Ask for automated check suggestions that could catch similar issues
*   Seek to understand the conceptual misunderstanding that led to the error

**Exercises**

*   Do the activities in Exercise: Error Diagnosis Challenge

### 2. Identifying Performance Bottlenecks

Performance issues can be subtle and difficult to diagnose. Slow-running applications might frustrate users, but the causes aren’t always obvious. This section demonstrates how AI can help identify performance bottlenecks, analyze their root causes, and suggest optimizations while helping you learn the underlying principles.

Some of the problems we typically face with performance issues:

*   **Slow-running loops:** Code that takes longer than expected to process collections or datasets
*   **Memory consumption:** Applications that use too much RAM and may crash
*   **Slow database queries:** Database operations that take too long to return results
*   **API response delays:** External API calls that block your application
*   **Page load issues:** Web pages that take too long to become interactive
*   **Inefficient algorithms:** Using approaches that don’t scale well with larger inputs
*   **Resource leaks:** Resources like database connections or file handles not being properly released

Below we discuss various prompt scenarios you can use to address these pain points and make your applications faster and more efficient.
Remember to update your personal prompt template library with the prompts below that give value to you. These prompts are quite detailed, but remember that the better you communicate your context and performance information, the more valuable the AI response will be to you.

#### Prompt 1: Slow Code Analysis

**Prompt Template:**

```
I have a piece of code that's running slowly. I'd like to understand why and how to improve it.

Here's the slow-performing code:

[paste your code here]

Context about the issue:
- What this code is supposed to do: [brief explanation of purpose]
- Typical input size/data: [describe the data size, like "processing 10,000 records"]
- Current performance: [describe how slow it is, like "takes about 30 seconds to run"]
- Environment: [language version, framework, hardware limitations if relevant]

Could you please:
1. Explain in simple terms why this code might be slow
2. Identify the specific operations or patterns that are likely causing the slowdown
3. Suggest 2-3 specific improvements I could make
4. Explain the performance concepts I should learn to avoid similar issues in the future
5. If there are any tools or techniques I could use to measure the actual bottlenecks, please suggest them

I'm particularly interested in learning the underlying performance concepts, not just getting a quick fix.
```

**Practical Application:**

*   Use when you have code that’s taking longer than expected to run
*   Identify inefficient patterns in algorithms and data structures
*   Learn performance principles as you fix specific issues
*   Develop a mental model for writing more efficient code in the future
*   Discover appropriate tools for measuring and monitoring performance

#### Prompt 2: Memory Usage Optimization

**Prompt Template:**

```
My application is using too much memory and sometimes crashes with out-of-memory errors. I'd like to understand why and how to fix it.

Here's the code that I suspect is causing memory issues:

[paste your code here]

Additional context:
- Application type: [web app, data processing script, etc.]
- When the issue occurs: [e.g., "after processing about 1,000 images" or "when multiple users are active"]
- Error message (if any): [paste any error messages]
- Memory limit in my environment: [e.g., "8GB RAM on my development machine"]
- Language and runtime: [e.g., "Python 3.9, Node.js 16, etc."]

Could you please:
1. Explain in simple terms what might be causing the high memory usage
2. Identify specific memory-intensive operations or potential memory leaks
3. Suggest 2-3 practical ways to reduce memory consumption
4. Recommend any tools I could use to profile memory usage
5. Explain the memory management concepts I should understand for my language/environment

I want to both fix this issue and learn how to write more memory-efficient code in the future.
```

**Practical Application:**

*   Use when experiencing out-of-memory errors or high memory usage
*   Identify memory leaks and inefficient memory patterns
*   Learn about memory management principles in your programming language
*   Discover tools for memory profiling and monitoring
*   Develop strategies for handling larger datasets without memory issues

#### Prompt 3: Slow Database Query Analysis

**Prompt Template:**

```
I have a database query that's running very slowly. I'd like to understand why and how to optimize it.

Here's the slow query:

[paste your query here]

Database context:
- Database type: [MySQL, PostgreSQL, MongoDB, etc.]
- Table sizes: [approximate number of rows in relevant tables]
- Table structure: [key columns and their data types]
- Existing indexes (if known): [any indexes you're aware of]
- When the slowness occurs: [all the time, or only with certain parameters?]
- Approximate execution time: [how long the query takes to run]

Could you please:
1. Explain in simple terms why this query might be slow
2. Identify specific parts of the query that are likely causing performance issues
3. Suggest improvements to make the query faster (both query rewrites and potential indexes)
4. Explain the database concepts I should learn to write better queries
5. Suggest how I could measure the query performance before and after changes

I'm a junior developer, so explanations about the underlying database concepts would be very helpful.
```

**Practical Application:**

*   Use when database queries are taking too long to execute
*   Learn about query optimization and indexing strategies
*   Understand how database query planners work
*   Discover tools for measuring query performance
*   Develop a mental model for efficient data access patterns

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Focusing on Optimization Without Measurement

**Problem:** Attempting to optimize code based on assumptions rather than measuring actual performance bottlenecks.

**Solution:**

*   Always gather performance metrics before and after changes
*   Ask about simple profiling tools appropriate for your language
*   Use logging to time specific operations
*   Focus on measurable improvements rather than perceived optimizations
*   Learn to use the performance tools built into your development environment

##### Pitfall 2: Optimizing the Wrong Things

**Problem:** Spending time optimizing code that isn’t actually causing the performance issue.

**Solution:**

*   Start with high-level profiling to identify the actual bottlenecks
*   Focus on the "hot paths" in your code that execute most frequently
*   Follow the 80/20 rule - often 80% of performance issues come from 20% of the code
*   Ask about "low-hanging fruit" optimizations that give the most benefit
*   Learn to recognize patterns that typically cause performance issues

##### Pitfall 3: Making Code Less Readable for Minor Performance Gains

**Problem:** Sacrificing code clarity and maintainability for small performance improvements.

**Solution:**

*   Balance readability with performance - maintainable code is usually more important
*   Ask about optimizations that don’t reduce code readability
*   Focus on algorithmic improvements rather than micro-optimizations
*   Document any non-obvious optimizations with comments
*   Learn when performance truly matters vs. when simplicity is more important

##### Pitfall 4: Not Understanding the Root Cause

**Problem:** Applying fixes without understanding why the performance issue occurs, leading to similar problems in the future.

**Solution:**

*   Ask for explanations of underlying concepts, not just fixes
*   Use performance issues as learning opportunities
*   Seek to understand performance patterns specific to your language or framework
*   Build a mental model of how your code interacts with hardware, memory, and other resources
*   Focus on learning transferable performance principles

**Exercise**

Do the activities in Exercise: Performance Optimization Challenge

### 3. Limitations and Verification

AI tools can dramatically improve debugging and code comprehension, but they’re not infallible. We must develop a critical mindset when using AI, understanding when to trust suggestions and when to verify them. This section demonstrates how to effectively evaluate AI-provided solutions, recognize common pitfalls, and implement verification strategies to ensure code quality and correctness.

Some of the challenges you might face when using AI for debugging include:

*   **Hallucinated solutions:** AI suggesting plausible-looking but incorrect fixes
*   **Outdated knowledge:** AI providing solutions based on obsolete libraries or practices
*   **Context misunderstanding:** AI missing crucial details about the problem domain
*   **Overconfidence in AI:** Taking all AI suggestions without verification
*   **Misinterpreted requirements:** AI solving a different problem than intended
*   **Framework-specific subtleties:** AI missing nuances in framework-specific code
*   **Security implications:** Potentially unsafe code suggestions
*   **Dependency confusion:** Incorrect assumptions about available libraries or versions

Below we discuss various prompt approaches you can use to overcome these limitations and develop critical thinking skills while working with AI tools.
Remember to update your personal prompt template library with the prompts below that give value to you. These prompts are designed to help you develop a verification mindset and learn from the AI’s suggestions rather than simply implementing them blindly.

#### Prompt 1: Collaborative Solution Verification

**Prompt Template:**

```
I'd like to verify a solution you've suggested before implementing it. Let me share both the solution and my current understanding of how to test it.

The solution you provided:
[Paste AI's suggested code or explanation]

My understanding of this solution:
- What I think it does: [Your explanation of how the solution works]
- How I think it fixes the original problem: [Your understanding of why it addresses the issue]

My ideas for testing this solution:
- Test cases I'm considering: [List 2-3 test cases you've thought of]
- Edge cases I'm concerned about: [Any edge cases you can think of]
- Parts I'm unsure how to test: [Mention any aspects you're not sure how to verify]

Could you please:
1. Confirm if my understanding is accurate or correct any misconceptions
2. Evaluate my proposed test cases and suggest improvements
3. Recommend additional edge cases I might have missed
4. Provide a simple verification plan that would help ensure this solution works properly
5. Highlight any assumptions in the solution that might not be obvious to me

My environment/constraints:
[Describe relevant details about your system, versions, etc.]

I want to learn how to properly verify solutions, not just implement them blindly.
```

**Practical Application:**

*   Use to develop your understanding of a solution before implementing it
*   Practice identifying test cases and edge cases (a crucial developer skill)
*   Get feedback on your verification approach and learn better testing strategies
*   Build the habit of thinking critically about solutions before implementing them
*   Learn to identify hidden assumptions in code that might cause problems later

#### Prompt 2: Learning Through Alternative Approaches

**Prompt Template:**

```
You suggested this approach to solve my problem:
[Paste AI's suggested solution]

I'd like to explore alternative approaches to deepen my understanding. Here are my thoughts:

My understanding of the current solution:
- How it works: [Your explanation of the suggested approach]
- Pros: [What you think are advantages of this solution]
- Cons: [Any disadvantages or concerns you see]

Alternative ideas I'm considering:
- Idea 1: [Your own alternative approach if you have one]
- Idea 2: [Another approach if you have one, or just write "I don't have other ideas yet"]

Could you please:
1. Let me know if my understanding of the original solution is accurate
2. Provide 2-3 different approaches to solve the same problem
3. Compare all approaches (including mine if applicable) in terms of:
   - Performance considerations
   - Code readability and maintainability
   - Scalability for future extensions
   - Typical situations where each approach shines
4. Explain the principles or patterns behind each approach so I can learn when to apply them in the future

I'm not just looking for the "best" solution, but to understand the trade-offs and reasoning behind different approaches.
```

**Practical Application:**

*   Expand your problem-solving toolkit by learning multiple approaches
*   Develop critical thinking about solution trade-offs
*   Practice articulating your understanding of solutions
*   Learn design patterns and principles through practical examples
*   Build the habit of considering alternatives rather than implementing the first solution

#### Prompt 3: Developing a Critical Eye

**Prompt Template:**

```
I want to develop my critical thinking skills by analyzing a solution together. Let's examine this solution you provided:

[Paste AI's suggested solution]

My initial assessment:
- Strengths I see: [What you think is good about the solution]
- Concerns I have: [Any aspects you're unsure about]
- Questions that came to mind: [1-2 specific questions you have]

Could we collaborate on a critical review where:
1. You confirm or correct my initial assessment
2. We identify potential weaknesses in this solution that I might have missed
3. We consider what assumptions this code makes about:
   - The environment it runs in
   - The input data
   - Error handling expectations
   - Performance requirements
4. We discuss how maintainable this solution would be if:
   - Requirements change slightly in the future
   - The codebase scales significantly
   - Another developer needs to modify it without context
5. You suggest improvements that would address the biggest concerns

I'm trying to develop the skill of critically evaluating solutions before implementing them. Explaining your thought process would help me learn this skill better.
```

**Practical Application:**

*   Practice critically analyzing solutions (a senior developer skill)
*   Learn to identify hidden assumptions and potential failure points
*   Understand how solutions might behave under changing conditions
*   Develop a maintainability mindset that considers future developers
*   Build the habit of improvement rather than just implementation

#### Common Pitfalls When Applying These Prompts

##### Pitfall 1: Incomplete Context About Your Environment

**Problem:** Not providing enough details about your specific environment, leading to verification plans that won’t work in your situation.

**Solution:**

*   Always mention your specific language version, framework version, and constraints
*   Share information about your deployment environment if relevant
*   Describe any company-specific standards or patterns that solutions must follow
*   Mention resource limitations that might affect the solution’s viability
*   Be explicit about performance requirements or scale considerations

##### Pitfall 2: Focusing Only on Happy Path Testing

**Problem:** Only verifying that solutions work under ideal conditions, missing edge cases that could cause failures in production.

**Solution:**

*   Always consider empty, null, or invalid inputs in your test plans
*   Think about boundary conditions (first item, last item, empty collection)
*   Consider resource limitations (low memory, slow network, etc.)
*   Test error handling paths, not just successful execution
*   Consider concurrency or race conditions if applicable
*   Ask specifically about security implications for any user-facing code

##### Pitfall 3: Implementing Solutions Beyond Your Understanding

**Problem:** Copying and using AI-generated code that contains concepts or patterns you don’t fully understand.

**Solution:**

*   Always ask for explanations of unfamiliar concepts or patterns
*   Implement solutions incrementally, testing each part
*   Rewrite solutions in your own style after understanding them
*   Create comments that explain why the code works, not just what it does
*   Use paired programming approach: write your understanding first, then get feedback
*   Only implement parts of solutions that you could explain to someone else

##### Pitfall 4: Overlooking Maintenance and Evolution

**Problem:** Focusing only on whether a solution fixes the immediate problem, not considering future maintenance.

**Solution:**

*   Consider how easily the solution can be extended for future requirements
*   Evaluate how well the solution is documented and self-explanatory
*   Ask about common patterns for evolving this type of code
*   Consider whether the solution introduces tech debt or dependencies
*   Think about how testable the solution will be in the future
*   Ask specifically about parts that might be difficult for other team members to understand

##### Pitfall 5: Not Validating Security Aspects

**Problem:** Implementing AI suggestions that might introduce security vulnerabilities.

**Solution:**

*   Always ask explicitly about security implications for:
    *   Input validation and sanitization
    *   Authentication and authorization code
    *   Database queries and data access
    *   API endpoints and user-submitted data
*   Request information about common security pitfalls for the specific type of code
*   Verify that error messages don’t reveal sensitive information
*   Consider how the solution handles sensitive data

**Exercise**

Do the activities in Exercise: AI Solution Verification Challenge

Please complete Assessment: Using AI to debug errors.

### A Principle Discovered: Verify

In the last few prompt strategies, we learn an important principle: we must continuously test our understanding by verifying AI responses. We can verify using AI (stating it in our own words and understanding), BUT ideally we also verify with other humans and sources.

AI is fallible, it does not think like us. It can hallucinate. This is a way for us to verify both what the AI suggests, and the context and prompt we used. Asking about trade-offs and alternatives is also effective to qualify responses.

The various principles are revisited in Principles when using AI

## Using AI to help with testing

Testing can feel overwhelming. Writing good tests requires understanding what to test, how to structure tests, and identifying edge cases you might not have thought of. While it might be tempting to have AI generate all your tests, that approach won’t help you learn and grow as a developer.

The good news is that AI can be a supportive learning partner that helps you understand testing principles better, improve your existing tests, and develop a testing mindset. This chapter focuses on using AI to enhance your testing skills rather than replace them.

In this chapter we look at specific scenarios:

1.  Understanding What to Test
2.  Improving a Single Test
3.  Learning Test-Driven Development

### 1. Understanding What to Test

Before writing tests, you need to understand what should be tested. This is a crucial skill that many developers struggle with. AI can help you analyze code to identify testable behaviors and potential edge cases without just generating tests for you.

We face a number of challenges when trying to figure out what to test:

*   **Identifying what to test:** Recognizing all the behaviors that need testing
*   **Understanding edge cases:** Knowing what could go wrong
*   **Testing priorities:** Figuring out what to test first
*   **Test types:** Understanding when to use unit vs. integration tests

#### Prompt 1: Behavior Analysis Questions

**Prompt Template:**

```
I'm learning how to test this function, and I want to understand what behaviors I should test:

[Paste function code]

Rather than generating tests for me, please:
1. Ask me questions about what I think this function does
2. After I answer, help identify any behaviors I missed
3. Ask me what edge cases I think should be tested
4. Help me identify additional edge cases I didn't think of
5. Ask me which test I should write first and why
```

**How This Helps You Learn:**

*   Encourages you to analyze the code yourself first
*   Teaches you to think about edge cases systematically
*   Develops your ability to prioritize tests
*   Builds critical thinking skills instead of dependency on generated code

#### Prompt 2: Test Planning Guidance

**Prompt Template:**

```
I'm learning to write tests for this code:

[Paste code]

Instead of writing tests for me, please:
1. Help me create a testing plan by asking me questions
2. For each behavior I identify, ask me how I would test it
3. If I miss something important, give me hints rather than answers
4. For each edge case we identify, ask me what I expect to happen
5. Help me create a checklist of tests I should write, organized by priority
```

**How This Helps You Learn:**

*   Develops your test planning skills
*   Teaches you to think methodically about test cases
*   Builds your understanding of test prioritization
*   Creates a structured approach you can follow

### 2. Improving a Single Test

Many developers start by writing simple "happy path" tests but struggle with making them robust. Instead of asking AI to generate many tests, focus on taking one test and improving it with AI guidance.

What are the challenges when writing tests?

*   **Basic tests only:** Writing only simple tests that don’t catch real issues
*   **Hard-to-read tests:** Creating tests that don’t clearly show their intent
*   **Brittle tests:** Writing tests that break when implementation details change
*   **Missing assertions:** Not verifying all important aspects of the result

#### Prompt 1: Single Test Enhancement

**Prompt Template:**

```
I wrote this test for the following function:

Function:
[Paste function code]

My test:
[Paste your test]

Instead of rewriting it for me, please:
1. Ask me questions about what my test is trying to verify
2. Help me identify if my test is checking behavior or implementation details
3. Suggest how I could make the test's purpose clearer
4. Ask me what edge cases my test might be missing
5. Guide me in improving my assertions to be more precise
```

**How This Helps You Learn:**

*   Focuses on improving one test deeply rather than having many superficial tests
*   Teaches you to write more meaningful and robust tests
*   Helps you understand the difference between testing behavior vs. implementation
*   Builds your skills in writing clear, maintainable tests

#### Prompt 2: Learning From Test Examples

**Prompt Template:**

```
I'm trying to understand how to better test this function:

[Paste function code]

I've written this basic test:
[Paste your test]

Please:
1. Explain the principles of a good test for this type of function
2. Show me ONE example of a better test with comments explaining why it's better
3. Ask me questions about how I would improve my test based on this example
4. Challenge me to identify what edge cases I should add
5. Guide me in writing more precise assertions
```

**How This Helps You Learn:**

*   Provides a concrete example to learn from
*   Teaches testing principles through practical application
*   Encourages you to apply what you’ve learned
*   Builds your critical thinking about test quality

### 3. Learning Test-Driven Development

Test-Driven Development (TDD) is a powerful practice that can be challenging for beginners. Instead of having AI generate both tests and code, use it to guide you through the TDD process step by step, developing your own skills.

TDD can be difficult in several ways:

*   **Starting with tests:** Difficulty writing tests before implementation
*   **Small increments:** Tendency to implement too much at once
*   **Red-Green-Refactor:** Understanding the TDD workflow
*   **Test evolution:** Knowing how to evolve tests as code changes

#### Prompt 1: Guided TDD Practice

**Prompt Template:**

```
I want to learn Test-Driven Development for this feature:

[Describe the feature you want to implement]

Instead of writing code and tests for me, please:
1. Ask me what I think the first test should be and why
2. Give me feedback on my proposed test
3. After I write the test, ask me what minimal code would make it pass
4. Once I've implemented the code, guide me on what test to add next
5. Help me understand when it's time to refactor vs. add new functionality
```

**How This Helps You Learn:**

*   Teaches you the TDD workflow through guided practice
*   Develops your ability to think in small, testable increments
*   Builds understanding of the red-green-refactor cycle
*   Creates good TDD habits from the beginning

#### Prompt 2: TDD Code Review Guidance

**Prompt Template:**

```
I've been practicing TDD and wrote these tests and implementation:

Tests:
[Paste your tests]

Implementation:
[Paste your code]

Please:
1. Ask me to explain my TDD process and what order I wrote things in
2. Help me identify if I truly followed TDD principles
3. Ask questions about tests I might have skipped
4. Guide me on opportunities for refactoring
5. Help me recognize if my implementation does more than needed for the tests
```

**How This Helps You Learn:**

*   Provides feedback on your TDD practice
*   Teaches you to recognize when you’re deviating from TDD
*   Develops your refactoring skills within the TDD context
*   Builds self-reflection about your development process

#### Common Pitfalls

Be aware of these common issues when using AI to help with testing:

**Pitfall:** Letting AI Write All Your Tests
**Solution:** Use AI to guide your thinking process, not to replace it. Write the tests yourself after discussion.

**Pitfall:** Testing Everything at Once
**Solution:** Focus on one behavior or test at a time, improving it before moving on.

**Pitfall:** Focusing on Test Quantity Over Quality
**Solution:** Prioritize writing a few good tests rather than many superficial ones.

**Pitfall:** Skipping Learning for Convenience
**Solution:** When tempted to have AI generate code, ask yourself what learning opportunity you might be missing.

**Exercise**

Do the activities in Exercise: Using AI to help with testing

Please complete Assessment: Using AI to help with testing.

### A Principle Discovered: Learn Through Guided Practice

In this chapter, we’ve applied the principle of learning through guided practice. Instead of having AI generate complete solutions, we use it to ask questions, provide focused guidance, and offer feedback on our work.

This approach helps develop critical thinking and problem-solving skills rather than creating dependency. By asking AI to guide rather than generate, you’re building lasting skills that will serve you throughout your career.

Remember that the goal isn’t just to produce tests but to become a developer who thinks deeply about code quality and correctness. Using AI as a learning partner rather than a code generator will help you reach that goal.

The various principles are revisited in Principles when using AI

## Using AI to refactor and enhance code

Refactoring code is both an art and a science - improving structure and design without changing external behavior. While experienced developers develop an intuition for what needs refactoring and how to approach it, when we start out we often struggle with where to begin and how to ensure we don’t break existing functionality.

Generative AI offers powerful assistance in this domain, helping us improve code in small steps, improve code readability, and verify that changes maintain expected behavior. This chapter explores practical approaches to using AI as a refactoring partner, from breaking down complex functions to implementing design patterns and modernizing legacy code.

We look at these scenarios:

1.  Understanding What to Change with AI
2.  Breaking Down Complex Functions
3.  Improving Code Readability
4.  Implementing Design Patterns

### 1. Understanding What to Change with AI

As a developer, you’ll often look at your code and think, "This could be better." But identifying exactly what to improve and how to do it safely can be challenging, especially when you’re still gaining experience. This section demonstrates how AI can help analyze your code to find improvement opportunities and guide you through making those changes while maintaining functionality.

When working with existing code, you might often face these challenges:

*   **Unclear starting point:** Not knowing which parts of the code need improvement first
*   **Unfamiliar patterns:** Difficulty recognizing common code issues or anti-patterns
*   **Fear of breaking things:** Uncertainty about making changes that might introduce bugs
*   **Style inconsistencies:** Code that doesn’t follow project conventions or best practices
*   **Readability issues:** Code that works but is difficult to understand
*   **Function organization:** Functions that are too long or try to do too many things
*   **Code duplication:** Similar code repeated in multiple places
*   **Naming problems:** Variables and functions with unclear or misleading names

Let’s explore some prompting strategies that can help you analyze code before making improvements. These strategies are designed to tackle the everyday challenges you’ll encounter as a junior developer.
Remember to add the prompt templates you find useful to your personal template library. Also look back at Using AI to help with testing to help you first get proper tests into place before starting with code changes.

#### Prompt 1: Code Readability Improvement

**Prompt Template:**

```
I want to make this code more readable and maintainable. Please help me by:
1. Identifying parts that are difficult to understand
2. Suggesting better variable and function names
3. Recommending ways to break down complex sections
4. Pointing out any inconsistent style or formatting issues

[Paste code here]

Language/Framework: [e.g., JavaScript/React]
Team coding standards: [e.g., camelCase for variables, max line length 80 chars]
```

**Practical Application:**

*   Improve code clarity for yourself and teammates
*   Learn proper naming conventions
*   Understand how to structure code for readability
*   Align with team coding standards

#### Prompt 2: Function Refactoring

**Prompt Template:**

```
I have a function that I think is doing too much. Please help me refactor it by:
1. Identifying the different responsibilities this function has
2. Suggesting how to break it into smaller, focused functions
3. Improving the organization and flow of the code
4. Pointing out any other issues you notice

[Paste function here]

What this function should do: [Brief description of intended purpose]
```

**Practical Application:**

*   Learn to recognize when functions have too many responsibilities
*   Practice creating smaller, more focused functions
*   Improve code organization and maintainability
*   Make future changes and debugging easier

#### Prompt 3: Code Duplication Detection

**Prompt Template:**

```
I suspect there might be repeated patterns in this code that could be consolidated. Please help me by:
1. Identifying similar code segments that appear multiple times
2. Suggesting ways to eliminate the duplication (e.g., helper functions, loops)
3. Showing me what the refactored code could look like
4. Explaining the benefits of the suggested changes

[Paste code with potential duplication]
```

**Practical Application:**

*   Identify repeated code that could be consolidated
*   Learn techniques for code reuse
*   Prevent bugs that come from updating one instance but forgetting others
*   Reduce overall code size and complexity

#### Example: Before and After Refactoring

Here’s an example of how AI can help you improve your code:

**Before:**

```javascript
function processData(data) {
  let res = [];
  let total = 0;

  for(let i = 0; i < data.length; i++) {
    if(data[i].active == true) {
      let val = data[i].value;
      total = total + val;
      let newItem = {
        id: data[i].id,
        val: val,
        processed: true,
        timestamp: new Date().toISOString()
      };
      res.push(newItem);
    }
  }

  console.log('Total value: ' + total);
  return res;
}
```

**After AI-assisted refactoring:**

```javascript
/**
 * Process active items in the data array and track their total value
 * @param {Array} items - Array of data items to process
 * @returns {Array} - Array of processed active items
 */
function processActiveItems(items) {
  let processedItems = [];
  let totalValue = 0;

  for (const item of items) {
    if (!item.active) continue;

    totalValue += item.value;

    processedItems.push({
      id: item.id,
      val: item.value,
      processed: true,
      timestamp: new Date().toISOString()
    });
  }

  console.log(`Total value: ${totalValue}`);
  return processedItems;
}
```

**What improved:**

*   Better function name that describes its purpose
*   More descriptive variable names
*   Modern `for…​of` loop instead of traditional `for` loop
*   Early `continue` pattern to reduce nesting
*   Template literals for string concatenation
*   Added JSDoc comment to explain function purpose and parameters
*   Consistent formatting and spacing

#### Common Pitfalls

Watch out for these common challenges when using AI to help analyze your code:

**Pitfall:** Trying to Fix Everything at Once
**Solution:** Focus on one type of improvement at a time (e.g., readability first, then function organization)

**Pitfall:** Making Changes Without Understanding Them
**Solution:** Ask the AI to explain why each change is beneficial so you can learn from the process

**Pitfall:** Overlooking Test Requirements
**Solution:** Remember to ensure you have tests in place before refactoring, or create them as you go

**Pitfall:** Accepting All AI Suggestions
**Solution:** Critically evaluate each suggestion and understand its impact before implementing

**Exercise**

Do the activities in Exercise: Understanding What to Change with AI

### 2. Breaking Down Complex Functions

In the previous section we touched lightly on complex functions. It is worthwhile diving a bit deeper into that and see how we can prompt in even more detail to help us with complex functions.

Large, incohesive functions are common pain points in many codebases. These functions often try to do too much, mixing multiple levels of abstraction and making code difficult to understand, test, and maintain.This section demonstrates how AI can help identify logical boundaries within complex functions and guide their decomposition into smaller, more focused pieces that follow the single responsibility principle.

We can typically relate to pains because of these type of functions:

*   **Cognitive overload:** Functions so large they can’t be understood all at once
*   **Mixed abstraction levels:** High-level business logic mixed with low-level implementation details
*   **Testing difficulties:** Complex functions with many paths are hard to test thoroughly
*   **Debugging challenges:** When bugs occur, pinpointing issues in large functions is time-consuming
*   **Code duplication:** Logic repeated in different parts of the same function
*   **Parameter bloat:** Functions with many parameters to support all their responsibilities
*   **Tangled conditionals:** Deeply nested if/else statements that are difficult to follow
*   **Hidden side effects:** Changes in one part of the function affecting other parts unexpectedly

There are a few prompting strategies that can help us analyse and improve these functions.

#### Prompt 1: Function Responsibility Analysis

**Prompt Template:**

```
I have a complex function that I'd like to refactor by breaking it down into smaller functions:

[Paste complex function here]

Please:
1. Identify the distinct responsibilities/concerns in this function
2. Suggest a decomposition strategy with smaller functions
3. Show which parts of the original code would move to each new function
4. Provide a refactored version with the main function delegating to the smaller functions
```

**Practical Application:**

*   Identify logical separation points in complex functions
*   Understand which responsibilities should be separated
*   Create a plan for breaking down the function
*   Implement modular, focused functions

#### Prompt 2: Single-Responsibility Extraction

**Prompt Template:**

```
I'd like to extract a single responsibility from this complex function:

[Paste complex function here]

Specifically, I want to extract the logic that handles:
[Describe the specific responsibility to extract, e.g., "validation", "data transformation", "error handling"]

Please:
1. Identify all code related to this responsibility
2. Create a new function that encapsulates just this responsibility
3. Show how to modify the original function to call the new function
4. Suggest an appropriate name and parameters for the extracted function
```

**Practical Application:**

*   Focus on one improvement at a time for incremental refactoring
*   Create cohesive helper functions for specific tasks
*   Gradually improve function modularity without high-risk changes
*   Build confidence in refactoring complex code

#### Prompt 3: Conditional Logic Simplification

**Prompt Template:**

```
This function contains complex conditional logic that I want to simplify:

[Paste function with complex conditionals]

Please:
1. Identify the different logical paths through the conditionals
2. Extract each conditional branch into a separate named function
3. Suggest a pattern (Strategy, Command, etc.) that could replace the conditionals
4. Provide a refactored version with simplified logic in the main function
```

**Practical Application:**

*   Untangle deeply nested conditional statements
*   Replace complex conditionals with more readable structures
*   Apply design patterns to improve code organization
*   Make conditional logic more maintainable

#### Common Pitfalls

Look out for some possible pitfalls when using AI to refactor complex functions.

**Pitfall:** Excessive Parameter Passing
**Solution:** Consider using context objects or service classes to reduce parameter lists

**Pitfall:** Breaking Encapsulation
**Solution:** Carefully design function interfaces to expose only what’s necessary

**Exercise**

Do the activities in Exercise: Function Decomposition Challenge

### 3. Improving Code Readability

Just as we saw with complex functions, it is also possible to expand the AI strategies for improving code readability.

Even when code functions correctly, poor readability can severely impact maintainability and make it difficult for other developers (or your future self) to understand.This section demonstrates how AI can help transform cryptic, difficult-to-read code into clear, self-documenting code without changing its functionality, making it more accessible to the entire development team.

The kind of pains we experience with poor readability includes:

*   **Cryptic variable names:** Single-letter or unclear variable names that hide intent
*   **Long, complex expressions:** Calculations or conditions that are difficult to parse mentally
*   **Missing context:** Code that requires deep domain knowledge to understand
*   **Inconsistent formatting:** Irregular spacing, indentation, or style
*   **Unexplained magic numbers:** Hardcoded values without context or meaning
*   **Implied knowledge:** Assumptions about how the code works without documentation
*   **Deeply nested logic:** Code with many levels of nesting that obscures the flow
*   **Mixed abstraction levels:** High-level concepts intertwined with low-level details

#### AI-Assisted Code Readability Strategies

Once again AI can help us improve this using the prompt templates that follows.

#### Prompt 1: Variable and Function Naming Enhancement

**Prompt Template:**

```
Please improve the readability of this code by enhancing variable and function names:

[Paste code with poor naming here]

Guidelines:
1. Replace single-letter or cryptic variable names with descriptive ones
2. Ensure function names clearly describe their purpose and behavior
3. Use consistent naming conventions
4. Preserve the code's functionality exactly
5. Explain your naming choices and any patterns you've applied
```

**Practical Application:**

*   Transform cryptic identifiers into self-documenting names
*   Apply consistent naming conventions across the codebase
*   Make intent clear through well-chosen names
*   Learn good naming practices through AI explanations

#### Prompt 2: Comment and Documentation Addition

**Prompt Template:**

```
I need to improve this code's readability by adding appropriate comments and documentation:

[Paste poorly documented code here]

Please:
1. Add a clear function/method description comment that explains purpose, inputs, and outputs
2. Add comments for complex or non-obvious code sections
3. Document any assumptions, edge cases, or limitations
4. Explain any algorithms or business rules implemented
5. Don't add obvious comments that just repeat what the code clearly says
6. Use the standard comment style for the language
```

**Practical Application:**

*   Add context for complex algorithms or business rules
*   Document assumptions and edge cases
*   Create standardized function documentation
*   Learn when comments add value versus create noise

#### Prompt 3: Code Structure Improvement

**Prompt Template:**

```
Please improve the readability of this code by enhancing its structure and formatting:

[Paste poorly structured code here]

Specifically:
1. Apply consistent indentation and spacing
2. Break up long expressions into more readable parts with appropriate variable names
3. Extract complex conditions into well-named boolean variables
4. Reduce nesting levels where possible
5. Add line breaks to separate logical sections
6. Replace "magic numbers" with named constants
7. Ensure the functionality remains exactly the same
```

**Practical Application:**

*   Make code visually easier to read with consistent formatting
*   Break down complex expressions into understandable parts
*   Reduce cognitive load by naming intermediate results
*   Learn structural patterns that improve readability

#### Common Pitfalls

**Pitfall:** Over-commenting Obvious Code
**Solution:** Focus comments on "why" rather than "what," and use self-documenting code where possible

**Pitfall:** Excessive Abstraction
**Solution:** Aim for clarity over cleverness; sometimes a slightly longer but more obvious approach is better

**Pitfall:** Inconsistent Naming
**Solution:** Establish and follow naming conventions across the entire codebase

**Exercise**

Do the activities in Exercise: Code Readability Challenge

### 4. Implementing Design Patterns

Design patterns are proven solutions to common software design problems. Recognizing when and how to apply these patterns in existing code can be challenging early in our careers. This section demonstrates how AI can help identify opportunities to refactor code using established design patterns, resulting in more maintainable, flexible, and extensible applications without changing core functionality.

There are a few challenges when implementing design patterns:

*   **Pattern recognition difficulty:** Struggling to see where patterns could improve existing code
*   **Over-engineering concerns:** Uncertainty about when a pattern adds value versus unnecessary complexity
*   **Implementation complexity:** Difficulty translating pattern concepts into concrete code
*   **Refactoring risk:** Fear of breaking functionality when introducing patterns
*   **Domain-pattern mismatch:** Choosing the wrong pattern for a particular problem
*   **Legacy code constraints:** Working with code that resists pattern implementation
*   **Testing challenges:** Ensuring pattern implementation preserves behavior
*   **Team knowledge gaps:** Different levels of pattern understanding across the team

#### AI-Assisted Design Pattern Implementation Strategies

Now let us look at some strategies to prompt AI to help us.

#### Prompt 1: Pattern Opportunity Identification

**Prompt Template:**

```
I'd like to identify potential design patterns that could improve this code:

[Paste code here]

Please:
1. Identify code structures or problems that could benefit from design patterns
2. Suggest which specific patterns would be appropriate and why
3. Explain the benefits each pattern would bring to this code
4. Highlight any potential drawbacks or implementation challenges
5. Prioritize suggestions based on impact vs. implementation effort
```

**Practical Application:**

*   Discover pattern opportunities in existing code
*   Learn which code structures benefit from which patterns
*   Understand pattern benefits in concrete situations
*   Make informed decisions about pattern adoption

#### Prompt 2: Pattern Implementation Guidance

**Prompt Template:**

```
I'd like to refactor this code to implement the [PATTERN_NAME] design pattern:

[Paste code to refactor]

I think this pattern is applicable because [YOUR REASON FOR CHOOSING THIS PATTERN FOR THIS CODE].

I am thinking of implementing it by making this changes:
[SUMMARY OF HOW YOU ARE THINKING ABOUT IMPLEMENTING THE PATTERN]

Please:
1. Verify if my chosen design pattern and implementation ideas makes sense, and point out errors in my thinking.
2. If the pattern is applicable, provide a step-by-step refactoring plan to help guide me.
3. Show the refactored implementation with the pattern applied
4. Highlight key changes and how they align with the pattern principles
5. Explain how to verify the refactoring preserves the original behavior
6. If the pattern is not applicable, please refer me to alternative patterns I can look at that are more applicable to this code.
```

**Practical Application:**

*   Get concrete implementation guidance for specific patterns
*   Follow a structured refactoring approach
*   Understand pattern principles in the context of real code
*   Learn testing approaches for pattern implementations

#### Prompt 3: Multi-Pattern Architecture Transformation

This is a more advanced strategy for when you are comfortable with broader impact code change.

**Prompt Template:**

```
I want to improve the architecture of this codebase by applying appropriate design patterns:

[Paste related code files or describe the system]

Current issues/limitations:
[Describe pain points in the current implementation]

Please:
1. Suggest an improved architecture using complementary design patterns
2. Explain how these patterns would work together
3. Outline a gradual refactoring approach to transform the current code
4. Address potential risks and how to mitigate them
5. Describe how the new architecture improves maintainability and extensibility
```

**Practical Application:**

*   Develop a holistic architectural vision using patterns
*   Plan incremental refactoring steps toward better architecture
*   Understand pattern composition and interaction
*   Anticipate and plan for refactoring challenges

#### Common Pitfalls

There are some pitfalls with implementing design patterns, and using AI to help you implement means you must be doubly on the lookup for them.

**Pitfall:** Over-engineering with Patterns
**Solution:** Implement patterns only when they solve specific problems, not for their own sake

**Pitfall:** Rigid Pattern Implementation
**Solution:** Adapt patterns to your specific context rather than forcing code into textbook implementations

**Pitfall:** Pattern Tunnel Vision
**Solution:** Consider multiple pattern options before committing to an implementation

**Exercise**

Do the activities in Exercise: Design Pattern Implementation Challenge

Please complete Assessment: Using AI to refactor and enhance code.

### A Principle Discovered: Know your words

This principle relates a lot to Communicate Clearly. If we do not know the jargon to use when explaining a concept to someone, then it is very difficult to ask about it, or learn about it.

The same is true when communicating with AI tools: we need to understand common software engineering terminology. In this chapter used terms like refactoring, design patterns, decomposition, single responsibility, etc. These are key concepts we should understand as software developers, and by understanding them, we can better communicate with our team as well as AI.

The various principles are revisited in Principles when using AI

## Learning with AI

AI can support our learning in a powerful way. It can also become a crutch if we prompt it just to get answers we can copy and paste. In this module we want to look at how to use AI to enhance our learning.

There are several use cases that stand out, and by starting with these and mastering them, you will discover even more.

### Topics for this module

| Skill | Description |
|---|---|
| Deepening Knowledge of Your Current Programming Language | Familiarise yourself with a current programming language |
| Learning a New Programming Language with AI | Acquire proficiency in an additional programming language |
| Learn a new framework, library or API | Develop competency with new frameworks, libraries and APIs |

## Deepening Knowledge of Your Current Programming Language

There’s a vast difference between "knowing how to code" in a programming language, and truly mastering a language. AI tools can help bridge this gap, accelerating your journey from basic competency to deep fluency.

### Learning Outcomes

After completing these activities, you should be able to:

*   Identify and apply language-specific idioms and patterns
*   Write more readable and maintainable code
*   Effectively leverage advanced language features
*   Debug code more efficiently using language-specific techniques
*   Continuously improve your coding style through AI feedback

We are going to look at these scenarios:

1.  AI-Powered Code Suggestions
2.  Code Quality Enhancement
3.  Exploring Advanced Language Features

### 1. AI-Powered Code Suggestions

We get many AI tools that can directly integrate with our code editors like VSCode or Jetbrains.They typically are known as code assistants, and one of the things they excel at are code completion and suggestions while you type your code.

They offer a number of advantages:

*   **AI Enhances Language Familiarity**
    *   AI tools analyze patterns in millions of code repositories to suggest idiomatic code
    *   Exposure to different coding styles and approaches broadens your perspective
    *   AI suggestions often incorporate best practices you might not yet know
    *   Regular exposure to these suggestions builds muscle memory for language patterns
*   **Beyond Simple Completion**
    *   AI can suggest entire functions based on comments or function names
    *   Learn alternative approaches to problems you’re solving
    *   Discover built-in methods and libraries you didn’t know existed
    *   Identify more efficient or readable ways to express your logic

#### Prompt: Idiomatic Code

Use the prompt below to ensure your code is aligned with industry best practices for your language, and in the process learn more about the programming language.

```
I'm learning to write more idiomatic [language]. Here's my current code:

   [paste your code]

   Could you:
   1. Suggest ways to make this more idiomatic
   2. Explain why these changes follow language best practices
   3. Point out any language features I'm not taking advantage of
   4. Show me both my version and an improved version side by side
```

#### Pitfalls to Avoid

However, there are some major pitfalls to avoid:

*   Blindly accepting suggestions without understanding
*   Becoming dependent on completion for basic syntax
*   Missing opportunities to learn why certain patterns are suggested

### 2. Code Quality Enhancement

In time, by accepting the better suggestions (and ensuring we understand what is suggested and adapt it for our needs!) we will see an improvement in overall code quality. The AI models are trained with idiomatic code, which is typically of good quality and follow clean code principles and best practices. This leads to advantages when making use of AI code assistants:

*   **Readability Improvements**
    *   AI can suggest more idiomatic ways to express your logic
    *   Learn language-specific conventions for naming and structure
    *   Discover more concise ways to accomplish tasks
    *   Get suggestions for better documentation and comments
*   **Performance Optimization**
    *   Identify inefficient patterns in your code
    *   Learn about language-specific optimization techniques
    *   Understand time and space complexity implications
    *   Discover more efficient built-in methods or libraries
*   **Code Style and Standards**
    *   Learn language-specific style conventions
    *   Discover industry-standard patterns for your language
    *   Understand why certain practices are preferred
    *   Get help aligning with team or project style guides

With RAG-empowered AI tools, it is possible to have the LLM reference your team’s coding standards (captured in documentation and examples or existing projects), and help ensure consistent use of the standards across the team.

#### Prompt: Code Quality Improvements

In-editor code assistants do not always give comprehensive feedback. Use the prompt below as a starting point for directly prompting an AI tool to learn about code enhancement opportunities.

```
I'm a junior developer working with [language]. Could you review this code for quality improvements:

   [paste code]

   Please:
   1. Identify any code smells or quality issues
   2. Suggest specific improvements
   3. Explain why these improvements matter in [language]
   4. Rate the code's readability, performance, and maintainability
```

### 3. Exploring Advanced Language Features

Using AI assistants from our IDE gives us a quick way to learn about the programming language we are using. We can use it as an expert coder in that particular language and prompt it in a way so we can learn about the language features. (More on this as well in Learning a New Programming Language with AI.)

It can help us:

*   **Discovering Hidden Gems**
    *   Learn about lesser-known language features
    *   Understand advanced features through practical examples
    *   Explore idioms and patterns specific to your language
    *   Discover more elegant solutions to common problems
*   **Framework and Library Integration**
    *   Learn best practices for using popular libraries
    *   Understand language-specific ecosystem tools
    *   Discover how to leverage the language’s strengths in different contexts
    *   Get suggestions for appropriate libraries based on your task

#### Prompt: Understanding Language Feature

We can use this prompt as a starting point to learn about specific language features.

```
I want to improve my understanding of [specific feature] in [language].

1. Could you explain this feature with simple examples?
2. Show me 3 practical use cases where this would be valuable
3. Provide a small project idea that would help me practice this feature
4. What common mistakes should I avoid when using this feature?
```

#### Hands-on Exercises

Let us explore the above ideas in practice using a hands-on exercise.

**Exercise**

Do the activities in Exercise: Applying AI to deepen programming language understanding

## Learning a New Programming Language with AI

Learning a new programming language can be both exciting and overwhelming. By leveraging AI tools effectively, you can create a structured learning path that builds deep understanding rather than just collecting syntax knowledge. This chapter explores how to use AI as an effective learning companion for mastering a new programming language.

We will look at a few specific scenarios:

1.  Structured Learning Prompts for Programming Languages
2.  Advanced Prompting Techniques for Language Learning
3.  Building Technical Vocabulary

### Understanding AI as a Learning Tool for Programming Languages

When learning a new programming language, it’s crucial to establish the right mental model for interaction with AI. Think of AI not as a code generator, but as a learning companion that can:

*   Act as a mentor: Guide you through complex concepts, ask probing questions, and challenge your assumptions
*   Serve as a tutor: Provide explanations, offer examples, and check your understanding
*   Support active learning: Where you drive the process, not the AI

#### Core Principles for Learning a New Language with AI

Principles when using AI introduces a number of key principles when engaging with AI in general. Below we highlight some principles specific to learning with AI.

*   Prioritize understanding over code snippets: Focus on why the language works the way it does
*   Practice deliberately: Write code yourself, don’t just read examples
*   Embrace the language’s paradigm: Don’t fight against the language’s design philosophy
*   Build connections to what you know: Use your existing knowledge as anchors for new concepts
*   Create something meaningful: Apply your learning to a project that interests you

By applying these learning principles, you’ll develop not just syntax knowledge but a deep understanding of your new programming language and its ecosystem.

### Creating a Learning Journey Plan

Creating a learning journey plan is important, rather than approaching AI with isolated questions. Such a plan can:

*   Map out progressive steps toward mastery of a new language
*   Identifies prerequisite knowledge
*   Help create a sequence of learning topics to follow
*   Incorporate deliberate practice and verification steps and exercises
*   Creates connections between related concepts

An example plan when learning Java (and coming from Python) might look like:

```
#Learning Journey Example: Mastering Java Coming from Python

**End Goal: Develop proficiency in Java for enterprise application development**

## Phase 1: Language Fundamentals
- Prerequisite: Basic programming knowledge in Python
- Learning Steps:
  1. Java syntax basics and differences from Python
  2. Understanding static typing vs. dynamic typing
  3. Java variable declarations and primitive types
  4. Control structures and how they differ from Python
  5. Verification: Write a simple program converting a Python script to Java

## Phase 2: Object-Oriented Programming in Java
- Prerequisite: Understand Java syntax basics
- Learning Steps:
  1. Class structure and declaration
  2. Constructors, methods, and fields
  3. Access modifiers (public, private, protected)
  4. Inheritance and interfaces
  5. Verification: Design a class hierarchy implementing a simple concept

## Phase 3: Java-Specific Features
- Prerequisite: OOP understanding in Java
- Learning Steps:
  1. Collections Framework (vs. Python collections)
  2. Exception handling
  3. Generics
  4. Lambda expressions and functional interfaces
  5. Verification: Refactor code to use appropriate collections and lambda expressions

## Phase 4: Java Ecosystem and Tooling
- Prerequisite: Core Java knowledge
- Learning Steps:
  1. Build tools (Maven/Gradle)
  2. Testing frameworks (JUnit)
  3. Java standard libraries
  4. Common third-party libraries
  5. Verification: Create a project with proper structure, dependencies, and tests
```

You can use such a plan to guide your prompting interactions with AI (or a human tutor or mentor). Remember our Drive your own learning principle:

### 1. Structured Learning Prompts for Programming Languages

When learning a new language (or any new subject, for that matter) we can use a four-step prompting strategy or learning pattern. The following examples show a progressive learning pattern applied to learning a new programming language, using these structured learning prompts:

#### 1.1 Conceptual Understanding

First prompt for contextual understanding: in this we provide context about where are coming from, and what the main learning goal is, with some questions to help bridge that gap.

```
"I'm currently proficient in Python and want to learn Java. Before diving into code:
1. What are the key philosophical differences between Java and Python?
2. What problems was Java designed to solve?
3. What mental models should I adjust coming from Python?
4. What are common misconceptions Python developers have about Java?"
```

#### 1.2 Step-by-Step Breakdown

Then we ask for a step-by-step breakdown: this breaks down learning topics into smaller, easier to understand concepts.

```
"I want to understand Java's object-oriented implementation. Could you break down:
1. The essential components of a Java class
2. How inheritance works compared to Python
3. The concept of interfaces (which doesn't exist in Python)
4. How method overriding and overloading work
Let's not write complex code yet, just focus on structure and concepts."
```

#### 1.3 Guided Implementation

We then focus on one of the learning topics and ask for a guided implementation: this allows us to learn about a specific language topic or feature in a guided manner.

```
"I'm ready to implement my first Java class. Could you guide me through creating a
'Student' class with name, ID, and grades? Please explain each part of the syntax,
especially the parts that differ from Python's approach to classes."
```

#### 1.4 Understanding Verification

Lastly we verify our understanding: we test our understanding using our own words and code.

```
"I've created this Java class:

public class Student {
    private String name;
    private int id;
    private double[] grades;

    public Student(String name, int id) {
        this.name = name;
        this.id = id;
        this.grades = new double[5];
    }

    public double calculateAverage() {
        double sum = 0;
        for(double grade : grades) {
            sum += grade;
        }
        return sum / grades.length;
    }
}

Could you:
1. Verify if I've followed Java best practices?
2. Explain any improvements I should make?
3. Suggest what I should learn next?
4. Point out any Python habits that might be showing in my Java code?"
```

### 2. Advanced Prompting Techniques for Language Learning

After starting our learning journey using the previous approach, we can move onto move advanced learning prompt techniques to dive deeper into specific topics that interest us.

#### 2.1 Using Context Effectively

Leverage your existing knowledge as a foundation for learning new concepts. By providing your background, you enable AI to create meaningful analogies and comparisons that bridge the gap between familiar and new concepts.

**Example 1**

```
"I'm learning Spring Boot coming from Express.js. Could you explain dependency
injection by comparing it to concepts I'm familiar with in the Node.js ecosystem?"
```

**Example 2**

```
"I've been programming in Python for 2 years, focusing on data analysis with
pandas and numpy. Now I need to learn Java for a backend role. Could you explain
Java's stream API by comparing it to pandas operations I'm familiar with?"
```

#### 2.2 Promoting Deep Understanding

Go beyond surface-level implementation to explore implications and alternatives. This technique helps you understand not just the "how" but the "why" of solutions, preparing you for real-world scenarios and trade-offs.

**Template Example**

```
"I've implemented this solution for [problem]. Could you help me understand:
1. What are the performance implications?
2. What alternative approaches could I have taken?
3. How would this need to change if the requirements scaled 10x?"
```

**Example 2**

```
"I've learned the basics of Java exceptions. Could you help me understand:
1. Why Java uses checked exceptions when Python doesn't?
2. What are the performance implications of exception handling in Java?
3. How would extensive use of exceptions affect application design?
4. When should I create custom exception classes?"
```

#### 2.3 Learning Through Teaching

Articulate concepts in your own words, to reveal gaps in understanding. This technique, based on the Feynman Technique, helps solidify your knowledge and uncover areas that need clarification.

**Template Example**

```
"Could you verify my understanding? Here's how I would explain [concept]
to another developer: [explanation]. What am I missing or misunderstanding?"
```

**Example**

```
"Let me try explaining Java interfaces as I understand them:

'An interface in Java is like a contract that a class promises to fulfill.
It defines methods that implementing classes must provide, but doesn't include
the implementation itself. It's somewhat similar to Python's abstract base
classes, but more focused on defining behavior rather than sharing code.'

What parts of my understanding are correct? What am I missing or misunderstanding?"
```

#### 2.4 Using a Tutor

Establish a learning-focused relationship with AI where you remain the active problem solver. By setting clear expectations for guidance rather than solutions, you create a more effective learning environment that develops your problem-solving skills.

**Example 1**

```
I'm new to Python and fairly new to coding, and I'd like you to be my Python tutor. Instead of giving direct answers, please help me learn by:
- Asking guiding questions that help me discover solutions
- Breaking down problems into smaller steps
- Giving hints when I'm stuck rather than complete solutions
- Encouraging me to explain my thinking
- Pointing out patterns and connections to previous concepts
- Helping me debug by asking me to examine my assumptions
Let's starth with [specific coding or python question]
```

**Example 2**

```
"I'd like you to be my Java tutor as I learn it coming from Python. Instead of
giving direct answers, please:
- Ask me guiding questions
- Break down complex concepts into smaller pieces
- Give hints when I'm stuck
- Point out conceptual differences from Python
- Correct misunderstandings gently

Let's start with understanding how Java handles memory differently from Python."
```

### 3. Building Technical Vocabulary

Understanding the language-specific terminology is crucial for effective learning. Also refer to the principle Know your words.

Use the following prompting techniques.

#### 3.1 Vocabulary Discovery

```
"I'm beginning to learn Java coming from Python. Before diving in, could you:
1. List the key technical terms I should know in Java that don't exist in Python
2. Provide a brief explanation of each term
3. Show how these terms relate to each other
This will help me ask better questions as I learn."
```

#### 3.2 Terminology Verification

```
"I'm trying to describe what I want to do in Java, but I don't know the proper terms.
In Python, I would use a dictionary to store key-value pairs. What's the equivalent
in Java, and what's the proper terminology I should use when discussing this?"
```

#### Exercises

Let us explore the above ideas in practice using a few hands-on exercises.

**Exercise**

Do the activities in Exercise: Learning a New Programming Language with AI

### Evaluating AI Responses for Language Learning

It is important to create a checklist to evaluate AI responses when learning a programming language:

*   Does the explanation connect to concepts I already know?
*   Are language-specific idioms and best practices emphasized?
*   Does it explain the "why" behind language features?
*   Are common pitfalls and gotchas mentioned?
*   Does it provide complete, runnable code examples?
*   Are there suggestions for further learning?

Think about what other items would you like to add to your personal checklist.

Please complete Assessment: Learning a New Programming Language with AI.

### A Principle Discovered: Drive your own learning

Remember, you must be the active learner, and only use AI to support your learning. This means you take responsibility for understanding each concept. You can use AI (and humans!) to test your understanding. Never accept solutions without understanding them fully.

As an active learner, you set clear learning objectives before starting AI interactions. Creating a learning journey plan is a good way to set your objectives, and track them.

The various principles are revisited in Principles when using AI

## Learn a new framework, library or API

Software development evolves at breakneck pace, with new frameworks, libraries, and tools emerging constantly. We face a number of challenges:

*   Information overload from extensive documentation and resources
*   Limited time to master technologies before they evolve
*   Difficulty bridging the gap between tutorials and real-world implementation
*   Pressure to learn while remaining productive on current projects

### How AI Can Accelerate the Learning Curve

AI tools offer unique advantages for technology learning:

*   Personalized explanations based on your existing knowledge
*   Interactive Q&A that adapts to your learning needs
*   Code examples that demonstrate concepts in practice
*   Pattern identification that reveals framework philosophies
*   Translation of technical jargon into accessible language

These capabilities can significantly reduce the time needed to reach productive proficiency.
We have already seen some of these advantages in other learning use cases we explored. Think of the new technology as a new coding language, and you will see the same patterns of engaging with AI emerge.

### Setting Expectations: AI as a Learning Partner

Remember: AI is a powerful tool, but important limitations apply:

*   AI may provide incorrect information, especially about newer technologies
*   Understanding principles matters more than copying code
*   Hands-on practice remains essential for mastery
*   Critical thinking is required to evaluate AI suggestions
*   Strong programming fundamentals still accelerate learning any technology

The most effective approach uses AI as a guide while building your own experience and mental models.

### Strategies for Using AI to Learn New Tech

#### Getting Started Quickly

##### 1. Generate "Hello World" Examples

AI excels at creating starter code that demonstrates the minimum viable implementation:

*   Request framework-specific boilerplate code tailored to your needs
*   Ask for examples with comments explaining each component
*   Get variations showing different configuration options
*   Request examples that follow best practices from the start

##### 2. Obtain Simplified Conceptual Overviews

Before diving into documentation, AI can provide:

*   High-level explanations of the technology’s purpose and design philosophy
*   Comparisons to similar technologies you already know
*   Visual metaphors that make abstract concepts more concrete
*   Summaries of key architectural patterns used in the framework

##### 3. Clarify Core Concepts and Terminology

Every technology has its own vocabulary and paradigms:

*   Ask AI to define domain-specific terms in plain language
*   Request glossaries of framework-specific terminology
*   Get explanations of naming conventions and patterns
*   Have AI translate between terms in frameworks you know and the new one

##### 4. Structure Learning Paths

AI can help structure your learning journey:

*   Get a recommended sequence for learning components
*   Identify which parts to focus on first vs. what can wait
*   Receive guidance on prerequisite knowledge
*   Get suggestions for progressive challenges that build skills systematically

**Exercise**

Do this comprehensive exercise: Exercise: Getting Started with FastAPI

#### Contextual Learning

When learning a new technology, your existing knowledge is a valuable asset. Contextual learning uses what you already know as a foundation for understanding new concepts. Here’s how to leverage AI to make these connections:

##### 1. Comparing New Tech with What You Already Know

When approaching a new framework or library, AI can help bridge the knowledge gap:

*   Request direct comparisons:Ask "How does FastAPI’s routing compare to Flask’s?" or "What’s the equivalent of React components in Vue.js?"
*   Map concepts across technologies: Ask "What’s the FastAPI equivalent of Django’s middlewares?" or "How do Swift protocols relate to interfaces in Java?"
*   Identify skill transferability: Ask "Which skills from working with PostgreSQL will help me learn MongoDB faster?"
*   Highlight key differences: Request "What are the main differences in state management between Redux and Vuex that I should be aware of?"

##### 2. Requesting Analogies Between Familiar and New Frameworks

Analogies can make complex concepts more accessible:

*   Ask for metaphors: Request "Explain GraphQL queries in terms of REST API calls" or "If React is like X, what would Angular be?"
*   Use conceptual models: Ask "If Express.js middleware is like an assembly line, what would be a similar model for understanding FastAPI’s dependency injection?"
*   Request visual analogies: Ask "Can you explain Docker containers using an analogy to apartment buildings versus houses?"
*   Compare mental models: Request "How should I adjust my mental model when moving from imperative Python to functional programming in Scala?"

##### 3. Understanding the "Why" Behind Design Decisions

Understanding design philosophy helps you work with the grain of the technology:

*   Explore historical context: Ask "Why was TypeScript created when JavaScript already existed?" or "What problems was FastAPI designed to solve that previous frameworks didn’t?"
*   Understand trade-offs: Request "What are the trade-offs Rust made to achieve memory safety without garbage collection?"
*   Learn design principles: Ask "What design principles guided the creation of React’s component model?"
*   Discover architectural intentions: Request "Why does Django use a monolithic approach while NestJS promotes modular architecture?"

**Exercise**

Do this comprehensive exercise: Exercise: Contextual Learning with FastAPI

#### Documentation Navigation

Even well-written documentation can be overwhelming, especially for complex frameworks and libraries. AI can help you extract the most valuable information efficiently while focusing your learning on what matters most.

##### 1. Using AI to Summarize Dense Documentation

Technical documentation often contains detailed information that can be difficult to process at once:

*   Request concise overviews: Ask "Can you summarize the key concepts in FastAPI’s dependency injection documentation?"
*   Create documentation roadmaps: Request "What’s the recommended reading order for the AWS S3 documentation?"
*   Extract core concepts: Ask "What are the 5 most important concepts covered in the React hooks documentation?"
*   Simplify complex sections: Request "Can you explain the Kubernetes Pod security context documentation in simpler terms?"

##### 2. Getting AI to Highlight Important Areas to Focus On

Not all parts of documentation are equally relevant for your specific needs:

*   Identify crucial sections: Ask "Which parts of the Django documentation should I focus on first as a new backend developer?"
*   Find learning prerequisites: Request "What concepts should I understand before diving into the Redux middleware documentation?"
*   Prioritize based on use cases: Ask "I’m building a REST API with data validation. Which parts of the FastAPI docs should I prioritize?"
*   Discover hidden gems: Request "What are some underappreciated features in the PostgreSQL documentation that could improve my database design?"

##### 3. Asking for Practical Examples of Abstract Concepts

Converting theory into practice is often the biggest challenge:

*   Request code demonstrations: Ask "Can you show me a practical example of FastAPI’s dependency injection for database connections?"
*   Translate concepts to code: Request "Show me how the 'Inversion of Control' principle looks in actual Spring Boot code."
*   Apply concepts to specific scenarios: Ask "How would I implement JWT authentication in FastAPI based on the documentation?"
*   Compare alternative implementations: Request "Show me different ways to implement pagination in a REST API according to best practices."

#### Tools for Integrating Documentation with AI

To maximize your learning efficiency, consider these tools that help combine documentation with AI assistance:

**Browser Extensions:**

*   WebChatGPT: Adds web search results to AI prompts, providing context from documentation
*   ChatGPT for Google: Displays AI responses alongside search results
*   Merlin: Offers in-browser AI assistance that can reference current pages

**Documentation Copilots:**

*   DevDocs.io: Centralized documentation platform that can be referenced in AI prompts
*   Dash: Documentation browser with searchable offline documentation

**Prompt Techniques:**

*   URL References: Include documentation URLs in your prompts (e.g., "Based on [URL], explain…​")
*   Content Quoting: Copy-paste relevant documentation sections into your prompts
*   Multi-step Questioning: Ask about documentation structure first, then specific sections

**Exercise**

Do this exercise: Exercise: Documentation Navigation for FastAPI

### Best Practices and Pitfalls

While AI can dramatically accelerate learning new technologies, knowing how to use it effectively makes all the difference. Here are key practices to follow and pitfalls to avoid.

#### Verifying AI-Provided Information

AI systems can sometimes provide incorrect or outdated information, especially about newer technologies:

*   Cross-reference with official documentation: Always verify code examples and explanations against the framework’s official documentation.
*   Test code in isolated environments: Run AI-generated code snippets in a test environment to verify they work as described.
*   Look for version-specific discrepancies: Check if explanations match the version of the framework you’re using, as APIs can change significantly between versions.
*   Verify imports and dependencies: Ensure all required packages are correctly specified, as AI might assume certain dependencies are available.
*   Watch for "hallucinated" features: AI might occasionally describe features that don’t exist or work differently than described.

#### Common Misconceptions About Newer Technologies

AI models have limitations when it comes to recently released or rapidly evolving technologies:

*   Knowledge cutoff limitations: AI training data might not include the latest versions or features of frameworks released after its knowledge cutoff.
*   Mixing similar frameworks: AI might occasionally blend concepts from similar frameworks (e.g., confusing FastAPI and Flask patterns).
*   Assuming deprecated approaches: AI might suggest patterns that were once common but are now deprecated in favor of newer approaches.
*   Overstating capabilities: AI may sometimes overstate what’s possible with a particular technology.
*   Missing ecosystem context: AI might miss important context about how a technology fits into broader ecosystems or deployment patterns.

#### Balancing AI Assistance with Personal Understanding

While AI can provide quick answers, deep learning requires personal engagement:

*   Build conceptual models, not just code: Focus on understanding the underlying principles, not just copying solutions.
*   Practice progressive independence: Start with heavy AI assistance, then gradually reduce it as you build confidence.
*   Implement variations yourself: After getting AI help with a solution, try implementing variations without assistance.
*   Debug problems manually first: When you encounter errors, attempt to solve them yourself before asking AI for help.
*   Explain concepts back to AI: Test your understanding by explaining concepts back to AI in your own words and asking for feedback.
*   Work on projects beyond tutorials: Apply what you’ve learned to projects that solve real problems, using AI as a consultant rather than the primary source of solutions.

#### Techniques for Asking More Effective Questions

There are a number of ways to prompt AI models in a way that optimizes the learning experience. If we apply those learnings, we enhance the quality of the AI responses in learning new technology as well. Try these approaches:

*   Provide context about your knowledge level: Include information about frameworks you’re already familiar with so AI can make relevant comparisons.
*   Be specific about your goals: Explain what you’re trying to accomplish, not just what you want to know.
*   Share error messages verbatim: When debugging, include the complete error message rather than summarizing it.
*   Use iterative questioning: Start with broader questions, then drill down into specific aspects as your understanding develops.
*   Request explanations at different levels: Ask for both high-level conceptual explanations and low-level implementation details.
*   Ask for alternative approaches: Request multiple ways to solve a problem to better understand the design space.
*   Include code snippets for context: When asking about specific code, include relevant sections to give AI the necessary context.
*   Start with a learning journey plan: Create a structured learning path for each new technology. Define clear goals for what you want to accomplish with each new technology.

By balancing AI assistance with deliberate practice and understanding, you’ll not only learn new technologies faster but also develop deeper mastery that enables you to solve novel problems and contribute meaningfully to projects.

**Advanced Exercise**

Do this optional exercise: Exercise: Understanding FastAPI Code Patterns.

Please complete Assessment: Learn a new framework, library or API.

## Principles when using AI

During the previous chapters, we discovered a number of key principles to apply when engaging with AI. Below we recap these.

### 1. Communicate Clearly

Discovered in Using AI to comprehend existing codebases.

In every prompt we showed, we communicated clearly and to the point, and provided enough context.

Talking to Generative AI models is just like talking to a colleague in your team, or a technical mentor or some senior developer you have access to; someone who will need more context as they are not immersed in the code you are working on in the same way you are. You will get better feedback or advise if you ask specific question, and also provide enough context for them to be able to determine how to guide you.

In the same way, AI respond much better if you give enough contextual information, and ask for very specific things.

*   Use the SCSD (Specific, Contextual, Structured, Descriptive) approach in your prompts

### 2. Verify!

Discovered in Using AI to debug errors.

In a number of prompt strategies, we saw an important principle in practice: we must continuously test our understanding by verifying AI responses. We can verify using AI (stating it in our own words and understanding), BUT ideally we also verify with other humans and sources.

AI is fallible, it does not think like us. It can hallucinate. This is a way for us to verify both what the AI suggests, and the context and prompt we used. Asking about trade-offs and alternatives is also effective to qualify responses.

### 3. Learning Through Guided Practice

In Using AI to help with testing, we’ve applied the principle of learning through guided practice. Instead of having AI generate complete solutions, we use it to ask questions, provide focused guidance, and offer feedback on our work.

This approach helps develop critical thinking and problem-solving skills rather than creating dependency. By asking AI to guide rather than generate, you’re building lasting skills that will serve you throughout your career.

Remember that the goal isn’t just to produce tests but to become a developer who thinks deeply about code quality and correctness. Using AI as a learning partner rather than a code generator will help you reach that goal.

### 4. Know your words

Discovered in Using AI to refactor and enhance code.

This principle relates a lot to Communicate Clearly. If we do not know the jargon to use when explaining a concept to someone, then it is very difficult to ask about it, or learn about it.

The same is true when communicating with AI tools: we need to understand common software engineering terminology. In Using AI to refactor and enhance code we used terms like refactoring, design patterns, decomposition, single responsibility, etc. These are key concepts we should understand as software developers, and by understanding them, we can better communicate with our team as well as AI.

### 5. Drive your own learning

Discovered in Learning a New Programming Language with AI.

Remember, you must be the active learner, and only use AI to support your learning. This means you take responsibility for understanding each concept. You can use AI (and humans!) to test your understanding. Never accept solutions without understanding them fully.

As an active learner, you set clear learning objectives before starting AI interactions. Creating a learning journey plan is a good way to set your objectives, and track them.

### Practices

There are also a number of practices that will add a lot of value in how you use AI and what you will gain from it.

#### Define learning outcomes

Know what you want to achieve before asking AI for help. Set clear goals like "understand how authentication works" rather than vague requests like "explain code." This focuses the AI’s response on exactly what you need to learn. For bigger subjects like a new technology or coding language, create a learning journey map.

#### Personal prompt template library

Create and save your most effective AI prompts for common tasks. Think of it as building your own collection of magic spells that consistently get you the best results. Share these with teammates to level up the whole team.

#### Document learnings

Don’t just read and forget AI explanations. Write down key insights in your own words. This cements your understanding and builds a personal knowledge base you can refer to later without having to ask AI the same questions again. Learning how to keep a developer journal is one way in which you can regularly capture your insights.

#### Create AI response checklist

Create a checklist to evaluate AI-generated code or explanations. Ask yourself: "Is this secure? Does it follow our coding standards? Are there edge cases it missed?" This helps you spot potential issues that AI might overlook. Share this checklist with your colleagues and consider documenting a checklist for use by the team.

#### Test with humans

AI isn’t perfect. Always get feedback from experienced team members on important AI-generated solutions. Human developers can catch subtle issues, suggest improvements, and provide context that AI might miss.