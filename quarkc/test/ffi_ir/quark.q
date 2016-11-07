namespace quark {

    primitive void {}

    primitive bool {
        bool __eq__(bool b);
    }

    primitive int {
        int __add__(int other);
        int __sub__(int other);
        int __neg__();
        int __mul__(int other);
        bool __eq__(int other);
    }

    primitive String {
        String __add__(String other);
        bool __eq__(String other);
    }

    primitive Map<K,V> {
        void __setitem__(K key, V value);
        V __getitem__(K key);
    }

    void assertEqual(void a, void b);

}