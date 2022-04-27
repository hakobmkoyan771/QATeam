#!/usr/bin/python3
import pytest
import Students.Python.Homework1.Banana as tst

def test_main():
    assert tst.main(5) == 5
