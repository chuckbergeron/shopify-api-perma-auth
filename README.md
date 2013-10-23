# Shopify API Perma-Auth

                                            ..
                                         ,o""""o
                                      ,o$"     o
                                   ,o$$$                                 
                                 ,o$$$'
                               ,o$"o$'
                             ,o$$"$"'   
                          ,o$"$o"$"'    
                       ,oo$"$"$"$"$$`                      ,oooo$$$$$$$$oooooo.  
                    ,o$$$"$"$"$"$"$"o$`..             ,$o$"$$"$"'            `oo.o
                 ,oo$$$o"$"$"$"$  $"$$$"$`o        ,o$$"o$$$o$'                 `o
              ,o$"$"$o$"$"$"$  $"$$o$$o $$o`o   ,$$$$$o$"$$o'                    $
            ,o"$$"'  `$"$o$" o$o$o"  $$$o$o$oo"$$$o$"$$"$o"'                     $
         ,o$"'        `"$ "$$o$$" $"$o$o$$"$o$$o$o$o"$"$"`""o                   ' 
       ,o$'          o$ `"$"$o "$o$$o$$$"$$$o"$o$$o"$$$    `$$  
      ,o'           (     `" o$"$o"$o$$$"$o$"$"$o$"$$"$ooo|  `` 
     $"$             `    (   `"o$$"$o$o$$ "o$o"   $o$o"$"$    )
    (  `                   `    `o$"$$o$" "o$$     "o /|"$o"
     `                           `$o$$$$"" o$      "o$\|"$o'
                                  `$o"$"$ $ "       `"$"$o$
                                   "$$"$$ "oo         ,$""$ 
                                   $"$o$$""o"          ,o$"$
                                   $$"$$"$ "o           `,",
                         ,oo$oo$$$$$$"$o$$$ ""o           
                      ,o$$"o"o$o$$o$$$"$o$$oo"oo
                    ,$"oo"$$$$o$$$$"$$$o"o$o"o"$o o
                   ,$$$""$$o$,      `$$$$"$$$o""$o $o               
                   $o$o$"$,          `$o$"$o$o"$$o$ $$o             
                  $$$o"o$$           ,$$$$o$$o"$"$$ $o$$oo      ,   
                  "$o$$$ $`.        ,"$$o$"o$""$$$$ `"$o$$oo    `o
                  `$o$o$"$o$o`.  ,.$$"$o$$"$$"o$$$$   `$o$$ooo    $$ooooooo
                    `$o$"$o"$"$$"$$"$"$$o$$o"$$o"        `"$o$o            `"o
                       `$$"$"$o$$o$"$$"$ $$$  $ "           `$"$o            `o
                          `$$"o$o"$o"$o$ "  o $$$o            `$$"o          ,$
                             (" ""$"""     o"" "o$o             `$$ooo     ,o$$
                                  $$"""o   (   "$o$$$"o            `$o$$$o$"$'
                                    ) ) )           )  ) )            ` "'


Here you will find a few dragons and such. I was heading down this path as a proof of concept but didn't get too far.

If you'd like to contribute, there's still a few things left to accomplish. Namely, the DB migration generator, and the middleware to handle the DB insert after the OAuth process finalizes.

## Description

Sets up your [Shopify API-enabled app](https://github.com/Shopify/shopify_app) to store permanent tokens, to make requests on behalf of a store anytime.

## Installation

```sh
rake shopify-api-perma-auth:install
```

This will generate a database migration, and add the new columns from the migration to a "Shops" table.

After completing the Oauth process with a new shop, a hook on the LoginController#finalize action will store the new shop's permanent auth token in the database.

[@colchuck](http://twitter.com/colchuck)
