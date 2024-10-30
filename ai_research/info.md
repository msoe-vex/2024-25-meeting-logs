The `ai_research/logs` folder is for uploading your meeting / work logs. You can find the template for the meeting logs in the `templates/meeting_log.md` file or the `templates/meeting_log.tex` file.

The `ai_research/findings` folder is for uploading the findings of the research. You can find the template for the findings in the `templates/findings.tex` file.

If you are not familiar with LaTeX, don't worry! You can write your findings in Markdown, and I will convert it to LaTeX for you. While the meeting logs are written in Markdown, the findings are written in LaTeX because it is easier to format this style of document in LaTeX.

If you have any questions, feel free to ask me! I am happy to help you with anything you need.

LaTeX Cheat Sheet:

1. **Document Class**:

   ```latex
   \documentclass{article}
   ```

   This sets the document to use the `article` class, which is suitable for short documents. You don't need to change this since the template is already set up for you.

2. **Packages**:

   ```latex
   \usepackage{amsmath}  % For advanced math formatting
   \usepackage{graphicx} % For including images
   \usepackage{hyperref} % For hyperlinks
   \usepackage{geometry} % For setting page dimensions
   \usepackage{fancyhdr} % For custom headers and footers
   ```

   These packages are included in the template to help you format your document. You don't need to change this since the template is already set up for you, but knowing what each package does can help you understand how to use them.

3. **Sections**:

   ```latex
   \section{Section Title}
   \subsection{Subsection Title}
   \subsubsection{Subsubsection Title}
   ```

4. **Math Mode**:

   ```latex
   Inline: \( E = mc^2 \)
   Display: \[ E = mc^2 \]
   ```

   You probably won't need to use math mode for the findings, but it's good to know how to include math equations if you need to.

5. **Figures**:

   ```latex
   \begin{figure}[h]
     \centering
     \includegraphics[width=\linewidth]{image.png}
     \caption{Caption for the image}
     \label{fig:image}
   \end{figure}
   ```

   Adding images is so useful when trying to explain a concept. You can include images in your findings to make them more engaging and easier to understand. When you include an image, please upload the image file to the `images` folder in the `notebook/images` directory. Just put the name of the image file in the `includegraphics` command, and LaTeX will take care of the rest.

6. **Tables**:

   ```latex
   \begin{table}[h]
     \centering
     \begin{tabular}{|c|c|c|}
        \hline
        Header1 & Header2 & Header3 \\
        \hline
        Cell1 & Cell2 & Cell3 \\
        \hline
     \end{tabular}
     \caption{Caption for the table}
     \label{tab:table}
   \end{table}
   ```

   Tables are a great way to organize data and make it easier to read. You can create tables in LaTeX using the `tabular` environment. I usually use an online table generator to create the table and then paste the code into my LaTeX document.

7. **References**:

   ```latex
   \label{sec:label}
   Refer to Section \ref{sec:label}.
   ```

   You can label sections, figures, tables, and equations in LaTeX and refer to them later in the document. This is useful for cross-referencing and keeping track of different parts of your document.

8. **Hyperlinks**:

   ```latex
   \href{http://example.com}{Link Text}
   ```

   This is useful for including links to websites or other resources in your document. This works for labels as well, so you can create a hyperlink to a section or figure in your document.

9. **Lists**:
   ```latex
   \begin{itemize}
     \item First item
     \item Second item
   \end{itemize}
   \begin{enumerate}
     \item First item
     \item Second item
   \end{enumerate}
   \begin{description}
     \item[First] First item
     \item[Second] Second item
   \end{description}
   ```
   There are three types of lists in LaTeX: `itemize`, `enumerate`, and `description`. You can use these to create bulleted lists, numbered lists, and description lists, respectively.
