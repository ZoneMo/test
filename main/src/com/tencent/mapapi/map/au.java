package com.tencent.mapapi.map;

final class au extends am
  implements av
{
  bl Wy = null;

  public au(String paramString)
  {
    super(paramString, null);
  }

  // ERROR //
  private Boolean g(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +8 -> 9
    //   4: iconst_0
    //   5: invokestatic 25	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   8: areturn
    //   9: new 27	java/lang/String
    //   12: dup
    //   13: aload_1
    //   14: aload_0
    //   15: getfield 31	com/tencent/mapapi/map/au:UK	Ljava/lang/String;
    //   18: invokespecial 34	java/lang/String:<init>	([BLjava/lang/String;)V
    //   21: astore_2
    //   22: new 36	org/json/JSONObject
    //   25: dup
    //   26: aload_2
    //   27: invokespecial 38	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   30: astore_3
    //   31: aload_3
    //   32: ldc 40
    //   34: invokevirtual 44	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   37: astore 5
    //   39: aload 5
    //   41: ldc 46
    //   43: invokevirtual 50	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   46: istore 7
    //   48: aload_0
    //   49: getfield 15	com/tencent/mapapi/map/au:Wy	Lcom/tencent/mapapi/map/bl;
    //   52: ifnull +19 -> 71
    //   55: aload_0
    //   56: getfield 15	com/tencent/mapapi/map/au:Wy	Lcom/tencent/mapapi/map/bl;
    //   59: pop
    //   60: iload 7
    //   62: ifne +35 -> 97
    //   65: getstatic 56	com/tencent/mapapi/map/br:XG	Lcom/tencent/mapapi/map/br;
    //   68: putstatic 61	com/tencent/mapapi/map/bq:VK	Lcom/tencent/mapapi/map/br;
    //   71: iconst_1
    //   72: invokestatic 25	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   75: areturn
    //   76: astore 9
    //   78: iconst_0
    //   79: invokestatic 25	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   82: areturn
    //   83: astore 4
    //   85: iconst_0
    //   86: invokestatic 25	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   89: areturn
    //   90: astore 6
    //   92: iconst_0
    //   93: invokestatic 25	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   96: areturn
    //   97: getstatic 64	com/tencent/mapapi/map/br:XH	Lcom/tencent/mapapi/map/br;
    //   100: putstatic 61	com/tencent/mapapi/map/bq:VK	Lcom/tencent/mapapi/map/br;
    //   103: goto -32 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   22	31	76	org/json/JSONException
    //   31	39	83	org/json/JSONException
    //   39	48	90	org/json/JSONException
  }

  public final Boolean mJ()
  {
    return (Boolean)mH();
  }

  public final void me()
  {
    this.Wy = null;
  }

  protected final String mj()
  {
    return (String)this.Wr;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.au
 * JD-Core Version:    0.6.2
 */