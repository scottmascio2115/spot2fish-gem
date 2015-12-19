![alt tag](https://pbs.twimg.com/profile_images/492814839643787264/lewtdkhX_200x200.png) 

# Spot2fish Gem


A Ruby library for the Spot2fish API.

## Installation

Add this line to your application's Gemfile:

    gem 'spot2fish'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spot2fish

## Usage

##### Retrieve the first 15 fishing spots.

`Spot2fish.all`

*Pass a page number as an arguement, to paginate.*

`Spot2fish.all(2)`

##### Search

`Spot2fish.search('Columbus, Ohio')`

`Spot2fish.search('Ohio')`

##### Search Social Media

`Spot2fish.search_social_media('Columbus, Ohio')`

`Spot2fish.search_social_media('Ohio')`

##### *Search* versus *Search Social Media*

`Spot2fish.search('Ohio')` will search the Spot2fish API for any spots near the location passed.

`Spot2fish.search_social_media('Columbus, Ohio')` will search the Twitter API as well as the Instagram API for any fishing realated posts within a 60 mile radius of the location passed.

> The `search` method may be perferable due to the rate limiting restrictions on both the Twitter API as well as the Instagram API.


##### Response

**Metadata**

    "metadata": {
        "api_for": "Spot2fish.com",
        "total_spots": 4500,
        "spots_on_current_page": 15,
        "current_page": 2,
        "total_pages": 300,
        "next_page": 3,
        "next_page_link": "?page=3",
        "previous_page": 1,
        "previous_page_link": "?page=1"
    }

**Array of Spot objects**

    "spots": [
        {
         "id": 9000,
         "social_media": "twitter",
         "name": "_s_mas",
         "social_media_id": "1234567890.0",
         "image": "https://pbs.twimg.com/media/CLuki9uUkAE-jGV.png",
         "text": "\"Let's go fishing"\",
         "lat": "48.8489689",
         "long": "2.3057026",
         "location": "Columbus, Ohio",
         "date": null,
         "rank": 1,
         "created_at": null,
         "updated_at": null,
         "avatar": "https://pbs.twimg.com/profile_images/492814839643787264/lewtdkhX_normal.png",
         "extlocation": null,
         "social_media_id_str": "674175896752947200",
         "nfr": false
        }
     ]


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Project using the Spot2fish API

* [Spot2fish iOS app](https://itunes.apple.com/us/app/spot2fish/id1014977861?mt=8)
* [Spot2fish in angular](http://www.spot2fish.com/)
* Make something cool? [Share it with me.](https://twitter.com/_s_mas)
