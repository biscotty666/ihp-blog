module Web.View.Static.Home where
import Web.View.Prelude

data HomeView = HomeView

instance View HomeView where
    html HomeView = [hsx|
        {hero}
         <div style="padding: 2rem; border-radius: 4px">
              <div style="max-width: 800px; margin-left: auto; margin-right: auto">
                  <h1 style="margin-bottom: 2rem; font-size: 2rem; font-weight: 300; border-bottom: 1px solid white; padding-bottom: 0.25rem; border-color: hsla(196, 13%, 60%, 1)">
                      Biscotty's Workshop
                  </h1>

                  <h2 style="margin-top: 0; margin-bottom: 0rem; font-weight: 900; font-size: 3rem">
                      It's working!
                  </h2>

                  <p style="margin-top: 1rem; font-size: 1.75rem; font-weight: 600; color:hsla(196, 13%, 80%, 1)">
                     Your new application is up and running.
                  </p>

              </div>
              <div style="display: flex;justify-content: space-between">

                      <a
                          href={pathTo PostsAction}
                          class="button-normal"
                      >See the posts</a>
                      <a
                          href={workshopUrl}
                          class="button-normal"
                          target="_blank"
                          onclick="if (!confirm('Do you really want to leave the site?')) event.preventDefault();"
                      >Visit the workshop!</a>
              </div>
         </div>

|]

hero :: Html
hero = [hsx|
    <h1>Jello there</h1>
    <img src="../img/GoldMesa.png" />
|]

workshopUrl:: Text
workshopUrl = "https://biscotty.online"
