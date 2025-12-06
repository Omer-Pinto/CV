# Omer Pinto LaTeX CV

This repository contains the **LaTeX-based CV of Omer Pinto**, a senior software engineer. The project focuses on maintaining a clean, professional, and highly customizable resume while minimizing the manual effort required to update LaTeX files.

## Features

- **Modular LaTeX structure**: Each section of the CV is in a separate `.tex` file, assembled by `resume.tex`.
- **AI-assisted editing ready**: Designed to integrate with AI tools (e.g., Claude Code / Droid) for faster updates, refactoring, and polishing.
- **Modern, professional layout**: Optimized for readability, consistency, and modern CV standards.
- **Customizable and maintainable**: Supports ongoing tweaks to phrasing, bullet points, and formatting.

## Project Structure

- `resume.tex` – Main file that imports all CV sections.
- `Military.tex` – Military experience.
- `Skills.tex` – Technical skills and expertise.
- `articles.tex` – Publications, GitHub projects, and technical writing.
- `education.tex` – Academic background.
- `experience.tex` – Career history and roles.

## Usage

- Use the `compile_cv.sh` bash script to compile the LaTeX CV.
- Modify individual `.tex` files to update sections.
- Optionally, integrate AI-assisted editing to refactor content or enhance phrasing.

## AI Integration

For detailed guidance on AI-assisted maintenance, refer to [`agents.md`](agents.md). It describes:

- How AI tools should interpret the LaTeX structure.
- Best practices for rewriting, reordering, and polishing CV content.
- Strategies for keeping the CV modular and maintainable.

## Future Direction

- Considering a Markdown-first workflow to simplify editing while still producing a LaTeX/PDF output.

## License

This project is open for public viewing and personal use.