## Project Overview
This project contains the LaTeX-based CV of **Omer Pinto**, a senior software engineer. The goal is to maintain a clean, professional, and highly customizable resume while reducing the manual effort typically required when editing LaTeX files.

Because LaTeX is powerful but notoriously verbose, the project is designed to integrate seamlessly with **AI-assisted editing tools (e.g., Claude Code / Droid)**. The idea is to make the CV easy to update, refactor, and polish using AI—without needing to manually rewrite long LaTeX sections by hand.

The CV is structured into modular `.tex` files, each representing a section, and all are orchestrated by `resume.tex`.

---

## Goals
- Allow the user (Omer) to quickly update any part of the CV using an AI coding assistant.
- Provide context so the AI understands the structure, LaTeX quirks, commands, spacing, and content expected.
- Maintain consistent formatting across all sections.
- Support modern CV phrasing, improved clarity, and polished wording.
- Simplify refactoring: from reorganizing bullet points to rewriting entire sections.

LaTeX is powerful but rigid. For example:
- Escaping characters matters (`_`, `%`, `&`, etc.)
- Spacing and line breaks can break layout
- Macros or environments must remain consistent

By including this `CLAUDE.md`, any AI tool can understand the entire project’s intention and structure, enabling more reliable automated edits.

---

## Future Direction
There is consideration to evolve the project into a **Markdown-first CV generator**:
- All CV content would be written in Markdown files.
- A Python-based tool (or script) would convert the Markdown files into LaTeX.
- This would allow faster editing while still producing a beautifully formatted PDF.
- Tools like `pandoc` or custom Python scripts could streamline the transformation.

This approach may make updates significantly easier and more stable. However, the current project remains LaTeX-first.

---

## Current LaTeX Files (in `/latex` folder)

### `Military.tex`
Short description of military experience.

### `Skills.tex`
Key engineering and technical skills.

### `articles.tex`
Currently placeholders; will be expanded to include:
- Articles written
- GitHub projects
- Technical writing
- Public contributions

### `education.tex`
Formal academic background.

### `experience.tex`
Main career experience across all companies and roles.

### `resume.tex`
The root file that imports and assembles all other `.tex` files into the final resume.

---

## How AI (Droid / Claude Code) Should Interact With This Project
- Use this file to understand **the intent and structure** of the LaTeX CV.
- When updating any section, maintain LaTeX syntax and formatting.
- When rewriting content, focus on modern phrasing, clarity, and strong delivery.
- Always keep modularity: each `.tex` file represents one logical CV section.
- When making large refactors, ensure the structure remains compatible with `resume.tex`.

This `CLAUDE.md` is the source of truth for how AI tools should assist in maintaining the CV.
