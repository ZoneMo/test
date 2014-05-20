package com.tencent.mm.storage;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.mm.a.c;
import com.tencent.mm.c.b.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.Map;

public final class y extends j
{
  protected static ae cfX = localae;
  public static int ggZ;
  public static int ghc = 17;
  public static int ghd = 32;
  public static int ghe = 33;
  public static int ghf = 34;
  public static int ghg = 35;
  public static int ghh = 36;
  public static int ghi = 37;
  public static int ghj = 38;
  public static int ghk = 49;
  public static int ghl = 50;
  public static int ghm;
  public static int ghn;
  public static int gho;
  public static int ghp;
  public static int ghq;
  public static int ghr;
  public static int ghs;
  public static int ght;
  public static int ghu;
  public static int ghv;
  public static int ghw;
  public static String ghx;
  private final String dNW;
  public String ghy;

  static
  {
    ggZ = 65;
    ghm = 81;
    ghn = 1;
    gho = 2;
    ghp = 3;
    ghq = 4;
    ghr = 10;
    ghs = 11;
    ght = 0;
    ghu = 1;
    ghv = 2;
    ghw = 3;
    ghx = "0_0";
    ae localae = new ae();
    localae.cAj = new Field[18];
    localae.bZx = new String[19];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "md5";
    localae.gfA.put("md5", "TEXT");
    localStringBuilder.append(" md5 TEXT PRIMARY KEY  COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.gfz = "md5";
    localae.bZx[1] = "svrid";
    localae.gfA.put("svrid", "TEXT");
    localStringBuilder.append(" svrid TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "catalog";
    localae.gfA.put("catalog", "INTEGER");
    localStringBuilder.append(" catalog INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[3] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[4] = "size";
    localae.gfA.put("size", "INTEGER");
    localStringBuilder.append(" size INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[5] = "start";
    localae.gfA.put("start", "INTEGER");
    localStringBuilder.append(" start INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[6] = "state";
    localae.gfA.put("state", "INTEGER");
    localStringBuilder.append(" state INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[7] = "name";
    localae.gfA.put("name", "TEXT");
    localStringBuilder.append(" name TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "content";
    localae.gfA.put("content", "TEXT");
    localStringBuilder.append(" content TEXT");
    localStringBuilder.append(", ");
    localae.bZx[9] = "reserved1";
    localae.gfA.put("reserved1", "TEXT");
    localStringBuilder.append(" reserved1 TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "reserved2";
    localae.gfA.put("reserved2", "TEXT");
    localStringBuilder.append(" reserved2 TEXT");
    localStringBuilder.append(", ");
    localae.bZx[11] = "reserved3";
    localae.gfA.put("reserved3", "INTEGER");
    localStringBuilder.append(" reserved3 INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[12] = "reserved4";
    localae.gfA.put("reserved4", "INTEGER");
    localStringBuilder.append(" reserved4 INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[13] = "app_id";
    localae.gfA.put("app_id", "TEXT");
    localStringBuilder.append(" app_id TEXT");
    localStringBuilder.append(", ");
    localae.bZx[14] = "groupId";
    localae.gfA.put("groupId", "TEXT");
    localStringBuilder.append(" groupId TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[15] = "lastUseTime";
    localae.gfA.put("lastUseTime", "LONG");
    localStringBuilder.append(" lastUseTime LONG");
    localStringBuilder.append(", ");
    localae.bZx[16] = "framesInfo";
    localae.gfA.put("framesInfo", "TEXT");
    localStringBuilder.append(" framesInfo TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[17] = "idx";
    localae.gfA.put("idx", "INTEGER");
    localStringBuilder.append(" idx INTEGER default '0' ");
    localae.bZx[18] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public y()
  {
    this.dNW = be.uz().sJ();
    reset();
  }

  public y(String paramString)
  {
    this.dNW = paramString;
    reset();
  }

  public static InputStream al(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (cj.hX(paramString)))
      return null;
    try
    {
      String str = paramString.split("\\.")[0];
      aa.e("MicroMsg.EmojiInfo", "emoji drawable name is %s", new Object[] { str });
      int i = paramContext.getResources().getIdentifier(str, "drawable", paramContext.getPackageName());
      InputStream localInputStream = paramContext.getResources().openRawResource(i);
      return localInputStream;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.c("MicroMsg.EmojiInfo", "get emoji file fail, %s", arrayOfObject);
    }
    return null;
  }

  public static boolean ma(int paramInt)
  {
    return (paramInt == ghl) || (paramInt == ghk);
  }

  public final boolean aBA()
  {
    return ((this.field_type != gho) && (this.field_type != ghr)) || ((aBL().length() > 0) && (!aBL().equals(ghx)));
  }

  public final boolean aBB()
  {
    return (this.field_catalog == ghc) || (this.field_catalog == ghl) || (this.field_catalog == ghk);
  }

  public final boolean aBC()
  {
    return (this.field_type == gho) || (this.field_type == ghr);
  }

  public final boolean aBD()
  {
    return (TextUtils.isEmpty(this.field_app_id)) && (!TextUtils.isEmpty(this.field_groupId)) && (!this.field_groupId.equals(String.valueOf(w.ggX))) && (!this.field_groupId.equals(String.valueOf(w.ggW))) && (!this.field_groupId.equals(String.valueOf(w.ggY))) && (!this.field_groupId.equals(String.valueOf(ggZ)));
  }

  public final boolean aBE()
  {
    return yK().length() == 32;
  }

  public final String aBF()
  {
    if (this.field_svrid == null)
      return "";
    return this.field_svrid;
  }

  public final int aBG()
  {
    return this.field_catalog;
  }

  public final int aBH()
  {
    return this.field_start;
  }

  public final void aBI()
  {
    this.field_reserved1 = null;
  }

  public final String aBJ()
  {
    return this.field_app_id;
  }

  public final String aBK()
  {
    return this.field_groupId;
  }

  public final String aBL()
  {
    if (TextUtils.isEmpty(this.field_framesInfo))
      return "";
    return this.field_framesInfo;
  }

  public final String aBx()
  {
    return this.dNW;
  }

  public final boolean aBy()
  {
    if ((this.field_catalog == ghc) || (this.field_catalog == ghl) || (this.field_catalog == ghk))
      return true;
    if ((this.field_type == w.ggU) || (!TextUtils.isEmpty(this.field_groupId)));
    for (File localFile = new File(this.dNW + this.field_groupId + File.separator + yK()); ; localFile = new File(this.dNW + yK()))
      return localFile.exists();
  }

  public final boolean aBz()
  {
    if ((this.field_catalog == ghc) || (this.field_catalog == ghl) || (this.field_catalog == ghk))
      return true;
    return new File(this.dNW + this.field_groupId + File.separator + yK()).exists();
  }

  // ERROR //
  public final byte[] aX(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: iload_1
    //   3: iflt +9 -> 12
    //   6: aconst_null
    //   7: astore_3
    //   8: iload_2
    //   9: ifge +5 -> 14
    //   12: aload_3
    //   13: areturn
    //   14: aload_0
    //   15: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   18: getstatic 37	com/tencent/mm/storage/y:ghc	I
    //   21: if_icmpeq +23 -> 44
    //   24: aload_0
    //   25: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   28: getstatic 55	com/tencent/mm/storage/y:ghl	I
    //   31: if_icmpeq +13 -> 44
    //   34: aload_0
    //   35: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   38: getstatic 53	com/tencent/mm/storage/y:ghk	I
    //   41: if_icmpne +94 -> 135
    //   44: iconst_1
    //   45: anewarray 251	java/lang/Object
    //   48: astore 11
    //   50: aload 11
    //   52: iconst_0
    //   53: aload_0
    //   54: invokevirtual 384	com/tencent/mm/storage/y:getName	()Ljava/lang/String;
    //   57: aastore
    //   58: ldc 247
    //   60: ldc_w 386
    //   63: aload 11
    //   65: invokestatic 257	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   68: invokestatic 392	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   71: aload_0
    //   72: invokevirtual 384	com/tencent/mm/storage/y:getName	()Ljava/lang/String;
    //   75: invokestatic 394	com/tencent/mm/storage/y:al	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   78: astore 12
    //   80: aload 12
    //   82: astore 5
    //   84: iload_1
    //   85: i2l
    //   86: lstore 13
    //   88: aload 5
    //   90: lload 13
    //   92: invokevirtual 400	java/io/InputStream:skip	(J)J
    //   95: pop2
    //   96: iload_2
    //   97: newarray byte
    //   99: astore_3
    //   100: aload 5
    //   102: aload_3
    //   103: iconst_0
    //   104: iload_2
    //   105: invokevirtual 404	java/io/InputStream:read	([BII)I
    //   108: pop
    //   109: aload 5
    //   111: ifnull -99 -> 12
    //   114: aload 5
    //   116: invokevirtual 407	java/io/InputStream:close	()V
    //   119: aload_3
    //   120: areturn
    //   121: astore 19
    //   123: aload_3
    //   124: areturn
    //   125: astore 8
    //   127: aload_3
    //   128: ifnull +7 -> 135
    //   131: aload_3
    //   132: invokevirtual 407	java/io/InputStream:close	()V
    //   135: new 102	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   142: aload_0
    //   143: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   146: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload_0
    //   150: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   153: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: astore 9
    //   161: aload_0
    //   162: invokevirtual 409	com/tencent/mm/storage/y:aBD	()Z
    //   165: ifeq +42 -> 207
    //   168: new 102	java/lang/StringBuilder
    //   171: dup
    //   172: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   175: aload_0
    //   176: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   179: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload_0
    //   183: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   186: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   192: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_0
    //   196: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   199: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: astore 9
    //   207: aload 9
    //   209: aload_0
    //   210: getfield 352	com/tencent/mm/storage/y:field_start	I
    //   213: iload_2
    //   214: invokestatic 415	com/tencent/mm/a/c:g	(Ljava/lang/String;II)[B
    //   217: areturn
    //   218: astore 4
    //   220: aconst_null
    //   221: astore 5
    //   223: aload 4
    //   225: astore 6
    //   227: aload 5
    //   229: ifnull +8 -> 237
    //   232: aload 5
    //   234: invokevirtual 407	java/io/InputStream:close	()V
    //   237: aload 6
    //   239: athrow
    //   240: astore 10
    //   242: goto -107 -> 135
    //   245: astore 7
    //   247: goto -10 -> 237
    //   250: astore 6
    //   252: goto -25 -> 227
    //   255: astore 15
    //   257: aload 5
    //   259: astore_3
    //   260: goto -133 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   114	119	121	java/io/IOException
    //   44	80	125	java/io/IOException
    //   44	80	218	finally
    //   131	135	240	java/io/IOException
    //   232	237	245	java/io/IOException
    //   88	109	250	finally
    //   88	109	255	java/io/IOException
  }

  public final boolean apQ()
  {
    return (this.field_catalog == ghl) || (this.field_catalog == ghk);
  }

  // ERROR //
  public final android.graphics.Bitmap bM(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   8: getstatic 37	com/tencent/mm/storage/y:ghc	I
    //   11: if_icmpeq +41 -> 52
    //   14: aload_0
    //   15: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   18: getstatic 327	com/tencent/mm/storage/w:ggX	I
    //   21: if_icmpeq +31 -> 52
    //   24: aload_0
    //   25: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   28: getstatic 55	com/tencent/mm/storage/y:ghl	I
    //   31: if_icmpeq +21 -> 52
    //   34: aload_0
    //   35: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   38: istore 16
    //   40: getstatic 53	com/tencent/mm/storage/y:ghk	I
    //   43: istore 17
    //   45: iload 16
    //   47: iload 17
    //   49: if_icmpne +124 -> 173
    //   52: aload_0
    //   53: invokevirtual 384	com/tencent/mm/storage/y:getName	()Ljava/lang/String;
    //   56: astore 10
    //   58: aload_0
    //   59: getfield 293	com/tencent/mm/storage/y:field_type	I
    //   62: getstatic 63	com/tencent/mm/storage/y:gho	I
    //   65: if_icmpne +19 -> 84
    //   68: aload_0
    //   69: invokevirtual 423	com/tencent/mm/storage/y:getContent	()Ljava/lang/String;
    //   72: invokestatic 239	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   75: ifeq +46 -> 121
    //   78: aload_0
    //   79: invokevirtual 384	com/tencent/mm/storage/y:getName	()Ljava/lang/String;
    //   82: astore 10
    //   84: aload_1
    //   85: aload 10
    //   87: invokestatic 394	com/tencent/mm/storage/y:al	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   90: astore 11
    //   92: aload 11
    //   94: ldc_w 424
    //   97: invokestatic 430	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   100: astore 13
    //   102: aload 13
    //   104: astore 8
    //   106: aload 11
    //   108: ifnull +8 -> 116
    //   111: aload 11
    //   113: invokevirtual 407	java/io/InputStream:close	()V
    //   116: aload_0
    //   117: monitorexit
    //   118: aload 8
    //   120: areturn
    //   121: aload_0
    //   122: invokevirtual 423	com/tencent/mm/storage/y:getContent	()Ljava/lang/String;
    //   125: astore 15
    //   127: aload 15
    //   129: astore 10
    //   131: goto -47 -> 84
    //   134: astore 6
    //   136: aconst_null
    //   137: astore 7
    //   139: aload 7
    //   141: ifnull +8 -> 149
    //   144: aload 7
    //   146: invokevirtual 407	java/io/InputStream:close	()V
    //   149: aconst_null
    //   150: astore 8
    //   152: goto -36 -> 116
    //   155: astore 4
    //   157: aload_2
    //   158: ifnull +7 -> 165
    //   161: aload_2
    //   162: invokevirtual 407	java/io/InputStream:close	()V
    //   165: aload 4
    //   167: athrow
    //   168: astore_3
    //   169: aload_0
    //   170: monitorexit
    //   171: aload_3
    //   172: athrow
    //   173: aload_0
    //   174: invokevirtual 409	com/tencent/mm/storage/y:aBD	()Z
    //   177: ifeq +135 -> 312
    //   180: aload_0
    //   181: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   184: aload_0
    //   185: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   188: aload_0
    //   189: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   192: aload_0
    //   193: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   196: aload_0
    //   197: getfield 293	com/tencent/mm/storage/y:field_type	I
    //   200: invokestatic 435	com/tencent/mm/storage/ab:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    //   203: astore 31
    //   205: aload 31
    //   207: ifnonnull +635 -> 842
    //   210: new 102	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   217: aload_0
    //   218: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   221: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: aload_0
    //   225: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   228: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   234: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload_0
    //   238: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   241: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: ldc_w 437
    //   247: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: astore 32
    //   255: new 368	java/io/File
    //   258: dup
    //   259: aload 32
    //   261: invokespecial 373	java/io/File:<init>	(Ljava/lang/String;)V
    //   264: astore 25
    //   266: aload 25
    //   268: invokevirtual 376	java/io/File:exists	()Z
    //   271: ifeq +116 -> 387
    //   274: new 439	java/io/FileInputStream
    //   277: dup
    //   278: aload 25
    //   280: invokespecial 442	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   283: astore 21
    //   285: aload 21
    //   287: ldc_w 424
    //   290: invokestatic 430	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   293: astore 26
    //   295: aload 26
    //   297: astore 8
    //   299: aload 21
    //   301: invokevirtual 443	java/io/FileInputStream:close	()V
    //   304: goto -188 -> 116
    //   307: astore 27
    //   309: goto -193 -> 116
    //   312: new 368	java/io/File
    //   315: dup
    //   316: new 102	java/lang/StringBuilder
    //   319: dup
    //   320: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   323: aload_0
    //   324: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   327: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: aload_0
    //   331: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   334: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: ldc_w 445
    //   340: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: invokespecial 373	java/io/File:<init>	(Ljava/lang/String;)V
    //   349: astore 25
    //   351: goto -85 -> 266
    //   354: astore 23
    //   356: aconst_null
    //   357: astore 21
    //   359: ldc 247
    //   361: aload 23
    //   363: invokevirtual 446	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   366: invokestatic 449	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   369: aload 21
    //   371: ifnull -222 -> 149
    //   374: aload 21
    //   376: invokevirtual 443	java/io/FileInputStream:close	()V
    //   379: goto -230 -> 149
    //   382: astore 24
    //   384: goto -235 -> 149
    //   387: aload_0
    //   388: invokevirtual 409	com/tencent/mm/storage/y:aBD	()Z
    //   391: ifeq +223 -> 614
    //   394: getstatic 454	android/os/Build$VERSION:SDK_INT	I
    //   397: bipush 19
    //   399: if_icmpge +434 -> 833
    //   402: new 439	java/io/FileInputStream
    //   405: dup
    //   406: new 102	java/lang/StringBuilder
    //   409: dup
    //   410: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   413: aload_0
    //   414: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   417: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: aload_0
    //   421: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   424: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   430: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: aload_0
    //   434: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   437: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   443: invokespecial 455	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   446: astore 21
    //   448: aload 21
    //   450: aload_1
    //   451: invokestatic 461	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   454: invokestatic 430	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   457: astore 30
    //   459: aload 30
    //   461: astore 8
    //   463: aload_0
    //   464: invokevirtual 409	com/tencent/mm/storage/y:aBD	()Z
    //   467: ifeq +197 -> 664
    //   470: ldc 247
    //   472: ldc_w 463
    //   475: invokestatic 466	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   478: new 368	java/io/File
    //   481: dup
    //   482: new 102	java/lang/StringBuilder
    //   485: dup
    //   486: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   489: aload_0
    //   490: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   493: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: aload_0
    //   497: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   500: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   506: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   509: aload_0
    //   510: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   513: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: ldc_w 468
    //   519: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   525: invokespecial 373	java/io/File:<init>	(Ljava/lang/String;)V
    //   528: invokevirtual 376	java/io/File:exists	()Z
    //   531: ifne +65 -> 596
    //   534: getstatic 454	android/os/Build$VERSION:SDK_INT	I
    //   537: bipush 19
    //   539: if_icmpge +57 -> 596
    //   542: aload 8
    //   544: bipush 100
    //   546: getstatic 474	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   549: new 102	java/lang/StringBuilder
    //   552: dup
    //   553: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   556: aload_0
    //   557: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   560: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: aload_0
    //   564: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   567: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   570: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   573: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: aload_0
    //   577: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   580: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   583: ldc_w 468
    //   586: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   589: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   592: iconst_0
    //   593: invokestatic 477	com/tencent/mm/sdk/platformtools/h:a	(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Z)V
    //   596: aload 21
    //   598: ifnull -482 -> 116
    //   601: aload 21
    //   603: invokevirtual 443	java/io/FileInputStream:close	()V
    //   606: goto -490 -> 116
    //   609: astore 29
    //   611: goto -495 -> 116
    //   614: new 439	java/io/FileInputStream
    //   617: dup
    //   618: new 102	java/lang/StringBuilder
    //   621: dup
    //   622: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   625: aload_0
    //   626: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   629: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   632: aload_0
    //   633: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   636: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   639: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   642: invokespecial 455	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   645: astore 21
    //   647: aload 21
    //   649: ldc_w 424
    //   652: invokestatic 430	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   655: astore 28
    //   657: aload 28
    //   659: astore 8
    //   661: goto -198 -> 463
    //   664: aload 8
    //   666: bipush 100
    //   668: getstatic 474	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   671: new 102	java/lang/StringBuilder
    //   674: dup
    //   675: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   678: aload_0
    //   679: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   682: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   685: aload_0
    //   686: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   689: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   692: ldc_w 445
    //   695: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   698: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   701: iconst_0
    //   702: invokestatic 477	com/tencent/mm/sdk/platformtools/h:a	(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Z)V
    //   705: goto -109 -> 596
    //   708: astore 23
    //   710: goto -351 -> 359
    //   713: astore 20
    //   715: aconst_null
    //   716: astore 21
    //   718: ldc 247
    //   720: aload 20
    //   722: invokevirtual 281	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   725: invokestatic 449	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   728: aload 21
    //   730: ifnull -581 -> 149
    //   733: aload 21
    //   735: invokevirtual 443	java/io/FileInputStream:close	()V
    //   738: goto -589 -> 149
    //   741: astore 22
    //   743: goto -594 -> 149
    //   746: astore 18
    //   748: aload_2
    //   749: ifnull +7 -> 756
    //   752: aload_2
    //   753: invokevirtual 443	java/io/FileInputStream:close	()V
    //   756: aload 18
    //   758: athrow
    //   759: astore 14
    //   761: goto -645 -> 116
    //   764: astore 9
    //   766: goto -617 -> 149
    //   769: astore 5
    //   771: goto -606 -> 165
    //   774: astore 19
    //   776: goto -20 -> 756
    //   779: astore 18
    //   781: aload 21
    //   783: astore_2
    //   784: goto -36 -> 748
    //   787: astore 18
    //   789: aload 21
    //   791: astore_2
    //   792: goto -44 -> 748
    //   795: astore 18
    //   797: aload 21
    //   799: astore_2
    //   800: goto -52 -> 748
    //   803: astore 18
    //   805: aload 21
    //   807: astore_2
    //   808: goto -60 -> 748
    //   811: astore 20
    //   813: goto -95 -> 718
    //   816: astore 4
    //   818: aload 11
    //   820: astore_2
    //   821: goto -664 -> 157
    //   824: astore 12
    //   826: aload 11
    //   828: astore 7
    //   830: goto -691 -> 139
    //   833: aconst_null
    //   834: astore 8
    //   836: aconst_null
    //   837: astore 21
    //   839: goto -376 -> 463
    //   842: aload 31
    //   844: astore 32
    //   846: goto -591 -> 255
    //
    // Exception table:
    //   from	to	target	type
    //   52	84	134	java/lang/Exception
    //   84	92	134	java/lang/Exception
    //   121	127	134	java/lang/Exception
    //   52	84	155	finally
    //   84	92	155	finally
    //   121	127	155	finally
    //   4	45	168	finally
    //   111	116	168	finally
    //   144	149	168	finally
    //   161	165	168	finally
    //   165	168	168	finally
    //   299	304	168	finally
    //   374	379	168	finally
    //   601	606	168	finally
    //   733	738	168	finally
    //   752	756	168	finally
    //   756	759	168	finally
    //   299	304	307	java/io/IOException
    //   173	205	354	java/io/FileNotFoundException
    //   210	255	354	java/io/FileNotFoundException
    //   255	266	354	java/io/FileNotFoundException
    //   266	285	354	java/io/FileNotFoundException
    //   312	351	354	java/io/FileNotFoundException
    //   387	448	354	java/io/FileNotFoundException
    //   614	647	354	java/io/FileNotFoundException
    //   374	379	382	java/io/IOException
    //   601	606	609	java/io/IOException
    //   285	295	708	java/io/FileNotFoundException
    //   448	459	708	java/io/FileNotFoundException
    //   463	596	708	java/io/FileNotFoundException
    //   647	657	708	java/io/FileNotFoundException
    //   664	705	708	java/io/FileNotFoundException
    //   173	205	713	java/lang/Exception
    //   210	255	713	java/lang/Exception
    //   255	266	713	java/lang/Exception
    //   266	285	713	java/lang/Exception
    //   312	351	713	java/lang/Exception
    //   387	448	713	java/lang/Exception
    //   614	647	713	java/lang/Exception
    //   733	738	741	java/io/IOException
    //   173	205	746	finally
    //   210	255	746	finally
    //   255	266	746	finally
    //   266	285	746	finally
    //   312	351	746	finally
    //   387	448	746	finally
    //   614	647	746	finally
    //   111	116	759	java/io/IOException
    //   144	149	764	java/io/IOException
    //   161	165	769	java/io/IOException
    //   752	756	774	java/io/IOException
    //   285	295	779	finally
    //   448	459	787	finally
    //   647	657	795	finally
    //   359	369	803	finally
    //   463	596	803	finally
    //   664	705	803	finally
    //   718	728	803	finally
    //   285	295	811	java/lang/Exception
    //   448	459	811	java/lang/Exception
    //   463	596	811	java/lang/Exception
    //   647	657	811	java/lang/Exception
    //   664	705	811	java/lang/Exception
    //   92	102	816	finally
    //   92	102	824	java/lang/Exception
  }

  // ERROR //
  public final android.graphics.Bitmap bN(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   4: getstatic 37	com/tencent/mm/storage/y:ghc	I
    //   7: if_icmpeq +33 -> 40
    //   10: aload_0
    //   11: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   14: getstatic 327	com/tencent/mm/storage/w:ggX	I
    //   17: if_icmpeq +23 -> 40
    //   20: aload_0
    //   21: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   24: getstatic 55	com/tencent/mm/storage/y:ghl	I
    //   27: if_icmpeq +13 -> 40
    //   30: aload_0
    //   31: getfield 308	com/tencent/mm/storage/y:field_catalog	I
    //   34: getstatic 53	com/tencent/mm/storage/y:ghk	I
    //   37: if_icmpne +5 -> 42
    //   40: aconst_null
    //   41: areturn
    //   42: new 439	java/io/FileInputStream
    //   45: dup
    //   46: new 102	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   53: aload_0
    //   54: getfield 225	com/tencent/mm/storage/y:dNW	Ljava/lang/String;
    //   57: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 322	com/tencent/mm/storage/y:field_groupId	Ljava/lang/String;
    //   64: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: getstatic 371	java/io/File:separator	Ljava/lang/String;
    //   70: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: aload_0
    //   74: invokevirtual 341	com/tencent/mm/storage/y:yK	()Ljava/lang/String;
    //   77: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokespecial 455	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   86: astore_2
    //   87: aload_2
    //   88: aload_1
    //   89: invokestatic 461	com/tencent/mm/an/a:getDensity	(Landroid/content/Context;)F
    //   92: invokestatic 430	com/tencent/mm/sdk/platformtools/h:a	(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    //   95: astore 9
    //   97: aload_2
    //   98: invokevirtual 443	java/io/FileInputStream:close	()V
    //   101: aload 9
    //   103: areturn
    //   104: astore 10
    //   106: aload 9
    //   108: areturn
    //   109: astore_3
    //   110: aconst_null
    //   111: astore_2
    //   112: ldc 247
    //   114: aload_3
    //   115: invokevirtual 446	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   118: invokestatic 449	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   121: aload_2
    //   122: ifnull -82 -> 40
    //   125: aload_2
    //   126: invokevirtual 443	java/io/FileInputStream:close	()V
    //   129: aconst_null
    //   130: areturn
    //   131: astore 6
    //   133: aconst_null
    //   134: areturn
    //   135: astore 7
    //   137: aconst_null
    //   138: astore_2
    //   139: ldc 247
    //   141: aload 7
    //   143: invokevirtual 281	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   146: invokestatic 449	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: aload_2
    //   150: ifnull -110 -> 40
    //   153: aload_2
    //   154: invokevirtual 443	java/io/FileInputStream:close	()V
    //   157: aconst_null
    //   158: areturn
    //   159: astore 8
    //   161: aconst_null
    //   162: areturn
    //   163: astore 11
    //   165: aconst_null
    //   166: astore_2
    //   167: aload 11
    //   169: astore 4
    //   171: aload_2
    //   172: ifnull +7 -> 179
    //   175: aload_2
    //   176: invokevirtual 443	java/io/FileInputStream:close	()V
    //   179: aload 4
    //   181: athrow
    //   182: astore 5
    //   184: goto -5 -> 179
    //   187: astore 4
    //   189: goto -18 -> 171
    //   192: astore 7
    //   194: goto -55 -> 139
    //   197: astore_3
    //   198: goto -86 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   97	101	104	java/io/IOException
    //   42	87	109	java/io/FileNotFoundException
    //   125	129	131	java/io/IOException
    //   42	87	135	java/lang/Exception
    //   153	157	159	java/io/IOException
    //   42	87	163	finally
    //   175	179	182	java/io/IOException
    //   87	97	187	finally
    //   112	121	187	finally
    //   139	149	187	finally
    //   87	97	192	java/lang/Exception
    //   87	97	197	java/io/FileNotFoundException
  }

  public final void convertFrom(Cursor paramCursor)
  {
    super.convertFrom(paramCursor);
    try
    {
      this.ghy = paramCursor.getString(paramCursor.getColumnIndex("desc"));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean cr(byte[] paramArrayOfByte)
  {
    if ((this.field_type == w.ggU) || (!TextUtils.isEmpty(this.field_groupId)))
      c.a(this.dNW + this.field_groupId + File.separator, yK(), "", paramArrayOfByte);
    while (true)
    {
      return true;
      c.a(this.dNW, yK(), "", paramArrayOfByte);
    }
  }

  public final void eX(String paramString)
  {
    this.field_md5 = paramString;
  }

  public final String getContent()
  {
    if (this.field_content == null)
      return "";
    return this.field_content;
  }

  public final String getDesc()
  {
    return this.ghy;
  }

  public final String getName()
  {
    if (this.field_name == null)
      return "";
    return this.field_name;
  }

  public final int getSize()
  {
    return this.field_size;
  }

  public final int getState()
  {
    return this.field_state;
  }

  public final int getType()
  {
    return this.field_type;
  }

  public final void mb(int paramInt)
  {
    this.field_catalog = paramInt;
  }

  public final void mc(int paramInt)
  {
    this.field_start = paramInt;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final void reset()
  {
    this.field_md5 = "";
    this.field_svrid = "";
    this.field_catalog = ghc;
    this.field_type = ghn;
    this.field_size = 0;
    this.field_start = 0;
    this.field_state = ght;
    this.field_name = "";
    this.field_content = "";
    this.field_reserved1 = "";
    this.field_reserved2 = "";
    this.field_reserved3 = 0;
    this.field_reserved4 = 0;
    this.field_app_id = "";
  }

  public final void setContent(String paramString)
  {
    this.field_content = paramString;
  }

  public final void setIndex(int paramInt)
  {
    this.field_idx = paramInt;
  }

  public final void setName(String paramString)
  {
    this.field_name = paramString;
  }

  public final void setSize(int paramInt)
  {
    this.field_size = paramInt;
  }

  public final void setState(int paramInt)
  {
    this.field_state = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.field_type = paramInt;
  }

  public final void uA(String paramString)
  {
    this.field_groupId = paramString;
  }

  public final void uB(String paramString)
  {
    this.field_framesInfo = paramString;
  }

  public final void ux(String paramString)
  {
    this.field_svrid = paramString;
  }

  public final void uy(String paramString)
  {
    this.field_reserved2 = paramString;
  }

  public final void uz(String paramString)
  {
    this.field_app_id = paramString;
  }

  public final String yK()
  {
    if (this.field_md5 == null)
      return "";
    return this.field_md5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.y
 * JD-Core Version:    0.6.2
 */