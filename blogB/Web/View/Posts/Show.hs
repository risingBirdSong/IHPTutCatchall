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
        <p>{ get #body post}</p>
        <a href={EditPostAction (get #id post) }>edit post</a>
        <hr>
        <p>{get #createdAt post |> timeAgo}</p>
        <a href={NewCommentAction (get #id post)}>add comment</a>
        <h1>{forEach (get #comments post) renderComment }</h1>
    |]

renderComment comment = [hsx|
    <hr>
    <h4>{get #author comment }</h4>
    <p>{get #body comment}</p>
    <p><a href={EditCommentAction (get #id comment)}>edit comment</a> ... <a href={DeleteCommentAction (get #id comment)} class="js-delete text-muted" > delete comment</a> </p>
|]