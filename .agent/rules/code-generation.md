# Code Generation Rules

## Modular Design
*   The main method in `main.py` is the entry point.
*   Do not generate code directly in the main method. Instead, generate distinct functionality in new files (e.g., `feature_x.py`).
*   Generate example code to showcase functions in `main.py` by importing them.

## Testing First
*   Always generate a test plan before writing implementation code.
*   Create unit tests for every new module.
