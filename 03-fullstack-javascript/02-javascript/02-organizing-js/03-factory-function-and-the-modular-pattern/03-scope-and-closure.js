// Scope and Closure

// From simply reading the above example, you are probably already in pretty good shape to start using factory functions in your code. Before we get there though, it’s time to do a somewhat deep dive into an incredibly important concept: closure.

// However, before we’re able to make sense of closure, we need to make sure you have a really good grasp on scope in JavaScript. Scope is the term that refers to where things like variables and functions can be used in your code.  

// In the following example, do you know what will be logged on the last line?

let a = 17;

const func = x => {
  let a = x;
};

func(99);

console.log(a); // ???????

// Is it 17 or 99? Do you know why? Can you edit the code so that it prints the other value?

// The answer is 17, and the reason it’s not 99 is that on line 4, the outer variable a is not redefined, rather a new a is created inside the scope of that function. In the end, figuring out scope in most contexts is not all that complicated, but it is crucial to understanding some of the more advanced concepts that are coming up soon, so take your time to understand what’s going on in the following resources.

This video is simple and clear! Start here.

This article starts simple and reiterates what the video covered, but goes deeper and is more specific about the appropriate terminology. At the end, he defines closure and describes the module pattern, both of which we’ll talk about more soon.

The previous article is great, but there is one inaccurate statement:

All scopes in JavaScript are created with Function Scope only, they aren’t created by for or while loops or expression statements like if or switch. New functions = new scope - that’s the rule

That statement was true in 2013 when the article was written, but ES6 has rendered it incorrect. Read this article to get the scoop!