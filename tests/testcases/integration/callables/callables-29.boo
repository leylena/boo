﻿import System
import NUnit.Framework

callable Function(item) as object

callable StringFunction(item as string) as string

class Handler:
	[property(Prefix)]
	_prefix
	
	def Handle(value):
		return "${_prefix} - ${value}"

fn = cast(StringFunction, cast(Function, Handler(Prefix: "Function").Handle))
Assert.AreEqual("Function - 14", fn("14"))