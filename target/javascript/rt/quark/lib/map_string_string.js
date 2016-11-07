'use strict';

function check_null(v) {
    if (v === undefined || v === null) {
        return ""
    } else {
        return v
    }
}
exports.Map_string_string___init__ = function() { return new Map() }
exports.Map_string_string___set__ = function(m,k,v) { m.set(k,v) }
exports.Map_string_string___get__ = function(m,k) { return check_null(m.get(k)) }
exports.Map_string_string___len__ = function(m) { return m.size }
