import pprint
import json
import urllib2
import yaml
import time
from fn_cache import Memoized

import ipdb

import urllib
import urlparse

class Hipchat():
    def __init__(self, config):
        self.endpoint = "https://api.hipchat.com/v2/"
        self.auth_token = config["hipchat_auth_token"]

    def users(self):
        # TODO: create a function that you pass 'name', 'email', 'rights', etc 
        # to make this more modular
        url = self.endpoint + "user?auth_token=" + self.auth_token
        request = urllib2.Request(url)
        response = urllib2.urlopen(request)
        response = json.load(response)
        response = response["items"]
        return [user["name"] for user in response]

