[![built with love](https://cloud.githubusercontent.com/assets/2231765/6766607/d07992c6-cfc9-11e4-813f-d9240714dd50.png)](http://rmosolgo.github.io/react-badges/)

Rails project example with GraphQL

## Installation

```
$ bundle install
```


```
$ rails db:create db:create db:migrate db:seed
```

## Getting Started


```
$ rails s
```


## Usage examples


### example 1
```
GET localhost:3000/api?query={
  donor(name: "Beth") {
    name
    gender
    organization {
      active
    }
  }
}
```

result:

```
{
    "data": {
        "donor": {
            "name": "Beth",
            "gender": "female",
            "organization": {
                "active": false
            }
        }
    }
}
```

### example 2

```
localhost:3000/api?query={
  organization(active: true) {
    donors {
      name
      gender
    }
  }
}
```

result:

```
{
    "data": {
        "organization": {
            "donors": [
                {
                    "name": "Rick",
                    "gender": "male"
                },
                {
                    "name": "Morty",
                    "gender": "male"
                },
                {
                    "name": "Summer",
                    "gender": "female"
                }
            ]
        }
    }
}
```
