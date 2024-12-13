module Web.View.Posts.Index where
import Web.View.Prelude

data IndexView = IndexView { posts :: [Post] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        {breadcrumb}

        <h1>Posts <a href={pathTo NewPostAction} class="button rounded bg-green-100 px-4 ml-2">+ New</a></h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Post</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>{forEach posts renderPost}</tbody>
            </table>

        </div>
    |]
        where
            breadcrumb = renderBreadcrumb
                [ breadcrumbLink "Posts" PostsAction
                , breadcrumbLinkExternal "Home" ("/" :: Text)
                ]

renderPost :: Post -> Html
renderPost post = [hsx|
    <tr>
        <td><a href={ShowPostAction post.id}>{post.title}</a></td>
        <td><a href={EditPostAction post.id} class="button rounded bg-green-100 px-4 ml-2">Edit</a></td>
        <td><a href={DeletePostAction post.id} class="button rounded bg-green-100 px-4 ml-2">Delete</a></td>
    </tr>
|]
