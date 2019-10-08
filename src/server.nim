import views/home
import jester

settings:
    staticDir = "build/public"

routes:
    get "/":
        resp home.render("Hello, World!")
