namespace quark {

    primitive void {}

    primitive bool {
        bool __eq__(bool b);
        bool __not__();
        bool __or__(bool b);
        bool __and__(bool b);

        Any asAny();
    }

    primitive int {
        int __add__(int other);
        int __sub__(int other);
        int __neg__();
        int __mul__(int other);
        bool __eq__(int other);
        bool __ne__(int other);
        bool __ge__(int other);
        bool __le__(int other);
        bool __gt__(int other);
        bool __lt__(int other);

        Any asAny();
    }

    primitive Any {
        int type();                       // returns 0 for null, returns -1 for undecodable
        bool asBool();                    // returns bool iff type() returned 1
        int asInt();                      // returns int iff type() returned 2
        String asString();                // returns String iff type() returned 3
        // float asFloat();                  // returns float iff type() returned 4
        List<Any> asList();               // returns List<Any> iff type() returned 5. This may return a copy.
        Map<Scalar,Any> asMap();          // returns Map<Scalar,Any> iff type() returned 6. This may return a copy.
        // XXX: mumble_mumble asInterface(); // returns mumble_mumble iff type() returned 7
    }

    /*
    primitive float {
        bool __eq__(float other);
    }
    */

    primitive Scalar {
        int type();                       // returns 0 for null, returns -1 for undecodable
        bool asBool();                    // returns bool iff type() returned 1
        int asInt();                      // returns int iff type() returned 2
        String asString();                // returns String iff type() returned 3
        // float asFloat();                  // returns float iff type() returned 4
    }

    primitive String {
        String __add__(String other);
        bool __eq__(String other);
        int size();
        String substring(int start, int end);

        Any asAny();
    }

    primitive Map<K,V> {
        void __set__(K key, V value);
        V __get__(K key);
        List<K> keys();
        V remove(K key);
        bool contains(K key);
        void update(Map<K,V> other);
        int size();

        Any asAny();
    }

    primitive List<T> {
        void __set__(int index, T value);
        T __get__(int index);
        int size();
        void append(T element);
        void extend(List<T> other);
        T remove(int index);
        bool index(T element);

        Any asAny();
    }

    void assertEqual(void a, void b);
}
