#!/usr/bin/python3
import pytest
import TasksRepo.Python.Homework1.Fibonacci as tst

def test_main():
    assert tst.main(5) == 5
