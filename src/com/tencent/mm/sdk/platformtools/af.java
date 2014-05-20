package com.tencent.mm.sdk.platformtools;

import java.util.LinkedHashMap;

public class af
{
  private final LinkedHashMap cJ;
  private int cK;
  private int cL;
  private int cM;
  private int cN;
  private int cO;
  private int cXi;
  private int size;

  public af(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.cK = paramInt;
    this.cJ = new LinkedHashMap(0, 0.75F, true);
  }

  private int j(Object paramObject1, Object paramObject2)
  {
    int i = sizeOf(paramObject1, paramObject2);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramObject1 + "=" + paramObject2);
    return i;
  }

  public final boolean Y(Object paramObject)
  {
    try
    {
      boolean bool = this.cJ.containsKey(paramObject);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected Object create(Object paramObject)
  {
    return null;
  }

  protected void entryRemoved(boolean paramBoolean, Object paramObject1, Object paramObject2, Object paramObject3)
  {
  }

  // ERROR //
  public void g(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 74	com/tencent/mm/sdk/platformtools/af:size	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 36	com/tencent/mm/sdk/platformtools/af:cJ	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 78	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 74	com/tencent/mm/sdk/platformtools/af:size	I
    //   23: ifeq +41 -> 64
    //   26: new 43	java/lang/IllegalStateException
    //   29: dup
    //   30: new 45	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 83	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 88	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 90
    //   49: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 62	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 74	com/tencent/mm/sdk/platformtools/af:size	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 36	com/tencent/mm/sdk/platformtools/af:cJ	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 78	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 36	com/tencent/mm/sdk/platformtools/af:cJ	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 94	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 100 1 0
    //   97: invokeinterface 106 1 0
    //   102: checkcast 108	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: invokeinterface 111 1 0
    //   112: astore 4
    //   114: aload_3
    //   115: invokeinterface 114 1 0
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 36	com/tencent/mm/sdk/platformtools/af:cJ	Ljava/util/LinkedHashMap;
    //   126: aload 4
    //   128: invokevirtual 117	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   131: pop
    //   132: aload_0
    //   133: aload_0
    //   134: getfield 74	com/tencent/mm/sdk/platformtools/af:size	I
    //   137: aload_0
    //   138: aload 4
    //   140: aload 5
    //   142: invokespecial 119	com/tencent/mm/sdk/platformtools/af:j	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   145: isub
    //   146: putfield 74	com/tencent/mm/sdk/platformtools/af:size	I
    //   149: aload_0
    //   150: iconst_1
    //   151: aload_0
    //   152: getfield 121	com/tencent/mm/sdk/platformtools/af:cM	I
    //   155: iadd
    //   156: putfield 121	com/tencent/mm/sdk/platformtools/af:cM	I
    //   159: aload_0
    //   160: monitorexit
    //   161: aload_0
    //   162: iconst_1
    //   163: aload 4
    //   165: aload 5
    //   167: aconst_null
    //   168: invokevirtual 123	com/tencent/mm/sdk/platformtools/af:entryRemoved	(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   171: goto -171 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	161	59	finally
  }

  public final Object get(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("key == null");
    Object localObject3;
    try
    {
      Object localObject2 = this.cJ.get(paramObject);
      if (localObject2 != null)
      {
        this.cN = (1 + this.cN);
        return localObject2;
      }
      this.cO = (1 + this.cO);
      localObject3 = create(paramObject);
      if (localObject3 == null)
        return null;
    }
    finally
    {
    }
    try
    {
      this.cXi = (1 + this.cXi);
      Object localObject5 = this.cJ.put(paramObject, localObject3);
      if (localObject5 != null)
        this.cJ.put(paramObject, localObject5);
      while (true)
      {
        if (localObject5 == null)
          break;
        entryRemoved(false, paramObject, localObject3, localObject5);
        return localObject5;
        this.size += j(paramObject, localObject3);
      }
    }
    finally
    {
    }
    g(this.cK);
    return localObject3;
  }

  public final Object put(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.cL = (1 + this.cL);
      this.size += j(paramObject1, paramObject2);
      Object localObject2 = this.cJ.put(paramObject1, paramObject2);
      if (localObject2 != null)
        this.size -= j(paramObject1, localObject2);
      if (localObject2 != null)
        entryRemoved(false, paramObject1, localObject2, paramObject2);
      g(this.cK);
      return localObject2;
    }
    finally
    {
    }
  }

  public final Object remove(Object paramObject)
  {
    if (paramObject == null)
      throw new NullPointerException("key == null");
    try
    {
      Object localObject2 = this.cJ.remove(paramObject);
      if (localObject2 != null)
        this.size -= j(paramObject, localObject2);
      if (localObject2 != null)
        entryRemoved(false, paramObject, localObject2, null);
      return localObject2;
    }
    finally
    {
    }
  }

  protected int sizeOf(Object paramObject1, Object paramObject2)
  {
    return 1;
  }

  public final String toString()
  {
    try
    {
      int i = this.cN + this.cO;
      int j = 0;
      if (i != 0)
        j = 100 * this.cN / i;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.cK);
      arrayOfObject[1] = Integer.valueOf(this.cN);
      arrayOfObject[2] = Integer.valueOf(this.cO);
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
 * Qualified Name:     com.tencent.mm.sdk.platformtools.af
 * JD-Core Version:    0.6.2
 */