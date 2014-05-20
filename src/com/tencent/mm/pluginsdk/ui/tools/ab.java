package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.regex.Pattern;

final class ab
  implements bw
{
  private static Pattern fuJ = Pattern.compile("image/[A-Za-z0-9]+");
  private static Pattern fuK = Pattern.compile("filename=[A-Za-z0-9@.]+.[A-Za-z0-9]+");
  private Context context;
  private String fuL;
  private String fuM;
  private boolean fuN;
  private String imagePath;
  private String imageUrl;

  public ab(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.context = paramContext;
    this.imageUrl = paramString1;
    this.fuM = paramString2;
    this.fuN = paramBoolean;
  }

  // ERROR //
  public final boolean ve()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 46	com/tencent/mm/pluginsdk/ui/tools/ab:fuN	Z
    //   6: ifne +19 -> 25
    //   9: aload_0
    //   10: aload_0
    //   11: getfield 40	com/tencent/mm/pluginsdk/ui/tools/ab:context	Landroid/content/Context;
    //   14: getstatic 60	com/tencent/mm/n:bIr	I
    //   17: invokevirtual 66	android/content/Context:getString	(I)Ljava/lang/String;
    //   20: putfield 68	com/tencent/mm/pluginsdk/ui/tools/ab:fuL	Ljava/lang/String;
    //   23: iconst_1
    //   24: ireturn
    //   25: new 70	org/apache/http/impl/client/DefaultHttpClient
    //   28: dup
    //   29: invokespecial 71	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   32: astore_2
    //   33: new 73	java/net/URI
    //   36: dup
    //   37: aload_0
    //   38: getfield 42	com/tencent/mm/pluginsdk/ui/tools/ab:imageUrl	Ljava/lang/String;
    //   41: invokespecial 76	java/net/URI:<init>	(Ljava/lang/String;)V
    //   44: astore_3
    //   45: new 78	org/apache/http/client/methods/HttpGet
    //   48: dup
    //   49: aload_3
    //   50: invokespecial 81	org/apache/http/client/methods/HttpGet:<init>	(Ljava/net/URI;)V
    //   53: astore 4
    //   55: ldc 83
    //   57: ldc 85
    //   59: invokestatic 91	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   62: pop
    //   63: aload 4
    //   65: ldc 93
    //   67: aload_0
    //   68: getfield 44	com/tencent/mm/pluginsdk/ui/tools/ab:fuM	Ljava/lang/String;
    //   71: invokevirtual 99	org/apache/http/client/methods/HttpRequestBase:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload_2
    //   75: aload 4
    //   77: invokeinterface 105 2 0
    //   82: astore 14
    //   84: aload 14
    //   86: invokeinterface 111 1 0
    //   91: invokeinterface 117 1 0
    //   96: sipush 200
    //   99: if_icmpeq +141 -> 240
    //   102: aload_0
    //   103: aload_0
    //   104: getfield 40	com/tencent/mm/pluginsdk/ui/tools/ab:context	Landroid/content/Context;
    //   107: getstatic 120	com/tencent/mm/n:bIq	I
    //   110: invokevirtual 66	android/content/Context:getString	(I)Ljava/lang/String;
    //   113: putfield 68	com/tencent/mm/pluginsdk/ui/tools/ab:fuL	Ljava/lang/String;
    //   116: iconst_1
    //   117: ireturn
    //   118: astore 9
    //   120: aconst_null
    //   121: astore 10
    //   123: ldc 122
    //   125: new 124	java/lang/StringBuilder
    //   128: dup
    //   129: ldc 126
    //   131: invokespecial 127	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload 9
    //   136: invokevirtual 131	java/lang/Exception:toString	()Ljava/lang/String;
    //   139: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 141	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 40	com/tencent/mm/pluginsdk/ui/tools/ab:context	Landroid/content/Context;
    //   153: getstatic 120	com/tencent/mm/n:bIq	I
    //   156: invokevirtual 66	android/content/Context:getString	(I)Ljava/lang/String;
    //   159: putfield 68	com/tencent/mm/pluginsdk/ui/tools/ab:fuL	Ljava/lang/String;
    //   162: aload 10
    //   164: ifnull +8 -> 172
    //   167: aload 10
    //   169: invokevirtual 146	java/io/InputStream:close	()V
    //   172: aload_1
    //   173: ifnull -150 -> 23
    //   176: aload_1
    //   177: invokevirtual 149	java/io/OutputStream:close	()V
    //   180: iconst_1
    //   181: ireturn
    //   182: astore 11
    //   184: iconst_1
    //   185: ireturn
    //   186: astore 32
    //   188: aload_0
    //   189: aload_0
    //   190: getfield 42	com/tencent/mm/pluginsdk/ui/tools/ab:imageUrl	Ljava/lang/String;
    //   193: invokestatic 155	com/tencent/mm/pluginsdk/ui/tools/aa:rk	(Ljava/lang/String;)Ljava/lang/String;
    //   196: putfield 42	com/tencent/mm/pluginsdk/ui/tools/ab:imageUrl	Ljava/lang/String;
    //   199: new 73	java/net/URI
    //   202: dup
    //   203: aload_0
    //   204: getfield 42	com/tencent/mm/pluginsdk/ui/tools/ab:imageUrl	Ljava/lang/String;
    //   207: invokespecial 76	java/net/URI:<init>	(Ljava/lang/String;)V
    //   210: astore_3
    //   211: goto -166 -> 45
    //   214: astore 5
    //   216: aconst_null
    //   217: astore 6
    //   219: aload 6
    //   221: ifnull +8 -> 229
    //   224: aload 6
    //   226: invokevirtual 146	java/io/InputStream:close	()V
    //   229: aload_1
    //   230: ifnull +7 -> 237
    //   233: aload_1
    //   234: invokevirtual 149	java/io/OutputStream:close	()V
    //   237: aload 5
    //   239: athrow
    //   240: aload 14
    //   242: invokeinterface 159 1 0
    //   247: invokeinterface 165 1 0
    //   252: invokeinterface 170 1 0
    //   257: astore 15
    //   259: aload 15
    //   261: invokestatic 176	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   264: ifne +384 -> 648
    //   267: getstatic 30	com/tencent/mm/pluginsdk/ui/tools/ab:fuJ	Ljava/util/regex/Pattern;
    //   270: aload 15
    //   272: invokevirtual 180	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   275: astore 31
    //   277: aload 31
    //   279: invokevirtual 185	java/util/regex/Matcher:find	()Z
    //   282: ifeq +366 -> 648
    //   285: aload 31
    //   287: invokevirtual 188	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   290: iconst_1
    //   291: aload 31
    //   293: invokevirtual 188	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   296: bipush 47
    //   298: invokevirtual 194	java/lang/String:lastIndexOf	(I)I
    //   301: iadd
    //   302: invokevirtual 197	java/lang/String:substring	(I)Ljava/lang/String;
    //   305: astore 16
    //   307: aload 16
    //   309: invokestatic 176	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   312: ifeq +61 -> 373
    //   315: aload 14
    //   317: ldc 199
    //   319: invokeinterface 203 2 0
    //   324: iconst_0
    //   325: aaload
    //   326: invokeinterface 170 1 0
    //   331: astore 29
    //   333: getstatic 34	com/tencent/mm/pluginsdk/ui/tools/ab:fuK	Ljava/util/regex/Pattern;
    //   336: aload 29
    //   338: invokevirtual 180	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   341: astore 30
    //   343: aload 30
    //   345: invokevirtual 185	java/util/regex/Matcher:find	()Z
    //   348: ifeq +25 -> 373
    //   351: aload 30
    //   353: invokevirtual 188	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   356: iconst_1
    //   357: aload 30
    //   359: invokevirtual 188	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   362: bipush 46
    //   364: invokevirtual 194	java/lang/String:lastIndexOf	(I)I
    //   367: iadd
    //   368: invokevirtual 197	java/lang/String:substring	(I)Ljava/lang/String;
    //   371: astore 16
    //   373: aload 16
    //   375: invokestatic 176	com/tencent/mm/sdk/platformtools/cj:hX	(Ljava/lang/String;)Z
    //   378: ifeq +38 -> 416
    //   381: new 205	com/tencent/mm/pluginsdk/ui/tools/x
    //   384: dup
    //   385: aload_0
    //   386: getfield 42	com/tencent/mm/pluginsdk/ui/tools/ab:imageUrl	Ljava/lang/String;
    //   389: invokespecial 206	com/tencent/mm/pluginsdk/ui/tools/x:<init>	(Ljava/lang/String;)V
    //   392: astore 17
    //   394: aload 17
    //   396: getfield 209	com/tencent/mm/pluginsdk/ui/tools/x:mPath	Ljava/lang/String;
    //   399: bipush 46
    //   401: invokevirtual 194	java/lang/String:lastIndexOf	(I)I
    //   404: istore 18
    //   406: iload 18
    //   408: iconst_m1
    //   409: if_icmpne +94 -> 503
    //   412: ldc 211
    //   414: astore 16
    //   416: aload_0
    //   417: aload 16
    //   419: invokestatic 216	com/tencent/mm/pluginsdk/ui/tools/s:hM	(Ljava/lang/String;)Ljava/lang/String;
    //   422: putfield 218	com/tencent/mm/pluginsdk/ui/tools/ab:imagePath	Ljava/lang/String;
    //   425: aload 14
    //   427: invokeinterface 159 1 0
    //   432: invokeinterface 222 1 0
    //   437: astore 20
    //   439: aload 20
    //   441: astore 6
    //   443: new 224	java/io/FileOutputStream
    //   446: dup
    //   447: aload_0
    //   448: getfield 218	com/tencent/mm/pluginsdk/ui/tools/ab:imagePath	Ljava/lang/String;
    //   451: invokespecial 225	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   454: astore 21
    //   456: sipush 8192
    //   459: newarray byte
    //   461: astore 22
    //   463: aload 6
    //   465: aload 22
    //   467: invokevirtual 229	java/io/InputStream:read	([B)I
    //   470: istore 23
    //   472: iload 23
    //   474: iconst_m1
    //   475: if_icmpeq +49 -> 524
    //   478: aload 21
    //   480: aload 22
    //   482: iconst_0
    //   483: iload 23
    //   485: invokevirtual 233	java/io/OutputStream:write	([BII)V
    //   488: goto -25 -> 463
    //   491: astore 9
    //   493: aload 21
    //   495: astore_1
    //   496: aload 6
    //   498: astore 10
    //   500: goto -377 -> 123
    //   503: aload 17
    //   505: getfield 209	com/tencent/mm/pluginsdk/ui/tools/x:mPath	Ljava/lang/String;
    //   508: iload 18
    //   510: iconst_1
    //   511: iadd
    //   512: invokevirtual 197	java/lang/String:substring	(I)Ljava/lang/String;
    //   515: astore 19
    //   517: aload 19
    //   519: astore 16
    //   521: goto -105 -> 416
    //   524: aload_0
    //   525: getfield 40	com/tencent/mm/pluginsdk/ui/tools/ab:context	Landroid/content/Context;
    //   528: astore 24
    //   530: getstatic 236	com/tencent/mm/n:biN	I
    //   533: istore 25
    //   535: iconst_1
    //   536: anewarray 4	java/lang/Object
    //   539: astore 26
    //   541: aload 26
    //   543: iconst_0
    //   544: invokestatic 239	com/tencent/mm/pluginsdk/ui/tools/s:Fo	()Ljava/lang/String;
    //   547: aastore
    //   548: aload_0
    //   549: aload 24
    //   551: iload 25
    //   553: aload 26
    //   555: invokevirtual 242	android/content/Context:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   558: putfield 68	com/tencent/mm/pluginsdk/ui/tools/ab:fuL	Ljava/lang/String;
    //   561: aload_0
    //   562: getfield 218	com/tencent/mm/pluginsdk/ui/tools/ab:imagePath	Ljava/lang/String;
    //   565: aload_0
    //   566: getfield 40	com/tencent/mm/pluginsdk/ui/tools/ab:context	Landroid/content/Context;
    //   569: invokestatic 246	com/tencent/mm/pluginsdk/ui/tools/s:d	(Ljava/lang/String;Landroid/content/Context;)V
    //   572: aload 6
    //   574: ifnull +8 -> 582
    //   577: aload 6
    //   579: invokevirtual 146	java/io/InputStream:close	()V
    //   582: aload 21
    //   584: invokevirtual 149	java/io/OutputStream:close	()V
    //   587: iconst_1
    //   588: ireturn
    //   589: astore 27
    //   591: iconst_1
    //   592: ireturn
    //   593: astore 28
    //   595: goto -13 -> 582
    //   598: astore 12
    //   600: goto -428 -> 172
    //   603: astore 8
    //   605: goto -376 -> 229
    //   608: astore 7
    //   610: goto -373 -> 237
    //   613: astore 5
    //   615: aconst_null
    //   616: astore_1
    //   617: goto -398 -> 219
    //   620: astore 5
    //   622: aload 21
    //   624: astore_1
    //   625: goto -406 -> 219
    //   628: astore 5
    //   630: aload 10
    //   632: astore 6
    //   634: goto -415 -> 219
    //   637: astore 9
    //   639: aload 6
    //   641: astore 10
    //   643: aconst_null
    //   644: astore_1
    //   645: goto -522 -> 123
    //   648: aconst_null
    //   649: astore 16
    //   651: goto -344 -> 307
    //
    // Exception table:
    //   from	to	target	type
    //   25	33	118	java/lang/Exception
    //   33	45	118	java/lang/Exception
    //   45	116	118	java/lang/Exception
    //   188	211	118	java/lang/Exception
    //   240	307	118	java/lang/Exception
    //   307	373	118	java/lang/Exception
    //   373	406	118	java/lang/Exception
    //   416	439	118	java/lang/Exception
    //   503	517	118	java/lang/Exception
    //   176	180	182	java/io/IOException
    //   33	45	186	java/net/URISyntaxException
    //   25	33	214	finally
    //   33	45	214	finally
    //   45	116	214	finally
    //   188	211	214	finally
    //   240	307	214	finally
    //   307	373	214	finally
    //   373	406	214	finally
    //   416	439	214	finally
    //   503	517	214	finally
    //   456	463	491	java/lang/Exception
    //   463	472	491	java/lang/Exception
    //   478	488	491	java/lang/Exception
    //   524	572	491	java/lang/Exception
    //   582	587	589	java/io/IOException
    //   577	582	593	java/io/IOException
    //   167	172	598	java/io/IOException
    //   224	229	603	java/io/IOException
    //   233	237	608	java/io/IOException
    //   443	456	613	finally
    //   456	463	620	finally
    //   463	472	620	finally
    //   478	488	620	finally
    //   524	572	620	finally
    //   123	162	628	finally
    //   443	456	637	java/lang/Exception
  }

  public final boolean vf()
  {
    if (!cj.hX(this.fuL))
    {
      Toast.makeText(this.context, this.fuL, 1).show();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.ab
 * JD-Core Version:    0.6.2
 */