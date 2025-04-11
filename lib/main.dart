// architecture
// data: retrieve raw weather data from the API
// repository: abstract the data layer and expose domain models for app to consume
// businness logic: manage the state of each feature (unit info, city details, themes etc 
// presentation: display weathr info and collect input from users (settings page, user pag etc)

/* datalayer
two edpoints of open meteo api
https://geocoding-api.open-meteo.com/v1/search?name=$city&count=1 to get a location for a given city name

https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&current_weather=true to get the weather for a given location
*/

// creating open meteo api client as a apckage  flutter create --template=package open_meteo_api

//  now for repositry layer our goal is to abstarct our data layer andn facilitate communication with bloc layer . the rest of our codebase depends on only fucntions exposed by repository layer instead of specifc dat aproviderwithout disrupting any of application level code
//  we will crate a new pkg weatherrepository

// We’re using a path to specify the location of the open_meteo_api which allows us to treat it just like an external package from pub.dev.

// bloc layer we will be consuming the weather domain model from weather repository and exposing eature level moel which will be surfaced to use via ui

// This is the third different type of weather model we’re implementing. In the API client, our weather model contained all the info returned by the API. In the repository layer, our weather model contained only the abstracted model based on our business case. In this layer, our weather model will contain relevant information needed specifically for the current feature set.
