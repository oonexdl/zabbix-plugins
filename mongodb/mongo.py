#!/usr/bin/env python

from pymongo import MongoClient
from pymongo.errors import ConnectionFailure

client = MongoClient(connect=False, serverSelectionTimeoutMS=2)
try:
  client.admin.command('ismaster')
  print(0)
except ConnectionFailure, e:
  print(1)
