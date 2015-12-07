var _qrt = require("datawire-quark-core");

// CLASS Handler
function Handler() {
    this.__init_fields__();
}
exports.Handler = Handler;

function Handler__init_fields__() {}
Handler.prototype.__init_fields__ = Handler__init_fields__;

function Handler_onSlackEvent(event) {
    _qrt.print((event).type);
    if (((event).user) !== (null)) {
        _qrt.print(((event).user).user);
    }
    if (((event).channel) !== (null)) {
        _qrt.print(((event).channel).channel);
    }
}
Handler.prototype.onSlackEvent = Handler_onSlackEvent;

function Handler_onHello(hello) {
    (this).onSlackEvent(hello);
}
Handler.prototype.onHello = Handler_onHello;

function Handler_onSlackError(error) {
    (this).onSlackEvent(error);
}
Handler.prototype.onSlackError = Handler_onSlackError;

function Handler_onMessage(message) {
    (this).onSlackEvent(message);
}
Handler.prototype.onMessage = Handler_onMessage;