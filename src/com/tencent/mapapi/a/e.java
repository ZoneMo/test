package com.tencent.mapapi.a;

import android.net.Proxy;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public final class e
{
  private static boolean Uk;
  private static int a = 0;

  // ERROR //
  private static com.tencent.a.a.c a(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: iconst_0
    //   3: istore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: new 17	com/tencent/a/a/c
    //   10: dup
    //   11: invokespecial 20	com/tencent/a/a/c:<init>	()V
    //   14: astore 5
    //   16: aload_0
    //   17: invokevirtual 26	java/net/HttpURLConnection:getContentType	()Ljava/lang/String;
    //   20: astore 8
    //   22: ldc 28
    //   24: astore 9
    //   26: aload 8
    //   28: ifnull +23 -> 51
    //   31: aload 8
    //   33: ldc 30
    //   35: invokevirtual 36	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   38: astore 10
    //   40: aload 10
    //   42: arraylength
    //   43: istore 11
    //   45: iconst_0
    //   46: istore 12
    //   48: goto +238 -> 286
    //   51: aload 5
    //   53: aload 9
    //   55: putfield 40	com/tencent/a/a/c:XZ	Ljava/lang/String;
    //   58: iload_1
    //   59: ifeq +33 -> 92
    //   62: aload 8
    //   64: ifnull +192 -> 256
    //   67: aload 8
    //   69: ldc 42
    //   71: invokevirtual 46	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   74: ifeq +182 -> 256
    //   77: aconst_null
    //   78: astore 4
    //   80: iload_2
    //   81: ifeq +11 -> 92
    //   84: aload_0
    //   85: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   88: aload_0
    //   89: invokevirtual 52	java/net/HttpURLConnection:connect	()V
    //   92: aload_0
    //   93: invokevirtual 56	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   96: astore 4
    //   98: aload 4
    //   100: ifnull +88 -> 188
    //   103: aload 5
    //   105: iconst_0
    //   106: newarray byte
    //   108: putfield 60	com/tencent/a/a/c:data	[B
    //   111: sipush 1024
    //   114: newarray byte
    //   116: astore 13
    //   118: aload 4
    //   120: aload 13
    //   122: invokevirtual 66	java/io/InputStream:read	([B)I
    //   125: istore 14
    //   127: iload 14
    //   129: ifle +54 -> 183
    //   132: iload_3
    //   133: iload 14
    //   135: iadd
    //   136: istore_3
    //   137: iload_3
    //   138: newarray byte
    //   140: astore 16
    //   142: aload 5
    //   144: getfield 60	com/tencent/a/a/c:data	[B
    //   147: iconst_0
    //   148: aload 16
    //   150: iconst_0
    //   151: aload 5
    //   153: getfield 60	com/tencent/a/a/c:data	[B
    //   156: arraylength
    //   157: invokestatic 72	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   160: aload 13
    //   162: iconst_0
    //   163: aload 16
    //   165: aload 5
    //   167: getfield 60	com/tencent/a/a/c:data	[B
    //   170: arraylength
    //   171: iload 14
    //   173: invokestatic 72	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   176: aload 5
    //   178: aload 16
    //   180: putfield 60	com/tencent/a/a/c:data	[B
    //   183: iload 14
    //   185: ifgt -67 -> 118
    //   188: aload 4
    //   190: ifnull +8 -> 198
    //   193: aload 4
    //   195: invokevirtual 75	java/io/InputStream:close	()V
    //   198: aload 5
    //   200: areturn
    //   201: aload 10
    //   203: iload 12
    //   205: aaload
    //   206: astore 17
    //   208: aload 17
    //   210: ldc 77
    //   212: invokevirtual 46	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   215: ifeq +35 -> 250
    //   218: aload 17
    //   220: ldc 79
    //   222: invokevirtual 36	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   225: astore 18
    //   227: aload 18
    //   229: arraylength
    //   230: iload_2
    //   231: if_icmple -180 -> 51
    //   234: aload 18
    //   236: iconst_1
    //   237: aaload
    //   238: invokevirtual 82	java/lang/String:trim	()Ljava/lang/String;
    //   241: astore 19
    //   243: aload 19
    //   245: astore 9
    //   247: goto -196 -> 51
    //   250: iinc 12 1
    //   253: goto +33 -> 286
    //   256: iconst_0
    //   257: istore_2
    //   258: goto -181 -> 77
    //   261: astore 6
    //   263: aload 4
    //   265: ifnull +8 -> 273
    //   268: aload 4
    //   270: invokevirtual 75	java/io/InputStream:close	()V
    //   273: aload 6
    //   275: athrow
    //   276: astore 15
    //   278: aload 5
    //   280: areturn
    //   281: astore 7
    //   283: goto -10 -> 273
    //   286: iload 12
    //   288: iload 11
    //   290: if_icmplt -89 -> 201
    //   293: goto -242 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   7	22	261	finally
    //   31	45	261	finally
    //   51	58	261	finally
    //   67	77	261	finally
    //   84	92	261	finally
    //   92	98	261	finally
    //   103	118	261	finally
    //   118	127	261	finally
    //   137	183	261	finally
    //   201	243	261	finally
    //   193	198	276	java/io/IOException
    //   268	273	281	java/io/IOException
  }

  // ERROR //
  public static com.tencent.a.a.c a(boolean paramBoolean, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: invokestatic 93	com/tencent/a/a/b:nb	()Z
    //   9: ifne +11 -> 20
    //   12: new 95	com/tencent/mapapi/a/f
    //   15: dup
    //   16: invokespecial 96	com/tencent/mapapi/a/f:<init>	()V
    //   19: athrow
    //   20: aload_1
    //   21: invokestatic 100	com/tencent/mapapi/a/e:an	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   24: astore 11
    //   26: aload 11
    //   28: astore 9
    //   30: aconst_null
    //   31: invokestatic 106	com/tencent/mapapi/a/g:ak	(Ljava/lang/String;)Z
    //   34: istore 12
    //   36: aconst_null
    //   37: astore 5
    //   39: iload 12
    //   41: ifeq +233 -> 274
    //   44: aload 9
    //   46: invokevirtual 110	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   49: invokevirtual 115	java/net/URL:getHost	()Ljava/lang/String;
    //   52: invokestatic 106	com/tencent/mapapi/a/g:ak	(Ljava/lang/String;)Z
    //   55: ifeq +3 -> 58
    //   58: iload_0
    //   59: ifeq +268 -> 327
    //   62: aload 9
    //   64: ldc 117
    //   66: invokevirtual 121	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   69: aload 9
    //   71: invokestatic 127	com/tencent/a/a/d:mT	()I
    //   74: invokevirtual 131	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   77: aload 9
    //   79: invokestatic 134	com/tencent/a/a/d:mU	()I
    //   82: invokevirtual 137	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   85: aload 9
    //   87: ldc 139
    //   89: aload_2
    //   90: invokevirtual 143	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: aload 9
    //   95: iconst_1
    //   96: invokevirtual 147	java/net/HttpURLConnection:setDoInput	(Z)V
    //   99: iload_0
    //   100: ifeq +6 -> 106
    //   103: iconst_0
    //   104: istore 4
    //   106: aload 9
    //   108: iload 4
    //   110: invokevirtual 150	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   113: aload 9
    //   115: iconst_0
    //   116: invokevirtual 153	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   119: aload 9
    //   121: invokestatic 157	com/tencent/a/a/d:b	(Ljava/net/HttpURLConnection;)V
    //   124: aload 9
    //   126: invokevirtual 52	java/net/HttpURLConnection:connect	()V
    //   129: invokestatic 160	com/tencent/a/a/d:mO	()V
    //   132: iload_0
    //   133: ifne +52 -> 185
    //   136: aconst_null
    //   137: astore 5
    //   139: aload_3
    //   140: ifnull +45 -> 185
    //   143: aload_3
    //   144: arraylength
    //   145: istore 13
    //   147: aconst_null
    //   148: astore 5
    //   150: iload 13
    //   152: ifeq +33 -> 185
    //   155: new 162	java/io/DataOutputStream
    //   158: dup
    //   159: aload 9
    //   161: invokevirtual 166	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   164: invokespecial 169	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   167: astore 14
    //   169: aload 14
    //   171: aload_3
    //   172: invokevirtual 173	java/io/DataOutputStream:write	([B)V
    //   175: aload 14
    //   177: invokevirtual 176	java/io/DataOutputStream:flush	()V
    //   180: aload 14
    //   182: invokevirtual 177	java/io/DataOutputStream:close	()V
    //   185: aload 9
    //   187: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
    //   190: istore 15
    //   192: iload 15
    //   194: sipush 200
    //   197: if_icmpeq +11 -> 208
    //   200: iload 15
    //   202: sipush 206
    //   205: if_icmpne +146 -> 351
    //   208: invokestatic 183	com/tencent/a/a/d:mF	()V
    //   211: aload 9
    //   213: iload_0
    //   214: invokestatic 185	com/tencent/mapapi/a/e:a	(Ljava/net/HttpURLConnection;Z)Lcom/tencent/a/a/c;
    //   217: astore 16
    //   219: iconst_0
    //   220: istore 17
    //   222: aconst_null
    //   223: astore 5
    //   225: aload 16
    //   227: ifnull +29 -> 256
    //   230: aload 16
    //   232: getfield 60	com/tencent/a/a/c:data	[B
    //   235: astore 18
    //   237: iconst_0
    //   238: istore 17
    //   240: aconst_null
    //   241: astore 5
    //   243: aload 18
    //   245: ifnull +11 -> 256
    //   248: aload 16
    //   250: getfield 60	com/tencent/a/a/c:data	[B
    //   253: arraylength
    //   254: istore 17
    //   256: iload 17
    //   258: invokestatic 188	com/tencent/a/a/d:bb	(I)V
    //   261: aload 9
    //   263: ifnull +8 -> 271
    //   266: aload 9
    //   268: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   271: aload 16
    //   273: areturn
    //   274: aload 9
    //   276: ldc 190
    //   278: aconst_null
    //   279: invokevirtual 143	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: goto -224 -> 58
    //   285: astore 6
    //   287: aload 9
    //   289: astore 7
    //   291: iconst_1
    //   292: invokestatic 193	com/tencent/a/a/d:F	(Z)V
    //   295: aload 6
    //   297: athrow
    //   298: astore 8
    //   300: aload 7
    //   302: astore 9
    //   304: aload 5
    //   306: ifnull +8 -> 314
    //   309: aload 5
    //   311: invokevirtual 177	java/io/DataOutputStream:close	()V
    //   314: aload 9
    //   316: ifnull +8 -> 324
    //   319: aload 9
    //   321: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   324: aload 8
    //   326: athrow
    //   327: aload 9
    //   329: ldc 195
    //   331: invokevirtual 121	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   334: goto -265 -> 69
    //   337: astore 10
    //   339: iconst_0
    //   340: invokestatic 193	com/tencent/a/a/d:F	(Z)V
    //   343: aload 10
    //   345: athrow
    //   346: astore 8
    //   348: goto -44 -> 304
    //   351: iload 15
    //   353: sipush 202
    //   356: if_icmpeq +75 -> 431
    //   359: iload 15
    //   361: sipush 201
    //   364: if_icmpeq +67 -> 431
    //   367: iload 15
    //   369: sipush 204
    //   372: if_icmpeq +59 -> 431
    //   375: iload 15
    //   377: sipush 205
    //   380: if_icmpeq +51 -> 431
    //   383: iload 15
    //   385: sipush 304
    //   388: if_icmpeq +43 -> 431
    //   391: iload 15
    //   393: sipush 305
    //   396: if_icmpeq +35 -> 431
    //   399: iload 15
    //   401: sipush 408
    //   404: if_icmpeq +27 -> 431
    //   407: iload 15
    //   409: sipush 502
    //   412: if_icmpeq +19 -> 431
    //   415: iload 15
    //   417: sipush 504
    //   420: if_icmpeq +11 -> 431
    //   423: iload 15
    //   425: sipush 503
    //   428: if_icmpne +13 -> 441
    //   431: new 15	java/io/IOException
    //   434: dup
    //   435: ldc 197
    //   437: invokespecial 199	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   440: athrow
    //   441: new 85	com/tencent/mapapi/a/d
    //   444: dup
    //   445: new 201	java/lang/StringBuilder
    //   448: dup
    //   449: ldc 203
    //   451: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   454: iload 15
    //   456: invokevirtual 208	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   459: invokevirtual 211	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   462: invokespecial 212	com/tencent/mapapi/a/d:<init>	(Ljava/lang/String;)V
    //   465: athrow
    //   466: astore 8
    //   468: aconst_null
    //   469: astore 5
    //   471: aconst_null
    //   472: astore 9
    //   474: goto -170 -> 304
    //   477: astore 8
    //   479: aload 14
    //   481: astore 5
    //   483: goto -179 -> 304
    //   486: astore 10
    //   488: aconst_null
    //   489: astore 5
    //   491: aconst_null
    //   492: astore 9
    //   494: goto -155 -> 339
    //   497: astore 10
    //   499: aload 14
    //   501: astore 5
    //   503: goto -164 -> 339
    //   506: astore 6
    //   508: aconst_null
    //   509: astore 5
    //   511: aconst_null
    //   512: astore 7
    //   514: goto -223 -> 291
    //   517: astore 6
    //   519: aload 14
    //   521: astore 5
    //   523: aload 9
    //   525: astore 7
    //   527: goto -236 -> 291
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	285	com/tencent/mapapi/a/d
    //   44	58	285	com/tencent/mapapi/a/d
    //   62	69	285	com/tencent/mapapi/a/d
    //   69	99	285	com/tencent/mapapi/a/d
    //   106	132	285	com/tencent/mapapi/a/d
    //   143	147	285	com/tencent/mapapi/a/d
    //   155	169	285	com/tencent/mapapi/a/d
    //   185	192	285	com/tencent/mapapi/a/d
    //   208	219	285	com/tencent/mapapi/a/d
    //   230	237	285	com/tencent/mapapi/a/d
    //   248	256	285	com/tencent/mapapi/a/d
    //   256	261	285	com/tencent/mapapi/a/d
    //   274	282	285	com/tencent/mapapi/a/d
    //   327	334	285	com/tencent/mapapi/a/d
    //   431	441	285	com/tencent/mapapi/a/d
    //   441	466	285	com/tencent/mapapi/a/d
    //   291	298	298	finally
    //   30	36	337	java/lang/Exception
    //   44	58	337	java/lang/Exception
    //   62	69	337	java/lang/Exception
    //   69	99	337	java/lang/Exception
    //   106	132	337	java/lang/Exception
    //   143	147	337	java/lang/Exception
    //   155	169	337	java/lang/Exception
    //   185	192	337	java/lang/Exception
    //   208	219	337	java/lang/Exception
    //   230	237	337	java/lang/Exception
    //   248	256	337	java/lang/Exception
    //   256	261	337	java/lang/Exception
    //   274	282	337	java/lang/Exception
    //   327	334	337	java/lang/Exception
    //   431	441	337	java/lang/Exception
    //   441	466	337	java/lang/Exception
    //   30	36	346	finally
    //   44	58	346	finally
    //   62	69	346	finally
    //   69	99	346	finally
    //   106	132	346	finally
    //   143	147	346	finally
    //   155	169	346	finally
    //   185	192	346	finally
    //   208	219	346	finally
    //   230	237	346	finally
    //   248	256	346	finally
    //   256	261	346	finally
    //   274	282	346	finally
    //   327	334	346	finally
    //   339	346	346	finally
    //   431	441	346	finally
    //   441	466	346	finally
    //   20	26	466	finally
    //   169	185	477	finally
    //   20	26	486	java/lang/Exception
    //   169	185	497	java/lang/Exception
    //   20	26	506	com/tencent/mapapi/a/d
    //   169	185	517	com/tencent/mapapi/a/d
  }

  private static HttpURLConnection a(URL paramURL, String paramString)
  {
    int i = 80;
    String str1 = Proxy.getDefaultHost();
    int j = Proxy.getDefaultPort();
    if (j == -1)
      j = i;
    String str2 = paramURL.getHost();
    int k = paramURL.getPort();
    if (k == -1);
    while (true)
    {
      String str3;
      if (paramString.indexOf(str2 + ":" + i) != -1)
        str3 = paramString.replaceFirst(str2 + ":" + i, str1 + ":" + j);
      try
      {
        while (true)
        {
          URL localURL = new URL(str3);
          HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
          localHttpURLConnection.setRequestProperty("X-Online-Host", str2 + ":" + i);
          return localHttpURLConnection;
          str3 = paramString.replaceFirst(str2, str1 + ":" + j);
        }
      }
      catch (MalformedURLException localMalformedURLException)
      {
        return null;
      }
      i = k;
    }
  }

  private static boolean a(HttpURLConnection paramHttpURLConnection)
  {
    InputStream localInputStream = null;
    try
    {
      localInputStream = paramHttpURLConnection.getInputStream();
      boolean bool1 = paramHttpURLConnection.getContentType().equals("text/html");
      boolean bool3;
      if (!bool1)
      {
        if (localInputStream != null)
          localInputStream.close();
        bool3 = false;
        return bool3;
      }
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        if (localInputStream.available() <= 0)
        {
          boolean bool2 = new String(localByteArrayOutputStream.toByteArray()).trim().equals("1");
          bool3 = bool2;
          return bool3;
        }
        localByteArrayOutputStream.write(localInputStream.read());
      }
    }
    finally
    {
      if (localInputStream != null)
        localInputStream.close();
    }
  }

  // ERROR //
  private static HttpURLConnection an(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 112	java/net/URL
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 244	java/net/URL:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: invokestatic 278	com/tencent/a/a/b:isWifi	()Z
    //   14: ifeq +27 -> 41
    //   17: iconst_0
    //   18: istore 4
    //   20: iload 4
    //   22: ifne +48 -> 70
    //   25: aload_2
    //   26: invokevirtual 248	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   29: checkcast 22	java/net/HttpURLConnection
    //   32: astore 24
    //   34: aload 24
    //   36: areturn
    //   37: astore 25
    //   39: aconst_null
    //   40: areturn
    //   41: invokestatic 283	com/tencent/a/a/f:mS	()I
    //   44: pop
    //   45: invokestatic 220	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   48: invokestatic 106	com/tencent/mapapi/a/g:ak	(Ljava/lang/String;)Z
    //   51: ifeq +9 -> 60
    //   54: iconst_0
    //   55: istore 4
    //   57: goto -37 -> 20
    //   60: iconst_1
    //   61: istore 4
    //   63: goto -43 -> 20
    //   66: astore 23
    //   68: aconst_null
    //   69: areturn
    //   70: getstatic 12	com/tencent/mapapi/a/e:a	I
    //   73: ifne +166 -> 239
    //   76: getstatic 285	com/tencent/mapapi/a/e:Uk	Z
    //   79: ifne +160 -> 239
    //   82: iconst_1
    //   83: putstatic 285	com/tencent/mapapi/a/e:Uk	Z
    //   86: new 112	java/net/URL
    //   89: dup
    //   90: ldc_w 287
    //   93: invokespecial 244	java/net/URL:<init>	(Ljava/lang/String;)V
    //   96: astore 11
    //   98: invokestatic 220	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   101: astore 12
    //   103: invokestatic 223	android/net/Proxy:getDefaultPort	()I
    //   106: istore 13
    //   108: iload 13
    //   110: iconst_m1
    //   111: if_icmpne +7 -> 118
    //   114: bipush 80
    //   116: istore 13
    //   118: new 289	java/net/InetSocketAddress
    //   121: dup
    //   122: aload 12
    //   124: iload 13
    //   126: invokespecial 292	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   129: astore 14
    //   131: new 294	java/net/Proxy
    //   134: dup
    //   135: getstatic 300	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   138: aload 14
    //   140: invokespecial 303	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   143: astore 15
    //   145: aload 11
    //   147: aload 15
    //   149: invokevirtual 306	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   152: checkcast 22	java/net/HttpURLConnection
    //   155: astore 17
    //   157: aload 17
    //   159: ldc 117
    //   161: invokevirtual 121	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   164: aload 17
    //   166: sipush 15000
    //   169: invokevirtual 131	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   172: aload 17
    //   174: ldc_w 307
    //   177: invokevirtual 137	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   180: aload 17
    //   182: ldc 139
    //   184: ldc_w 309
    //   187: invokevirtual 143	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   190: aload 17
    //   192: iconst_1
    //   193: invokevirtual 147	java/net/HttpURLConnection:setDoInput	(Z)V
    //   196: aload 17
    //   198: iconst_0
    //   199: invokevirtual 150	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   202: aload 17
    //   204: iconst_0
    //   205: invokevirtual 153	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   208: aload 17
    //   210: invokestatic 311	com/tencent/mapapi/a/e:a	(Ljava/net/HttpURLConnection;)Z
    //   213: istore 21
    //   215: aload 17
    //   217: invokevirtual 52	java/net/HttpURLConnection:connect	()V
    //   220: iload 21
    //   222: ifeq +104 -> 326
    //   225: iconst_1
    //   226: invokestatic 312	com/tencent/mapapi/a/e:bb	(I)V
    //   229: aload 17
    //   231: ifnull +8 -> 239
    //   234: aload 17
    //   236: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   239: getstatic 12	com/tencent/mapapi/a/e:a	I
    //   242: tableswitch	default:+18 -> 260, 2:+123->365
    //   261: nop
    //   262: <illegal opcode>
    //   263: astore 7
    //   265: invokestatic 223	android/net/Proxy:getDefaultPort	()I
    //   268: istore 8
    //   270: iload 8
    //   272: iconst_m1
    //   273: if_icmpne +7 -> 280
    //   276: bipush 80
    //   278: istore 8
    //   280: new 289	java/net/InetSocketAddress
    //   283: dup
    //   284: aload 7
    //   286: iload 8
    //   288: invokespecial 292	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   291: astore 9
    //   293: aload_2
    //   294: new 294	java/net/Proxy
    //   297: dup
    //   298: getstatic 300	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   301: aload 9
    //   303: invokespecial 303	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   306: invokevirtual 306	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   309: checkcast 22	java/net/HttpURLConnection
    //   312: astore 10
    //   314: aload 10
    //   316: areturn
    //   317: astore 22
    //   319: iconst_0
    //   320: putstatic 285	com/tencent/mapapi/a/e:Uk	Z
    //   323: goto -84 -> 239
    //   326: iconst_2
    //   327: invokestatic 312	com/tencent/mapapi/a/e:bb	(I)V
    //   330: goto -101 -> 229
    //   333: astore 20
    //   335: iconst_2
    //   336: invokestatic 312	com/tencent/mapapi/a/e:bb	(I)V
    //   339: aload 17
    //   341: ifnull -102 -> 239
    //   344: aload 17
    //   346: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   349: goto -110 -> 239
    //   352: astore 19
    //   354: aload_1
    //   355: ifnull +7 -> 362
    //   358: aload_1
    //   359: invokevirtual 49	java/net/HttpURLConnection:disconnect	()V
    //   362: aload 19
    //   364: athrow
    //   365: aload_2
    //   366: aload_0
    //   367: invokestatic 314	com/tencent/mapapi/a/e:a	(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   370: astore 6
    //   372: aload 6
    //   374: areturn
    //   375: astore 5
    //   377: aconst_null
    //   378: areturn
    //   379: astore 18
    //   381: aload 17
    //   383: astore_1
    //   384: aload 18
    //   386: astore 19
    //   388: goto -34 -> 354
    //   391: astore 16
    //   393: aconst_null
    //   394: astore 17
    //   396: goto -61 -> 335
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	37	java/net/MalformedURLException
    //   25	34	66	java/io/IOException
    //   86	98	317	java/net/MalformedURLException
    //   157	220	333	java/lang/Exception
    //   225	229	333	java/lang/Exception
    //   326	330	333	java/lang/Exception
    //   145	157	352	finally
    //   239	260	375	java/io/IOException
    //   260	270	375	java/io/IOException
    //   280	314	375	java/io/IOException
    //   365	372	375	java/io/IOException
    //   157	220	379	finally
    //   225	229	379	finally
    //   326	330	379	finally
    //   335	339	379	finally
    //   145	157	391	java/lang/Exception
  }

  private static void bb(int paramInt)
  {
    if (a == paramInt)
      return;
    a = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.a.e
 * JD-Core Version:    0.6.2
 */