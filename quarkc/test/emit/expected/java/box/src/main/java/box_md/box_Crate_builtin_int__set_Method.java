package box_md;

public class box_Crate_builtin_int__set_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public box_Crate_builtin_int__set_Method() {
        super("builtin.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        box.Crate<Integer> obj = (box.Crate<Integer>) (object);
        (obj).set((Integer) ((args).get(0)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}