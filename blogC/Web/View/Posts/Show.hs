module Web.View.Posts.Show where
import Web.View.Prelude

data ShowView = ShowView { post :: Include "comments" Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>{get #body post}</p>
        <hr>
        {get #createdAt post |> timeAgo} 
        <a href={NewCommentAction (get #id post)}>add comment</a>
        <hr>
        <h3>comments below ...</h3>
        { forEach (get #comments post) makeComment }
    |]

makeComment comment = [hsx|
        <h3>{get #author comment }</h3>
        <p>{get #body comment }</p>
|]

