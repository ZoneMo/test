package com.google.android.gms.internal;

import java.util.LinkedHashMap;

public class r
{
  private final LinkedHashMap LE;
  private int LF;
  private int LG;
  private int LH;
  private int LI;
  private int LJ;
  private int size;

  private int d(Object paramObject1, Object paramObject2)
  {
    int i = K(paramObject2);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramObject1 + "=" + paramObject2);
    return i;
  }

  protected int K(Object paramObject)
  {
    return 1;
  }

  // ERROR //
  public final void g(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/google/android/gms/internal/r:size	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 49	com/google/android/gms/internal/r:LE	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 55	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 47	com/google/android/gms/internal/r:size	I
    //   23: ifeq +41 -> 64
    //   26: new 21	java/lang/IllegalStateException
    //   29: dup
    //   30: new 23	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 58	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 62	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 67	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 69
    //   49: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 43	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 47	com/google/android/gms/internal/r:size	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 49	com/google/android/gms/internal/r:LE	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 55	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 49	com/google/android/gms/internal/r:LE	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 73	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 79 1 0
    //   97: invokeinterface 85 1 0
    //   102: checkcast 87	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 90 1 0
    //   112: astore 4
    //   114: aload_3
    //   115: invokeinterface 93 1 0
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 49	com/google/android/gms/internal/r:LE	Ljava/util/LinkedHashMap;
    //   126: aload 4
    //   128: invokevirtual 97	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: aload_0
    //   133: aload_0
    //   134: getfield 47	com/google/android/gms/internal/r:size	I
    //   137: aload_0
    //   138: aload 4
    //   140: aload 5
    //   142: invokespecial 99	com/google/android/gms/internal/r:d	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   145: isub
    //   146: putfield 47	com/google/android/gms/internal/r:size	I
    //   149: aload_0
    //   150: iconst_1
    //   151: aload_0
    //   152: getfield 101	com/google/android/gms/internal/r:LH	I
    //   155: iadd
    //   156: putfield 101	com/google/android/gms/internal/r:LH	I
    //   159: aload_0
    //   160: monitorexit
    //   161: goto -161 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	161	59	finally
  }

  public final Object put(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.LG = (1 + this.LG);
      this.size += d(paramObject1, paramObject2);
      Object localObject2 = this.LE.put(paramObject1, paramObject2);
      if (localObject2 != null)
        this.size -= d(paramObject1, localObject2);
      g(this.LF);
      return localObject2;
    }
    finally
    {
    }
  }

  public final String toString()
  {
    try
    {
      int i = this.LI + this.LJ;
      int j = 0;
      if (i != 0)
        j = 100 * this.LI / i;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.LF);
      arrayOfObject[1] = Integer.valueOf(this.LI);
      arrayOfObject[2] = Integer.valueOf(this.LJ);
      arrayOfObject[3] = Integer.valueOf(j);
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      return str;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.r
 * JD-Core Version:    0.6.2
 */