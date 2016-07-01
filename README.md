# django-webpack-starter

* Front end preprocessor
  * jade
  * livescript
  * stylus

* Directory
  * Example  Project - `web`
  * Example App - `example`

* Set django and webpack port

  ```
  vi option.json
  ```
* Run django server

  ```
  ./runserver
  ```
* Run webpack

  * For using django redner jade
    ```
    npm run watch
    ```

  * For using React.js without django render (run dev-server and proxy to django server)
    ```
    npm run dev
    ```

  * For production
    ```
    npm run prod
    ```
