package com.tencent.mm.ap;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import junit.framework.Assert;

public class i
  implements af
{
  private String TAG = "MicroMsg.SqliteDB";
  private long cLj = 0L;
  private j gjB = null;
  private a gjC = new a();
  private String gjD = "";
  private String gjE = "";
  protected f gjm = null;

  public i()
  {
  }

  public i(j paramj)
  {
    this.gjB = paramj;
  }

  public static boolean b(i parami, String paramString)
  {
    return f.a(parami.gjm, paramString);
  }

  public static String bQ(String paramString)
  {
    if (cj.hX(paramString))
      return "";
    return DatabaseUtils.sqlEscapeString(paramString);
  }

  private void vO(String paramString)
  {
    String str1 = al.azw();
    String str2 = al.getPackageName();
    aa.d(this.TAG, "check process :[%s] [%s] path[%s]", new Object[] { str1, str2, paramString });
    if ((str1 != null) && (str2 != null) && (!str2.equals(str1)))
      Assert.assertTrue("processName:" + str1 + "  packagename:" + str2, false);
  }

  public final Cursor K(String paramString, boolean paramBoolean)
  {
    if (!cj.hX(paramString));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("sql is null ", bool);
      if (isOpen())
        break;
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return c.aDv();
    }
    b.begin();
    try
    {
      Cursor localCursor = this.gjm.K(paramString, paramBoolean);
      b.a(paramString, localCursor, this.cLj);
      return localCursor;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "execSQL Error :" + localException.getMessage());
      b.aDu();
    }
    return c.aDv();
  }

  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4)
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return c.aDv();
    }
    b.begin();
    try
    {
      Cursor localCursor = this.gjm.a(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4);
      b.a(paramString1, localCursor, this.cLj);
      return localCursor;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "execSQL Error :" + localException.getMessage());
      b.aDu();
    }
    return c.aDv();
  }

  public final boolean a(String paramString1, String paramString2, long paramLong, String paramString3, HashMap paramHashMap, boolean paramBoolean)
  {
    int i = paramString1.lastIndexOf("/");
    if (i != -1)
      this.TAG = (this.TAG + "." + paramString1.substring(i + 1));
    vO(paramString2);
    if ((this.gjC.a(paramString1, paramString2, paramLong, paramString3, paramHashMap, paramBoolean)) && (this.gjC.aDr() != null))
    {
      this.gjE = this.gjC.aDs();
      this.gjm = this.gjC.aDr();
      return true;
    }
    this.gjE = this.gjC.aDs();
    this.gjm = null;
    this.gjC = null;
    aa.d(this.TAG, "initDB failed.");
    return false;
  }

  public final String aDA()
  {
    return this.gjE;
  }

  public final long aDB()
  {
    try
    {
      long l = ca(-1L);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void aI(String paramString)
  {
    if (this.gjm == null)
      return;
    if (this.gjB != null)
      this.gjB.ta();
    String str1 = this.TAG;
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Boolean.valueOf(inTransaction());
    arrayOfObject1[1] = Long.toHexString(this.cLj);
    arrayOfObject1[2] = Long.valueOf(Thread.currentThread().getId());
    arrayOfObject1[3] = cj.azV();
    aa.c(str1, "begin close db, inTrans:%b ticket:%s  thr:%d {%s}", arrayOfObject1);
    k localk = new k();
    if (paramString != null)
      this.gjD = paramString;
    this.gjm.close();
    this.gjm = null;
    String str2 = this.TAG;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(localk.qh());
    aa.e(str2, "end close db time:%d", arrayOfObject2);
  }

  public final boolean aQ(String paramString1, String paramString2)
  {
    if (!cj.hX(paramString2));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("sql is null ", bool);
      if (isOpen())
        break;
      String str2 = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str2, "DB IS CLOSED ! {%s}", arrayOfObject);
      return false;
    }
    b.begin();
    try
    {
      this.gjm.execSQL(paramString2);
      b.a(paramString2, null, this.cLj);
      return true;
    }
    catch (Exception localException)
    {
      String str1 = localException.getMessage();
      aa.e(this.TAG, "execSQL Error :" + str1);
      if ((str1 != null) && (str1.contains("no such table")))
      {
        this.gjC.aDt();
        Assert.assertTrue("clean ini cache and reboot", false);
      }
      b.aDu();
    }
    return false;
  }

  public final boolean b(String paramString, HashMap paramHashMap)
  {
    int i = paramString.lastIndexOf("/");
    if (i != -1)
      this.TAG = (this.TAG + "." + paramString.substring(i + 1));
    vO(paramString);
    if ((this.gjC.a(paramString, paramHashMap)) && (this.gjC.aDr() != null))
    {
      this.gjm = this.gjC.aDr();
      return true;
    }
    this.gjm = null;
    this.gjC = null;
    aa.e(this.TAG, "initDB failed.");
    return false;
  }

  public final long ca(long paramLong)
  {
    long l1 = -1L;
    while (true)
    {
      long l2;
      try
      {
        l2 = Thread.currentThread().getId();
        String str1 = this.TAG;
        Object[] arrayOfObject1 = new Object[5];
        arrayOfObject1[0] = Long.valueOf(paramLong);
        arrayOfObject1[1] = Long.valueOf(l2);
        arrayOfObject1[2] = Long.valueOf(this.cLj);
        arrayOfObject1[3] = Boolean.valueOf(isOpen());
        arrayOfObject1[4] = cj.azV();
        aa.e(str1, "beginTransaction thr:(%d,%d) ticket:%d db:%b  {%s}", arrayOfObject1);
        if (!isOpen())
        {
          String str3 = this.TAG;
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = cj.azV();
          aa.b(str3, "DB IS CLOSED ! {%s}", arrayOfObject3);
          l1 = -4L;
          return l1;
        }
        if (this.cLj > 0L)
        {
          aa.e(this.TAG, "ERROR beginTransaction transactionTicket:" + this.cLj);
          continue;
        }
      }
      finally
      {
      }
      if ((!an.azB()) && (paramLong == l1))
      {
        String str2 = this.TAG;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Long.valueOf(paramLong);
        arrayOfObject2[1] = Long.valueOf(l2);
        aa.b(str2, "FORBID: beginTrans UNKNOW_THREAD ParamID:%d nowThr:%d", arrayOfObject2);
        l1 = -2L;
      }
      else
      {
        try
        {
          b.begin();
          this.gjm.beginTransaction();
          b.a("beginTrans", null, 0L);
          this.cLj = (0x7FFFFFFF & cj.FD());
          this.cLj |= (l2 & 0x7FFFFFFF) << 32;
          if (this.gjB != null)
            this.gjB.tb();
          l1 = this.cLj;
        }
        catch (Exception localException)
        {
          aa.e(this.TAG, "beginTransaction Error :" + localException.getMessage());
          b.aDu();
          l1 = -3L;
        }
      }
    }
  }

  // ERROR //
  public final int cb(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 225	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   5: invokevirtual 228	java/lang/Thread:getId	()J
    //   8: lstore 4
    //   10: aload_0
    //   11: getfield 26	com/tencent/mm/ap/i:TAG	Ljava/lang/String;
    //   14: astore 6
    //   16: iconst_5
    //   17: anewarray 4	java/lang/Object
    //   20: astore 7
    //   22: aload 7
    //   24: iconst_0
    //   25: lload 4
    //   27: invokestatic 231	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   30: aastore
    //   31: aload 7
    //   33: iconst_1
    //   34: lload_1
    //   35: invokestatic 231	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   38: aastore
    //   39: aload 7
    //   41: iconst_2
    //   42: aload_0
    //   43: getfield 43	com/tencent/mm/ap/i:cLj	J
    //   46: invokestatic 231	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   49: aastore
    //   50: aload 7
    //   52: iconst_3
    //   53: aload_0
    //   54: invokevirtual 121	com/tencent/mm/ap/i:isOpen	()Z
    //   57: invokestatic 213	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   60: aastore
    //   61: aload 7
    //   63: iconst_4
    //   64: invokestatic 125	com/tencent/mm/sdk/platformtools/cj:azV	()Lcom/tencent/mm/sdk/platformtools/cm;
    //   67: aastore
    //   68: aload 6
    //   70: ldc_w 307
    //   73: aload 7
    //   75: invokestatic 249	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   78: aload_0
    //   79: invokevirtual 121	com/tencent/mm/ap/i:isOpen	()Z
    //   82: ifne +40 -> 122
    //   85: aload_0
    //   86: getfield 26	com/tencent/mm/ap/i:TAG	Ljava/lang/String;
    //   89: astore 15
    //   91: iconst_1
    //   92: anewarray 4	java/lang/Object
    //   95: astore 16
    //   97: aload 16
    //   99: iconst_0
    //   100: invokestatic 125	com/tencent/mm/sdk/platformtools/cj:azV	()Lcom/tencent/mm/sdk/platformtools/cm;
    //   103: aastore
    //   104: aload 15
    //   106: ldc 127
    //   108: aload 16
    //   110: invokestatic 129	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   113: bipush 252
    //   115: istore 12
    //   117: aload_0
    //   118: monitorexit
    //   119: iload 12
    //   121: ireturn
    //   122: lload_1
    //   123: aload_0
    //   124: getfield 43	com/tencent/mm/ap/i:cLj	J
    //   127: lcmp
    //   128: ifeq +46 -> 174
    //   131: aload_0
    //   132: getfield 26	com/tencent/mm/ap/i:TAG	Ljava/lang/String;
    //   135: new 92	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 309
    //   142: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: lload_1
    //   146: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   149: ldc_w 311
    //   152: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload_0
    //   156: getfield 43	com/tencent/mm/ap/i:cLj	J
    //   159: invokevirtual 277	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   162: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 154	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: iconst_m1
    //   169: istore 12
    //   171: goto -54 -> 117
    //   174: ldc2_w 292
    //   177: lload_1
    //   178: bipush 32
    //   180: lshr
    //   181: land
    //   182: lstore 8
    //   184: lload 8
    //   186: lload 4
    //   188: lcmp
    //   189: ifeq +58 -> 247
    //   192: aload_0
    //   193: getfield 26	com/tencent/mm/ap/i:TAG	Ljava/lang/String;
    //   196: astore 10
    //   198: iconst_3
    //   199: anewarray 4	java/lang/Object
    //   202: astore 11
    //   204: aload 11
    //   206: iconst_0
    //   207: lload_1
    //   208: invokestatic 219	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   211: aastore
    //   212: aload 11
    //   214: iconst_1
    //   215: lload 8
    //   217: invokestatic 231	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   220: aastore
    //   221: aload 11
    //   223: iconst_2
    //   224: lload 4
    //   226: invokestatic 231	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   229: aastore
    //   230: aload 10
    //   232: ldc_w 313
    //   235: aload 11
    //   237: invokestatic 129	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   240: bipush 254
    //   242: istore 12
    //   244: goto -127 -> 117
    //   247: invokestatic 140	com/tencent/mm/ap/b:begin	()V
    //   250: aload_0
    //   251: getfield 28	com/tencent/mm/ap/i:gjm	Lcom/tencent/mm/ap/f;
    //   254: invokevirtual 316	com/tencent/mm/ap/f:endTransaction	()V
    //   257: ldc_w 318
    //   260: aconst_null
    //   261: lconst_0
    //   262: invokestatic 145	com/tencent/mm/ap/b:a	(Ljava/lang/String;Landroid/database/Cursor;J)V
    //   265: aload_0
    //   266: lconst_0
    //   267: putfield 43	com/tencent/mm/ap/i:cLj	J
    //   270: aload_0
    //   271: getfield 30	com/tencent/mm/ap/i:gjB	Lcom/tencent/mm/ap/j;
    //   274: astore 14
    //   276: iconst_0
    //   277: istore 12
    //   279: aload 14
    //   281: ifnull -164 -> 117
    //   284: aload_0
    //   285: getfield 30	com/tencent/mm/ap/i:gjB	Lcom/tencent/mm/ap/j;
    //   288: invokeinterface 321 1 0
    //   293: iconst_0
    //   294: istore 12
    //   296: goto -179 -> 117
    //   299: astore_3
    //   300: aload_0
    //   301: monitorexit
    //   302: aload_3
    //   303: athrow
    //   304: astore 13
    //   306: aload_0
    //   307: getfield 26	com/tencent/mm/ap/i:TAG	Ljava/lang/String;
    //   310: new 92	java/lang/StringBuilder
    //   313: dup
    //   314: ldc_w 323
    //   317: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   320: aload 13
    //   322: invokevirtual 150	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   325: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   331: invokestatic 154	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   334: invokestatic 157	com/tencent/mm/ap/b:aDu	()V
    //   337: bipush 253
    //   339: istore 12
    //   341: goto -224 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   2	113	299	finally
    //   122	168	299	finally
    //   192	240	299	finally
    //   247	265	299	finally
    //   265	276	299	finally
    //   284	293	299	finally
    //   306	337	299	finally
    //   247	265	304	java/lang/Exception
  }

  public final int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return -2;
    }
    b.begin();
    try
    {
      int i = this.gjm.delete(paramString1, paramString2, paramArrayOfString);
      b.a(paramString1, null, this.cLj);
      return i;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "delete Error :" + localException.getMessage());
      b.aDu();
    }
    return -1;
  }

  protected void finalize()
  {
    aI(null);
  }

  public final String getKey()
  {
    if (this.gjC == null)
      return null;
    return this.gjC.getKey();
  }

  public final String getPath()
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return null;
    }
    return this.gjm.getPath();
  }

  public final boolean inTransaction()
  {
    boolean bool1 = false;
    try
    {
      if (!isOpen())
      {
        String str = this.TAG;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = cj.azV();
        aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      }
      while (true)
      {
        return bool1;
        long l = this.cLj;
        boolean bool2 = l < 0L;
        bool1 = false;
        if (bool2)
          bool1 = true;
      }
    }
    finally
    {
    }
  }

  public final long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return -2L;
    }
    b.begin();
    try
    {
      long l = this.gjm.insert(paramString1, paramString2, paramContentValues);
      b.a(paramString1, null, this.cLj);
      return l;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "insert Error :" + localException.getMessage());
      b.aDu();
    }
    return -1L;
  }

  public final boolean isOpen()
  {
    if ((this.gjm != null) && (this.gjm.isOpen()))
      return true;
    Assert.assertTrue("DB has been closed :[" + this.gjD + "]", cj.hX(this.gjD));
    return false;
  }

  public final Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    if (!cj.hX(paramString));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("sql is null ", bool);
      if (isOpen())
        break;
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return c.aDv();
    }
    b.begin();
    try
    {
      Cursor localCursor = this.gjm.rawQuery(paramString, paramArrayOfString);
      b.a(paramString, localCursor, this.cLj);
      return localCursor;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "execSQL Error :" + localException.getMessage());
      b.aDu();
    }
    return c.aDv();
  }

  public final long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return -2L;
    }
    b.begin();
    try
    {
      long l = this.gjm.replace(paramString1, paramString2, paramContentValues);
      b.a(paramString1, null, this.cLj);
      return l;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "repalce  Error :" + localException.getMessage());
      b.aDu();
    }
    return -1L;
  }

  public void sh()
  {
    aI(null);
  }

  public final int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    if (!isOpen())
    {
      String str = this.TAG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = cj.azV();
      aa.b(str, "DB IS CLOSED ! {%s}", arrayOfObject);
      return -2;
    }
    b.begin();
    try
    {
      int i = this.gjm.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      b.a(paramString1, null, this.cLj);
      return i;
    }
    catch (Exception localException)
    {
      aa.e(this.TAG, "update Error :" + localException.getMessage());
      b.aDu();
    }
    return -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.i
 * JD-Core Version:    0.6.2
 */