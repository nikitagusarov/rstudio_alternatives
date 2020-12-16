# Workflow types 

From: https://forums.fast.ai/t/text-editor-vs-jupyter-notebook-vs-ides/22069

- Text editor
- Notebooks
- IDE

Most people use Jupyter Notebook for Iterative Programming and keep Code, Results visualizations and Documentations together. Once the experimentation is done, you may want to abstract things into functions and put into .py file. Jupyter Notebooks are still relevant even when doing large projects to experiment. This is what you will see in Fast.AI, where all the library code is in .py file, but the lessons are in jupyter notebook.

There’s no right answer to what’s the best Text Editor for Python files - Jupyter, Vim, SublimeText, Atom, PyCharm,and many more. This is more like asking what’s your favourite food and let me see if that’s also something I like. The only way to evaluate is to try a few of them and see what’s your Taste

From: https://stackoverflow.com/questions/58822369/what-is-a-good-databricks-workflow

The notebook used in production can't be modified without breaking the production. When I want to develop an update, I duplicate the notebook, change the source code until I'm satisfied, then I replace the production notebook with my new notebook.
My browser is not an IDE! I can't easily go to a function definition. I have lots of notebooks, if I want to modify or even just see the documentation of a function, I need to switch to the notebook where this function is defined.
Is there a way to do efficient and systematic testing ?
Git integration is very simple, but this is not my main concern.

# RStudio features

From: https://rstudio.com/products/rstudio/features/

* An IDE that was built just for R
    - Syntax highlighting, code completion, and smart indentation
    - Execute R code directly from the source editor
    - Quickly jump to function definitions

* Bring your workflow together
    - Integrated R help and documentation
    - Easily manage multiple working directories using projects
    - Workspace browser and data viewer

* Powerful authoring & Debugging
    - Interactive debugger to diagnose and fix errors quickly
    - Extensive package development tools
    - Authoring with Sweave and R Markdown

* And more: 
    - runs on most desktops or on a server and accessed over the web
    - integrates the tools you use with R into a single environment
    - includes powerful coding tools designed to enhance your productivity
    - enables rapid navigation to files and functions
    - make it easy to start new or find existing projects
    - has integrated support for Git and Subversion
    - supports authoring HTML, PDF, Word Documents, and slide shows
    - supports interactive graphics with Shiny and ggvis

# Jupyter features

The notebook extends the console-based approach to interactive computing in a qualitatively new direction, providing a web-based application suitable for capturing the whole computation process: developing, documenting, and executing code, as well as communicating the results. The Jupyter notebook combines two components:

* A web application 

a browser-based tool for interactive authoring of documents which combine explanatory text, mathematics, computations and their rich media output.

* Notebook documents

a representation of all content visible in the web application, including inputs and outputs of the computations, explanatory text, mathematics, images, and rich media representations of objects.

* Main features of the web application
    - In-browser editing for code, with automatic syntax highlighting, indentation, and tab completion/introspection.
    - The ability to execute code from the browser, with the results of computations attached to the code which generated them.
    - Displaying the result of computation using rich media representations, such as HTML, LaTeX, PNG, SVG, etc. For example, publication-quality figures rendered by the matplotlib library, can be included inline.
    - In-browser editing for rich text using the Markdown markup language, which can provide commentary for the code, is not limited to plain text.
    - The ability to easily include mathematical notation within markdown cells using LaTeX, and rendered natively by MathJax.

# RStudio vs Jupyter

From: https://stackshare.io/stackups/jupyter-vs-rstudio

Jupyter: Multi-language interactive computing environments. The Jupyter Notebook is a web-based interactive computing platform. The notebook combines live code, equations, narrative text, visualizations, interactive dashboards and other media; RStudio: Open source and enterprise-ready professional software for the R community. An integrated development environment for R, with a console, syntax-highlighting editor that supports direct code execution Publish and distribute data products across your organization. One button deployment of Shiny applications, R Markdown reports, Jupyter Notebooks, and more. Collections of R functions, data, and compiled code in a well-defined format. You can expand the types of analyses you do by adding packages..

Jupyter can be classified as a tool in the "Data Science Notebooks" category, while RStudio is grouped under "Integrated Development Environment".

## Version control

Version Control

Version control of files with tools such as git is important as it both maintains an explorable database of changes to the code files and also improves collaboration by using a centralized server (e.g. GitHub) where anyone with access to the repository can pull and push changes to the code. In the data science world, large startups such as Stripe and Airbnb have seen a lot of success with this approach.

RStudio incidentally has a native git client for tracking and committing changes to a .Rmd file, which is easy since .Rmd files are effectively plain text files where you can see differences between versions at a per-line level. (You may not want to store the changes to the generated .nb.html Notebook since they will be large and redundant to the changes made in the corresponding .Rmd; I recommend adding a *.nb.html rule to a .gitignore file during analysis).

The .ipynb Jupyter Notebook files are blobs of JSON that also store cell output, which will result in large diffs if you keep them in version control and make any changes which result in different output. This can cause the git database to balloon and makes reading per-line diffs hard if not impossible.

On Hacker News, the version control issues in Jupyter are a common complaint, however a Jupyter developer noted of a possibility of working with RStudio on solving this issue.

## Inline Code Rendering

A common practice in Jupyter Notebooks is to print common values as a part of a write-up or testing statistical code. In Jupyter Notebooks, if you want to verify the number of rows in a dataset for exploratory data analysis, you have to add an appropriate print statement to the cell to get the number n rows, and then add a Markdown cell to redundantly describe what you just print in the output.

In R Notebooks, you can skip a step by calling such print statements in-line in the Markdown text, which will then be rendered with the Notebook. This also avoids hard-coding such numbers in the Markdown text if you change the data beforehand (e.g. parameter tuning) or if the values are nontrivial to calculate by hand.

# VS Code features

From: https://code.visualstudio.com/docs/editor/whyvscode

Visual Studio Code combines the simplicity of a source code editor with powerful developer tooling, like IntelliSense code completion and debugging.

First and foremost, it is an editor that gets out of your way. The delightfully frictionless edit-build-debug cycle means less time fiddling with your environment, and more time executing on your ideas.

* Available for macOS, Linux, and Windows

Visual Studio Code supports macOS, Linux, and Windows - so you can hit the ground running, no matter the platform.

* Edit, build, and debug with ease

At its heart, Visual Studio Code features a lightning fast source code editor, perfect for day-to-day use. With support for hundreds of languages, VS Code helps you be instantly productive with syntax highlighting, bracket-matching, auto-indentation, box-selection, snippets, and more. Intuitive keyboard shortcuts, easy customization and community-contributed keyboard shortcut mappings let you navigate your code with ease.

For serious coding, you'll often benefit from tools with more code understanding than just blocks of text. Visual Studio Code includes built-in support for IntelliSense code completion, rich semantic code understanding and navigation, and code refactoring.

And when the coding gets tough, the tough get debugging. Debugging is often the one feature that developers miss most in a leaner coding experience, so we made it happen. Visual Studio Code includes an interactive debugger, so you can step through source code, inspect variables, view call stacks, and execute commands in the console.

VS Code also integrates with build and scripting tools to perform common tasks making everyday workflows faster. VS Code has support for Git so you can work with source control without leaving the editor including viewing pending changes diffs.

* Make it your own

Customize every feature to your liking and install any number of third-party extensions. While most scenarios work "out of the box" with no configuration, VS Code also grows with you, and we encourage you to optimize your experience to suit your unique needs. VS Code is an open-source project so you can also contribute to the growing and vibrant community on GitHub.

* Built with love for the Web

VS Code includes enriched built-in support for Node.js development with JavaScript and TypeScript, powered by the same underlying technologies that drive Visual Studio. VS Code also includes great tooling for web technologies such as JSX/React, HTML, CSS, SCSS, Less, and JSON.

* Robust and extensible architecture

Architecturally, Visual Studio Code combines the best of web, native, and language-specific technologies. Using Electron, VS Code combines web technologies such as JavaScript and Node.js with the speed and flexibility of native apps. VS Code uses a newer, faster version of the same industrial-strength HTML-based editor that has powered the “Monaco” cloud editor, Internet Explorer's F12 Tools, and other projects. Additionally, VS Code uses a tools service architecture that enables it to integrate with many of the same technologies that power Visual Studio, including Roslyn for .NET, TypeScript, the Visual Studio debugging engine, and more.

Visual Studio Code includes a public extensibility model that lets developers build and use extensions, and richly customize their edit-build-debug experience.

* Ready, set, code!

If you prefer a code editor-centric development tool or are building cross-platform web and cloud applications, we invite you to try out Visual Studio Code and let us know what you think!

# RStudio against VS Code

From: https://stackshare.io/stackups/rstudio-vs-visual-studio-code

What is RStudio? Open source and enterprise-ready professional software for the R community. An integrated development environment for R, with a console, syntax-highlighting editor that supports direct code execution Publish and distribute data products across your organization. One button deployment of Shiny applications, R Markdown reports, Jupyter Notebooks, and more. Collections of R functions, data, and compiled code in a well-defined format. You can expand the types of analyses you do by adding packages..

What is Visual Studio Code? Build and debug modern web and cloud applications, by Microsoft. Build and debug modern web and cloud applications. Code is free and available on your favorite platform - Linux, Mac OSX, and Windows.

RStudio and Visual Studio Code are primarily classified as "Integrated Development Environment" and "Text Editor" tools respectively.

Visual Studio Code is an open source tool with 79.4K GitHub stars and 11.1K GitHub forks. Here's a link to Visual Studio Code's open source repository on GitHub.

From: https://renkun.me/2019/12/11/writing-r-in-vscode-a-fresh-start/

# VS Code against Atom (Bonus)

From: https://areknawo.com/vs-code-vs-atom-how-to-decide/

Both the VS Code and Atom are open-source code editors, originally created by Microsoft and GitHub respectively. 
Each of these editors is based on Electron - a framework for creating "native" desktop apps with web technologies - HTML, CSS, JS - with the addition of Node.js. 
By "native" I mean pre-bundled with Chromium - the more Chromiums the merrier, right? The editors are considered suitable for use with different programming languages, but it's a no-brainer that they work best for web development, especially given the way they were built.

## History 

From the historical standpoint, Atom came first. 
Released in 2014, Atom was the first piece of software built with Electron (which at that time was named Atom Shell) and also the one that Electron was originally created for. 
It was and is marketed as a "hackable editor for the 21-st century". 
After a short amount of time, the editor took off in terms of popularity, and became fully open-source (at the beginning only some parts of the code were), together with Electron.

Open-sourcing Electron led to the creation of a lot of different apps, that are now used by many people every day. 
One of those apps was - you guessed it - VS Code. 
A code editor meant to "redefine" the overall development experience.

Even though the two editors are pretty similar at their cores, VS Code proved to be the superior one - especially when considering the performance. 
As time passed, more and more users were choosing VS Code over Atom. 
It's becoming increasingly more popular and thus developed a greater community and user base.

https://insights.stackoverflow.com/survey/2019#technology-_-most-popular-development-environments

## Performance - the main difference

Even if Atom was the first, everyone who has used both of these editors, at least to some small extent, must agree - VS Code is just faster. 
Everything connected with it is fast, smooth and performant. 
So, how is Electron faster than... 
Electron?! Well, the answer comes in the form of optimizations... 
and extensions. 
Both editors feature an impressive amount of 3rd-party extensions, themes, and tools available, to help you customize them to your own needs. 
But, as these extensions are generally very heavily used, they definitely have some impact on the overall performance of the app. 
The best example of this is a little label in the Atom's extensions center, indicating the amount of time added to the load time, by the given extension. 
People behind the VS Code has just done a much better job with making all these extensions (or rather the architecture behind them), less performance-hungry.

From: https://www.makeuseof.com/tag/visual-studio-code-vs-atom/

Visual Studio Code fans often point to its performance compared to Atom and other Electron-based apps. 
Electron apps have gained a reputation for sluggish performance and slow startup times across the board, but Visual Studio Code manages to avoid this.

The performance differences between Visual Studio Code and Atom come down to a few factors, but one major aspect is the approach with which each app is developed. 
Visual Studio Code has a tightly controlled core set of functionality, with plugins adding surface-level features. 

## Interesting points 

Visual Studio and R support: https://github.com/MicrosoftDocs/visualstudio-docs/issues/2379
Apparently, there is no support for R language extensions in the VS 2019 - the focus of the developers was switched towards the development of Azure Notebooks (because of the main usage of R).

Some considerations on the different alternatives to RStudio:

- https://datascience.stackexchange.com/questions/5345/ide-alternatives-for-r-programming-rstudio-intellij-idea-eclipse-visual-stud
- https://www.dunebook.com/best-r-programming-ide/
- https://www.slant.co/topics/2897/~best-r-ides
- https://www.quora.com/What-are-the-best-choices-for-an-R-IDE
- https://ssiddique.info/what-are-the-best-ides-for-r-programming.html