# Online Judge

* A NodeJs based platform allows you to compile and run codes in various programming languages. One can practice different programming questions based on different difficulty level and tags using proper filters to filter out the questions. It gives the user visual insights about his/her performance of the previous submissions using pie chart. User can make friends and follow other coders around the globe. You can have the discussion with your friends via the chat window. Based on your previous performance one can even upload their own questions or host a contest for others to participate.

### Tech Stacks Used
* NodeJs
* EJS(NodeJs Templating Engine)
* JavaScript
* HTML
* CSS
* MySQL

### Installation Process
* Set up a Node repository using __npm int__ command.
* Run the below command to install the required dependencies<br/>
__npm install body-parser compile-run connect-flash cookie-parser ejs express express-fileupload express-session fs-extra memorystore mysql node-cron nodemailer path unzip__
* Create your GitHub CLIENT_ID and CLIENT_SECRET and paste it in __public/js/jnews.js__ file at the mentioned position to allow login with GitHub.
* Mention __http://localhost:3000/auth/github/redirect__ as your __REDIRECT URL__ while setting up CLIENT_ID in GitHub.
* Create your __NewsAPI__ API KEY and paste it in __public/js/jnews.js__ file at the mentioned position to get the latest news feeds.
<br/>

Practice coding to the fullest and thrive in coding skills. Happy Coding!!
