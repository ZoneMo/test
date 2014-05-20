package com.tencent.mm.sandbox.monitor;

import android.os.AsyncTask;

final class c extends AsyncTask
{
  // ERROR //
  private static java.lang.String ayx()
  {
    // Byte code:
    //   0: invokestatic 22	java/lang/System:currentTimeMillis	()J
    //   3: lstore_0
    //   4: ldc 24
    //   6: astore_2
    //   7: invokestatic 29	com/tencent/mm/sdk/platformtools/al:getPackageName	()Ljava/lang/String;
    //   10: astore_3
    //   11: new 31	java/io/File
    //   14: dup
    //   15: ldc 33
    //   17: invokespecial 36	java/io/File:<init>	(Ljava/lang/String;)V
    //   20: astore 4
    //   22: aload 4
    //   24: invokevirtual 40	java/io/File:exists	()Z
    //   27: ifeq +11 -> 38
    //   30: aload 4
    //   32: invokevirtual 43	java/io/File:canRead	()Z
    //   35: ifne +5 -> 40
    //   38: aload_2
    //   39: areturn
    //   40: invokestatic 22	java/lang/System:currentTimeMillis	()J
    //   43: lstore 13
    //   45: new 45	java/io/FileReader
    //   48: dup
    //   49: aload 4
    //   51: invokespecial 48	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   54: astore 6
    //   56: new 50	java/io/BufferedReader
    //   59: dup
    //   60: aload 6
    //   62: invokespecial 53	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   65: astore 15
    //   67: aload 15
    //   69: invokevirtual 56	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   72: astore 17
    //   74: aload 17
    //   76: ifnull +664 -> 740
    //   79: aload 17
    //   81: ldc 58
    //   83: invokevirtual 64	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   86: ifeq -19 -> 67
    //   89: aload 17
    //   91: aload_3
    //   92: invokevirtual 64	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   95: istore 18
    //   97: iload 18
    //   99: ifeq +641 -> 740
    //   102: iconst_1
    //   103: istore 19
    //   105: iload 19
    //   107: ifne +14 -> 121
    //   110: aload 6
    //   112: invokevirtual 67	java/io/FileReader:close	()V
    //   115: aload_2
    //   116: areturn
    //   117: astore 43
    //   119: aload_2
    //   120: areturn
    //   121: aload 15
    //   123: invokevirtual 56	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   126: astore 20
    //   128: aload 20
    //   130: ifnull +516 -> 646
    //   133: aload 20
    //   135: ldc 69
    //   137: invokevirtual 64	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   140: ifeq -19 -> 121
    //   143: new 71	java/lang/StringBuilder
    //   146: dup
    //   147: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   150: astore 21
    //   152: aload 21
    //   154: aload 17
    //   156: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: bipush 10
    //   161: invokevirtual 79	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   164: pop
    //   165: aload 21
    //   167: aload 20
    //   169: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: bipush 10
    //   174: invokevirtual 79	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: bipush 25
    //   180: istore 24
    //   182: aload 15
    //   184: invokevirtual 56	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   187: astore 25
    //   189: aload 25
    //   191: ifnull +34 -> 225
    //   194: iload 24
    //   196: iconst_1
    //   197: isub
    //   198: istore 40
    //   200: iload 24
    //   202: ifle +23 -> 225
    //   205: aload 21
    //   207: aload 25
    //   209: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: bipush 10
    //   214: invokevirtual 79	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   217: pop
    //   218: iload 40
    //   220: istore 24
    //   222: goto -40 -> 182
    //   225: invokestatic 22	java/lang/System:currentTimeMillis	()J
    //   228: lstore 26
    //   230: ldc 81
    //   232: new 71	java/lang/StringBuilder
    //   235: dup
    //   236: ldc 83
    //   238: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   241: lload 26
    //   243: lload 13
    //   245: lsub
    //   246: invokevirtual 87	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   249: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 96	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   255: aload 15
    //   257: invokevirtual 97	java/io/BufferedReader:close	()V
    //   260: new 99	java/io/ByteArrayOutputStream
    //   263: dup
    //   264: invokespecial 100	java/io/ByteArrayOutputStream:<init>	()V
    //   267: astore 28
    //   269: new 102	java/io/PrintStream
    //   272: dup
    //   273: aload 28
    //   275: invokespecial 105	java/io/PrintStream:<init>	(Ljava/io/OutputStream;)V
    //   278: astore 29
    //   280: invokestatic 111	com/tencent/mm/compatible/c/s:pY	()[Ljava/lang/String;
    //   283: astore 30
    //   285: new 71	java/lang/StringBuilder
    //   288: dup
    //   289: ldc 113
    //   291: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   294: invokestatic 116	com/tencent/mm/sdk/platformtools/aa:azk	()Ljava/lang/String;
    //   297: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: astore 31
    //   302: aload 30
    //   304: arraylength
    //   305: ifle +334 -> 639
    //   308: new 71	java/lang/StringBuilder
    //   311: dup
    //   312: ldc 118
    //   314: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   317: aload 30
    //   319: iconst_0
    //   320: aaload
    //   321: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: ldc 120
    //   326: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   332: astore 32
    //   334: aload 29
    //   336: aload 31
    //   338: aload 32
    //   340: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   349: aload 29
    //   351: new 71	java/lang/StringBuilder
    //   354: dup
    //   355: ldc 125
    //   357: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   360: getstatic 131	com/tencent/mm/protocal/a:fxr	I
    //   363: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   366: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   372: aload 29
    //   374: ldc 136
    //   376: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   379: aload 29
    //   381: ldc 138
    //   383: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   386: aload 29
    //   388: ldc 140
    //   390: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   393: invokestatic 144	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   396: ldc 146
    //   398: iconst_0
    //   399: invokevirtual 152	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   402: astore 33
    //   404: aload 29
    //   406: new 71	java/lang/StringBuilder
    //   409: dup
    //   410: ldc 154
    //   412: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   415: aload 33
    //   417: ldc 156
    //   419: iconst_0
    //   420: invokeinterface 162 3 0
    //   425: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   428: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   431: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   434: aload 29
    //   436: new 71	java/lang/StringBuilder
    //   439: dup
    //   440: ldc 164
    //   442: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: invokestatic 144	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   448: invokestatic 170	com/tencent/mm/sdk/platformtools/cj:bC	(Landroid/content/Context;)Ljava/lang/String;
    //   451: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   457: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   460: invokestatic 144	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   463: ldc 172
    //   465: invokevirtual 176	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   468: checkcast 178	android/app/ActivityManager
    //   471: invokevirtual 182	android/app/ActivityManager:getMemoryClass	()I
    //   474: istore 34
    //   476: aload 29
    //   478: new 71	java/lang/StringBuilder
    //   481: dup
    //   482: ldc 184
    //   484: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   487: iload 34
    //   489: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   492: ldc 186
    //   494: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   503: new 188	java/util/Date
    //   506: dup
    //   507: invokespecial 189	java/util/Date:<init>	()V
    //   510: astore 35
    //   512: new 191	java/text/SimpleDateFormat
    //   515: dup
    //   516: ldc 193
    //   518: invokestatic 199	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   521: invokespecial 202	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   524: astore 36
    //   526: aload 29
    //   528: new 71	java/lang/StringBuilder
    //   531: dup
    //   532: ldc 204
    //   534: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   537: aload 36
    //   539: aload 35
    //   541: invokevirtual 208	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   544: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   547: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   550: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   553: aload 29
    //   555: ldc 210
    //   557: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   560: invokestatic 22	java/lang/System:currentTimeMillis	()J
    //   563: lstore 37
    //   565: aload 29
    //   567: new 71	java/lang/StringBuilder
    //   570: dup
    //   571: ldc 212
    //   573: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   576: lload 37
    //   578: lload_0
    //   579: lsub
    //   580: invokevirtual 87	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   583: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   589: aload 29
    //   591: ldc 214
    //   593: invokevirtual 123	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   596: new 71	java/lang/StringBuilder
    //   599: dup
    //   600: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   603: aload 28
    //   605: invokevirtual 215	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   608: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: aload 21
    //   613: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   616: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   619: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   622: astore_2
    //   623: aload 28
    //   625: invokevirtual 216	java/io/ByteArrayOutputStream:close	()V
    //   628: aload 6
    //   630: invokevirtual 67	java/io/FileReader:close	()V
    //   633: aload_2
    //   634: areturn
    //   635: astore 39
    //   637: aload_2
    //   638: areturn
    //   639: ldc 24
    //   641: astore 32
    //   643: goto -309 -> 334
    //   646: aload 15
    //   648: invokevirtual 97	java/io/BufferedReader:close	()V
    //   651: aload 6
    //   653: invokevirtual 67	java/io/FileReader:close	()V
    //   656: aload_2
    //   657: astore 10
    //   659: aload 10
    //   661: areturn
    //   662: astore 42
    //   664: aload_2
    //   665: astore 10
    //   667: goto -8 -> 659
    //   670: astore 9
    //   672: aload_2
    //   673: astore 10
    //   675: aconst_null
    //   676: astore 11
    //   678: aload 11
    //   680: ifnull -21 -> 659
    //   683: aload 11
    //   685: invokevirtual 67	java/io/FileReader:close	()V
    //   688: goto -29 -> 659
    //   691: astore 12
    //   693: goto -34 -> 659
    //   696: astore 5
    //   698: aconst_null
    //   699: astore 6
    //   701: aload 5
    //   703: astore 7
    //   705: aload 6
    //   707: ifnull +8 -> 715
    //   710: aload 6
    //   712: invokevirtual 67	java/io/FileReader:close	()V
    //   715: aload 7
    //   717: athrow
    //   718: astore 8
    //   720: goto -5 -> 715
    //   723: astore 7
    //   725: goto -20 -> 705
    //   728: astore 16
    //   730: aload_2
    //   731: astore 10
    //   733: aload 6
    //   735: astore 11
    //   737: goto -59 -> 678
    //   740: iconst_0
    //   741: istore 19
    //   743: goto -638 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   110	115	117	java/io/IOException
    //   628	633	635	java/io/IOException
    //   651	656	662	java/io/IOException
    //   40	56	670	java/lang/Exception
    //   683	688	691	java/io/IOException
    //   40	56	696	finally
    //   710	715	718	java/io/IOException
    //   56	67	723	finally
    //   67	74	723	finally
    //   79	97	723	finally
    //   121	128	723	finally
    //   133	178	723	finally
    //   182	189	723	finally
    //   205	218	723	finally
    //   225	334	723	finally
    //   334	628	723	finally
    //   646	651	723	finally
    //   56	67	728	java/lang/Exception
    //   67	74	728	java/lang/Exception
    //   79	97	728	java/lang/Exception
    //   121	128	728	java/lang/Exception
    //   133	178	728	java/lang/Exception
    //   182	189	728	java/lang/Exception
    //   205	218	728	java/lang/Exception
    //   225	334	728	java/lang/Exception
    //   334	628	728	java/lang/Exception
    //   646	651	728	java/lang/Exception
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.c
 * JD-Core Version:    0.6.2
 */