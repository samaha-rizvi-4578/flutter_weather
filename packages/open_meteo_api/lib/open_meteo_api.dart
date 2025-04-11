library open_meteo_api;

export 'src/models/models.dart';
// export modesl .dart
// to be able to deserialize and serialize our models in order to work with api data we will add fromjsonand tojson method in our models

//  we will be using json_annotaiton, json_serializable and build_runner packages to generate the tojson and formjson methods
//  and http package to make http requests to the api
// these dependencies will be added in the pubspec.yaml file of the package

// @jsonserializable to label classes whic can be serialized to json
// @jsonkey to provide string representation of the field name in json
// @jsonvalue to provide string representaion of field value
// implemetn jsonconverter to convert object representation into json representations