#!/usr/bin/python3
import pytest
import GitRepo.Python.Homework1.Banana as tst

def test_main():
    assert tst.main(5) == 5
