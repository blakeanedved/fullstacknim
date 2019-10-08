import htmlgen

proc render*(pagetitle: string): string =
    html(
        head(
            title(pagetitle),
            script(src="js/home.js"),
            link(href="css/home.css", rel="stylesheet")
        ),
        body(
            h1(pagetitle),
            p("hey")

        )
    )
