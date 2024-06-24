## Installation

First clone this repository:

If you use SSH

```bash
git clone git@github.com:pedrosouzadevs/ConstruTalk.git
```

If you use HTTPS

```bash
git clone https://github.com/pedrosouzadevs/ConstruTalk.git
```

After the cloning you need to install the dependencies:

```bash
 bundle install
```

With the dependencies installed, you will need to migrate the database and populate it with the seed:

```bash
 rails db:migrate db:seed
```

And for running this application you need to run:
```bash
 ./bin/dev
```
## User Journeys

For this application we have three possible user journeys. The first one is:

The user enters our homepage, starts reading the summaries of the posts that have already been created and decides to enter a post to read it better and see the comments.

The second one is:

The user enters our homepage for the first time, starts reading the summaries of the posts that have already been created and wants to create their own post. With this he clicks on the plus button to create the post and is redirected to the login area and as he is not registered yet, he clicks on Sign up, being redirected to registration. After registering, the user is redirected to the post creation page and when finished creating, the user is redirected to the created post.

And the third is:

The user enters our homepage, starts reading the summaries of the posts that have already been created and decides to enter a post to read it better and see the comments. Now he wants to create his own comment in the post, so he starts writting the comment and clicks on the button Post comment. With this the user is redirected to the login area, where he sign in with his credentials, being redirected to the commented post.

## Development

The technical requirements for this project included the use of Ruby, Ruby on Rails, and PostgreSQL. Rails is a framework that utilizes the Ruby programming language and is characterized as a monolith, employing applied design patterns such as MVC.

For the database structure, three tables were created:

Users, posts, and comments.

Users had several columns created by the Devise gem and another called username, which allows the name of the user creating a post or comment to be displayed.
Posts have a column with the ID of a user (user_id), requiring a user for post creation, as well as columns for title and content.
Comments have a content column and, similar to posts, require a user for creation and must also be linked to a specific post. Therefore, the Comments table includes both a user_id column and a post_id column.

In this application, the following gems were used: devise, kaminari and tailwind css in addition to the native rails gems.

The Devise gem was used to authenticate users in our application. Devise is a gem that is very well documented and very good for user authentication in rails.

The choice to use tailwind css instead of bootstrap was made because my last projects and studies all used tailwind css and I managed to perform better with it than with bootstrap.

The Kaminari gem is very simple and fit what I wanted to add to the front-end to have a pagination of posts and comments, thus avoiding a very large scroll in the application, like an infinite scroll.

During the application development, two challenges arose.
The first was on the front-end, specifically in the navbar. I wanted to dynamically change CSS classes for the "Home" button when the user was on the homepage, and revert to the original classes when the user was logged in and on the "my_posts" page. The main challenge here was finding how to retrieve this information. After researching literature, I found that controller_name and action_name provided the names of the current controller and action being visited by the user. With this information, I created a private function that set two instance variables before any action, which my front-end used in a ternary operator to dynamically adjust CSS classes.

The second challenge was easier to solve because I had previously studied the Stimulus gem in a bootcamp last year. The challenge was to effectively use Stimulus with JavaScript to achieve desired functionality. I aimed to enable clicking anywhere in the area where posts are displayed to redirect users to view the full post and its comments. After consulting the literature, I correctly configured Stimulus for JavaScript functionality and discovered how to implement this redirection. I utilized the same Stimulus controller for redirection on both the homepage and "my_posts" page. Upon completing redirection for both pages, I encountered an issue with the mouse cursor not changing when hovering over the post area. After researching a solution, I found that setting a default cursor and using mouse enter and exit functions for the post area allowed me to dynamically change the cursor.
