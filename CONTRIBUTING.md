# Contributing to the Open Source Secure Element (OSSE)

Thank you for your interest in contributing to the Open Source Secure Element project! This document provides guidelines and instructions for contributing to the project.

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please read it before contributing.

## How Can I Contribute?

There are many ways to contribute to the OSSE project:

### Reporting Bugs

If you find a bug in the project, please create an issue on GitHub with the following information:

- A clear, descriptive title
- A detailed description of the issue
- Steps to reproduce the problem
- Expected behavior
- Actual behavior
- Screenshots or logs (if applicable)
- Environment information (OS, hardware, etc.)

### Suggesting Enhancements

We welcome suggestions for enhancements to the project. To suggest an enhancement:

1. Check if the enhancement has already been suggested
2. Create a new issue with a clear title and detailed description
3. Explain why this enhancement would be useful to most OSSE users

### Documentation

Improvements to documentation are always welcome:

- Fixing typos or clarifying existing documentation
- Adding examples or tutorials
- Translating documentation to other languages
- Adding diagrams or illustrations

### Code Contributions

We welcome code contributions through pull requests:

1. Fork the repository
2. Create a new branch for your feature or bugfix
3. Make your changes
4. Run tests to ensure your changes don't break existing functionality
5. Submit a pull request

## Development Workflow

### Setting Up the Development Environment

1. Clone the repository:
   ```bash
   git clone https://github.com/etherisc/open-source-secure-element.git
   cd open-source-secure-element
   ```

2. Install dependencies:
   ```bash
   # For documentation site
   gem install bundler
   bundle install
   
   # For firmware development
   # (See specific instructions in the firmware directory)
   ```

3. Run the local development server for documentation:
   ```bash
   bundle exec jekyll serve
   ```

### Branching Strategy

- `main` - The main development branch
- `release/*` - Release branches
- `feature/*` - Feature branches
- `bugfix/*` - Bug fix branches

### Commit Messages

Please follow these guidelines for commit messages:

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests after the first line

Example:
```
Add ECC secp256k1 support

- Implement key generation for secp256k1
- Add signing and verification functions
- Update documentation

Fixes #123
```

### Pull Request Process

1. Update the README.md or documentation with details of changes if appropriate
2. Update the CHANGELOG.md with details of changes
3. The PR will be merged once it receives approval from maintainers

## Style Guides

### Documentation Style Guide

- Use Markdown for documentation
- Follow the [Google Developer Documentation Style Guide](https://developers.google.com/style)
- Use sentence case for headings
- Use American English spelling

### Code Style Guide

- **C/C++**: Follow the [LLVM Coding Standards](https://llvm.org/docs/CodingStandards.html)
- **Python**: Follow [PEP 8](https://www.python.org/dev/peps/pep-0008/)
- **JavaScript**: Follow [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
- **Hardware Design**: Follow the [OpenTitan Hardware Design Style Guide](https://docs.opentitan.org/doc/contributing/hw_design/)

## License

By contributing to the OSSE project, you agree that your contributions will be licensed under the project's [MIT License](LICENSE).

## Questions?

If you have any questions about contributing, please reach out to us:

- Open an issue with your question
- Join our [Discord server](https://discord.gg/osse)
- Email us at [contact@etherisc.com](mailto:contact@etherisc.com)

Thank you for contributing to the Open Source Secure Element project! 