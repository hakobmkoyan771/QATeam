#!/usr/bin/python3
import pytest
import TasksRepo.app as tst
 
def test_hello():
    assert tst.hello() == "Hello!"
