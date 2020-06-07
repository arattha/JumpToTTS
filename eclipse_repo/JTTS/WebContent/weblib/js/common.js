function clickPrevBtn(fn) {
		if (typeof(fn) === 'function')
			fn();
		else
			history.back();
	}