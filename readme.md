# Modal Presentation Style Demo

In this demo app, there are three view controllers: 

* **Initial View Controller**
* **Presenting View Controller**
* **Presented View Controller**

<p align="center">
<img src="./images/initial.png" width="100%">
</p>

At app lauch, **Presenting View Controller** is presented on top of **Initial View Controller** with a `formSheet` style. From **Presenting View Controller**, there are a list of buttons that will open **Presented View Controller** with different style options. The background of **Presented View Controller** has a 50% transparency so that we can see through it in some styles. 

The best way to understand the difference between them is to run the app in an iPad simulator since some of the styles are identical in iPhone. Below are some examples:

* **Current Context** v.s. **Over Current Context**. 

<p align="center">
<img src="./images/current context.png" width="40%">
<img src="./images/over_current_context.png" width="40%">
</p>

* **Full Screen** v.s. **Over Full Screen**

<p align="center">
<img src="./images/full screen.png" width="40%">
<img src="./images/over full screen.png" width="40%">
</p>

* **Page Sheet** v.s. **Pop Over** v.s. **Form Sheet**

<p align="center">
<img src="./images/page sheet.png" width="29%">
<img src="./images/pop over.png" width="29%">
<img src="./images/form sheet.png" width="29%">
</p>

PRs are welcome if you notice things that can be improved. 
