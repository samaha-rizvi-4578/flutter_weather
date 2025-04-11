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

