#!/usr/bin/python3
import pytest
import TasksRepo.Python.Homework1.app as tst

def test_hello():
    assert tst.hello() == "Hello!"
