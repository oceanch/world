Here is an example of using the p{} column type, or wrapping the contents in a \parbox:
![fig. 1](https://i.stack.imgur.com/4i1In.png)

For your specific example, since you want the data columns aligned as per the table heading you could use something like:

\newcommand*{\TitleParbox}[1]{\parbox[c]{1.75cm}{\raggedright #1}}%
\begin{tabular}{|l|r|r|r|r|r|}
    \hline
    Image & Score  & \parbox[c]{1.5cm}{\raggedright here is a lot of text} & \TitleParbox{again a lot} &\TitleParbox{a lot and a lot}& \TitleParbox{and the same here}\\ \hline
    a \(left\) & 1 & 1 & 1 & 1 & 1  \\ \hline
    b \(right\)&  1 &1 & 1 & 1 & 1  \\  \hline
\end{tabular}
which yields:

![fig. 2](https://i.stack.imgur.com/Bd2MG.png)


Notes:

The showframe package was used to show the margins on the page.
Code:

\documentclass{article}
\usepackage{showframe}

\newcommand*{\Title}{A very long table heading}%
\newcommand*{\TitleInParbox}{\parbox[c]{0.3\linewidth}{\Title}}%

\begin{document}
\section{Tabular with left alignment}
\noindent
\begin{tabular}{lll}
\Title & \Title & \Title
\end{tabular}

\section{Using the p\{\} column type:}
\noindent
\begin{tabular}{p{0.3\linewidth} p{0.3\linewidth} p{0.3\linewidth}}
\Title & \Title & \Title
\end{tabular}

\section{Using a parbox:}
\noindent
\begin{tabular}{lll}
\TitleInParbox & \TitleInParbox & \TitleInParbox
\end{tabular}
\end{document}


In addition to considering the methods mentioned in @PeterGrill's answer, you should also consider using a tabularx environment. It provides a column type called X, which is (in effect) a p column -- i.e., it allows line wrapping -- but lets you dispense with the tedium of having to calculate the column widths if you want to make the table fit inside a given width, say, \textwidth.

You may also want to think about giving your table a more "open" look. In the following screenshot, the first table follows the layout provided in your code (except that a tabularx environment is used, with a modified X column type for columns 3 thru 6), whereas the second table achieves the "open" look by getting rid of all vertical rules and using fewer, but well spaced, horizontal rules.

![fig. 2](https://i.stack.imgur.com/RgyPZ.png)

\documentclass{article}
\usepackage{tabularx,ragged2e,booktabs}
\newcolumntype{L}{>{\RaggedRight\arraybackslash}X} % ragged-right version of "X"
\begin{document}

\begin{table}[t]
\caption{Lots of vertical and horizontal rules\strut}
\begin{tabularx}{\textwidth}{|l|r|L|L|L|L|}
\hline
Image & Score  & here is a lot of text & again a lot & a lot and a lot & and the same here \\ \hline
a \emph{left}  & 1 & 1 & 1 & 1 & 1  \\ \hline
b \emph{right} &  1 &1 & 1 & 1 & 1  \\ \hline
\end{tabularx}
\end{table}

\begin{table}[h]
\caption{No vertical rules; fewer but well-spaced horizontal rules}
\begin{tabularx}{\textwidth}{@{} lrLLLL @{}}
\toprule
Image & Score  & here is a lot of text & again a lot & a lot and a lot & and the same here \\ \midrule
a \emph{left}  & 1 & 1 & 1 & 1 & 1  \\
b \emph{right} &  1 &1 & 1 & 1 & 1  \\ \bottomrule
\end{tabularx}
\end{table}

\end{document}
