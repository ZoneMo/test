package info.guardianproject.database.sqlcipher;

public class Pair
{
    public final Object first;
    public final Object second;
    
    public Pair(final Object first, final Object second) {
        super();
        this.first = first;
        this.second = second;
    }
    
    public static Pair create(final Object o, final Object o2) {
        return new Pair(o, o2);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof Pair)) {
                return false;
            }
            try {
                final Pair pair = (Pair)o;
                if (!this.first.equals(pair.first) || !this.second.equals(pair.second)) {
                    return false;
                }
            }
            catch (ClassCastException ex) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return 31 * (527 + this.first.hashCode()) + this.second.hashCode();
    }
}
