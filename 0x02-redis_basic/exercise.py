#!/usr/bin/env python3
""" Exercise """


from uuid import uuid4 as uuid
import redis


class Cache:
    """ Cache class """

    def __init__():
        """ init method """
        _redis = redis.Redis()
        _redis.flushdb()

    def store(data):
        """ store data in redis and return id"""
        data_id = uuid()
        _redis.hset(data_id, data)
        return data_id
