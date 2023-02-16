#!/usr/bin/env python3
""" Exercise """

from uuid import uuid4 as uuid
import redis
from typing import Union


class Cache:
    """ Cache class """

    def __init__():
        """ init method """
        self._redis = redis.Redis(host='localhost', port=6379, db=0)
        self._redis.flushdb()

    def store(data) -> Union[str, bytes, int, float]:
        """ store data in redis and return id"""
        data_id = str(uuid())
        self._redis.set(data_id, data)
        return data_id
