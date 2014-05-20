package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

final class bo
{
  private static int geA = 10000;
  private static int geB = 10000;
  private TelephonyManager geC;
  private PhoneStateListener geD = new bp(this);
  private int geF;

  // ERROR //
  public static java.util.List bB(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 42
    //   3: invokevirtual 48	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   6: checkcast 50	android/telephony/TelephonyManager
    //   9: astore_1
    //   10: new 52	java/util/LinkedList
    //   13: dup
    //   14: invokespecial 53	java/util/LinkedList:<init>	()V
    //   17: astore_2
    //   18: ldc 55
    //   20: astore_3
    //   21: ldc 57
    //   23: astore 4
    //   25: aload_1
    //   26: invokevirtual 61	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   29: astore 6
    //   31: aload 6
    //   33: ifnull +177 -> 210
    //   36: aload 6
    //   38: ldc 57
    //   40: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   43: ifne +167 -> 210
    //   46: aload 6
    //   48: iconst_0
    //   49: iconst_3
    //   50: invokevirtual 71	java/lang/String:substring	(II)Ljava/lang/String;
    //   53: astore_3
    //   54: aload 6
    //   56: iconst_3
    //   57: iconst_5
    //   58: invokevirtual 71	java/lang/String:substring	(II)Ljava/lang/String;
    //   61: astore 37
    //   63: aload 37
    //   65: astore 8
    //   67: aload_1
    //   68: invokevirtual 75	android/telephony/TelephonyManager:getPhoneType	()I
    //   71: iconst_2
    //   72: if_icmpne +473 -> 545
    //   75: aload_1
    //   76: invokevirtual 79	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   79: checkcast 81	android/telephony/cdma/CdmaCellLocation
    //   82: astore 32
    //   84: aload 32
    //   86: ifnull +122 -> 208
    //   89: getstatic 18	com/tencent/mm/sdk/platformtools/bo:geB	I
    //   92: getstatic 16	com/tencent/mm/sdk/platformtools/bo:geA	I
    //   95: if_icmpne +168 -> 263
    //   98: ldc 57
    //   100: astore 33
    //   102: aload 32
    //   104: invokevirtual 84	android/telephony/cdma/CdmaCellLocation:getBaseStationId	()I
    //   107: iconst_m1
    //   108: if_icmpeq +100 -> 208
    //   111: aload 32
    //   113: invokevirtual 87	android/telephony/cdma/CdmaCellLocation:getNetworkId	()I
    //   116: iconst_m1
    //   117: if_icmpeq +91 -> 208
    //   120: aload 32
    //   122: invokevirtual 90	android/telephony/cdma/CdmaCellLocation:getSystemId	()I
    //   125: iconst_m1
    //   126: if_icmpeq +82 -> 208
    //   129: aload_2
    //   130: new 92	com/tencent/mm/sdk/platformtools/bk
    //   133: dup
    //   134: aload_3
    //   135: aload 8
    //   137: ldc 57
    //   139: ldc 57
    //   141: aload 33
    //   143: ldc 94
    //   145: new 96	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   152: aload 32
    //   154: invokevirtual 84	android/telephony/cdma/CdmaCellLocation:getBaseStationId	()I
    //   157: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   160: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: new 96	java/lang/StringBuilder
    //   166: dup
    //   167: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   170: aload 32
    //   172: invokevirtual 87	android/telephony/cdma/CdmaCellLocation:getNetworkId	()I
    //   175: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   178: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: new 96	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   188: aload 32
    //   190: invokevirtual 90	android/telephony/cdma/CdmaCellLocation:getSystemId	()I
    //   193: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   196: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: invokespecial 107	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   202: invokeinterface 112 2 0
    //   207: pop
    //   208: aload_2
    //   209: areturn
    //   210: aload_1
    //   211: invokevirtual 115	android/telephony/TelephonyManager:getSimOperator	()Ljava/lang/String;
    //   214: astore 7
    //   216: aload 7
    //   218: ifnull +34 -> 252
    //   221: aload 7
    //   223: ldc 57
    //   225: invokevirtual 67	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   228: ifne +24 -> 252
    //   231: aload 7
    //   233: iconst_0
    //   234: iconst_3
    //   235: invokevirtual 71	java/lang/String:substring	(II)Ljava/lang/String;
    //   238: astore_3
    //   239: aload 7
    //   241: iconst_3
    //   242: iconst_5
    //   243: invokevirtual 71	java/lang/String:substring	(II)Ljava/lang/String;
    //   246: astore 36
    //   248: aload 36
    //   250: astore 4
    //   252: aload 4
    //   254: astore 8
    //   256: goto -189 -> 67
    //   259: astore 5
    //   261: aload_2
    //   262: areturn
    //   263: new 96	java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   270: getstatic 18	com/tencent/mm/sdk/platformtools/bo:geB	I
    //   273: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   276: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: astore 35
    //   281: aload 35
    //   283: astore 33
    //   285: goto -183 -> 102
    //   288: astore 21
    //   290: aload_1
    //   291: invokevirtual 79	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   294: checkcast 117	android/telephony/gsm/GsmCellLocation
    //   297: astore 28
    //   299: aload 28
    //   301: ifnull +73 -> 374
    //   304: aload 28
    //   306: invokevirtual 120	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   309: istore 29
    //   311: aload 28
    //   313: invokevirtual 123	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   316: istore 30
    //   318: iload 30
    //   320: ldc 124
    //   322: if_icmpge +52 -> 374
    //   325: iload 30
    //   327: iconst_m1
    //   328: if_icmpeq +46 -> 374
    //   331: iload 29
    //   333: iconst_m1
    //   334: if_icmpeq +40 -> 374
    //   337: aload_2
    //   338: new 92	com/tencent/mm/sdk/platformtools/bk
    //   341: dup
    //   342: aload_3
    //   343: aload 8
    //   345: iload 30
    //   347: invokestatic 128	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   350: iload 29
    //   352: invokestatic 128	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   355: ldc 57
    //   357: ldc 130
    //   359: ldc 57
    //   361: ldc 57
    //   363: ldc 57
    //   365: invokespecial 107	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   368: invokeinterface 112 2 0
    //   373: pop
    //   374: aload_1
    //   375: invokevirtual 134	android/telephony/TelephonyManager:getNeighboringCellInfo	()Ljava/util/List;
    //   378: astore 23
    //   380: aload 23
    //   382: ifnull -174 -> 208
    //   385: aload 23
    //   387: invokeinterface 137 1 0
    //   392: ifle -184 -> 208
    //   395: aload 23
    //   397: invokeinterface 141 1 0
    //   402: astore 24
    //   404: aload 24
    //   406: invokeinterface 147 1 0
    //   411: ifeq -203 -> 208
    //   414: aload 24
    //   416: invokeinterface 151 1 0
    //   421: checkcast 153	android/telephony/NeighboringCellInfo
    //   424: astore 25
    //   426: aload 25
    //   428: invokevirtual 154	android/telephony/NeighboringCellInfo:getCid	()I
    //   431: iconst_m1
    //   432: if_icmpeq -28 -> 404
    //   435: aload 25
    //   437: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   440: ldc 124
    //   442: if_icmpgt -38 -> 404
    //   445: aload 25
    //   447: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   450: iconst_m1
    //   451: if_icmpeq -47 -> 404
    //   454: new 96	java/lang/StringBuilder
    //   457: dup
    //   458: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   461: bipush 143
    //   463: iconst_2
    //   464: aload 25
    //   466: invokevirtual 158	android/telephony/NeighboringCellInfo:getRssi	()I
    //   469: imul
    //   470: iadd
    //   471: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   474: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: astore 26
    //   479: aload_2
    //   480: new 92	com/tencent/mm/sdk/platformtools/bk
    //   483: dup
    //   484: aload_3
    //   485: aload 8
    //   487: new 96	java/lang/StringBuilder
    //   490: dup
    //   491: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   494: aload 25
    //   496: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   499: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   502: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   505: new 96	java/lang/StringBuilder
    //   508: dup
    //   509: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   512: aload 25
    //   514: invokevirtual 154	android/telephony/NeighboringCellInfo:getCid	()I
    //   517: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   520: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   523: aload 26
    //   525: ldc 130
    //   527: ldc 57
    //   529: ldc 57
    //   531: ldc 57
    //   533: invokespecial 107	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   536: invokeinterface 112 2 0
    //   541: pop
    //   542: goto -138 -> 404
    //   545: aload_1
    //   546: invokevirtual 79	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   549: checkcast 117	android/telephony/gsm/GsmCellLocation
    //   552: astore 15
    //   554: aload 15
    //   556: ifnull +86 -> 642
    //   559: aload 15
    //   561: invokevirtual 120	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   564: istore 16
    //   566: aload 15
    //   568: invokevirtual 123	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   571: istore 17
    //   573: iload 17
    //   575: ldc 124
    //   577: if_icmpge +65 -> 642
    //   580: iload 17
    //   582: iconst_m1
    //   583: if_icmpeq +59 -> 642
    //   586: iload 16
    //   588: iconst_m1
    //   589: if_icmpeq +53 -> 642
    //   592: getstatic 18	com/tencent/mm/sdk/platformtools/bo:geB	I
    //   595: getstatic 16	com/tencent/mm/sdk/platformtools/bo:geA	I
    //   598: if_icmpne +254 -> 852
    //   601: ldc 57
    //   603: astore 18
    //   605: aload_2
    //   606: new 92	com/tencent/mm/sdk/platformtools/bk
    //   609: dup
    //   610: aload_3
    //   611: aload 8
    //   613: iload 17
    //   615: invokestatic 128	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   618: iload 16
    //   620: invokestatic 128	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   623: aload 18
    //   625: ldc 130
    //   627: ldc 57
    //   629: ldc 57
    //   631: ldc 57
    //   633: invokespecial 107	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   636: invokeinterface 112 2 0
    //   641: pop
    //   642: aload_1
    //   643: invokevirtual 134	android/telephony/TelephonyManager:getNeighboringCellInfo	()Ljava/util/List;
    //   646: astore 10
    //   648: aload 10
    //   650: ifnull -442 -> 208
    //   653: aload 10
    //   655: invokeinterface 137 1 0
    //   660: ifle -452 -> 208
    //   663: aload 10
    //   665: invokeinterface 141 1 0
    //   670: astore 11
    //   672: aload 11
    //   674: invokeinterface 147 1 0
    //   679: ifeq -471 -> 208
    //   682: aload 11
    //   684: invokeinterface 151 1 0
    //   689: checkcast 153	android/telephony/NeighboringCellInfo
    //   692: astore 12
    //   694: aload 12
    //   696: invokevirtual 154	android/telephony/NeighboringCellInfo:getCid	()I
    //   699: iconst_m1
    //   700: if_icmpeq -28 -> 672
    //   703: aload 12
    //   705: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   708: ldc 124
    //   710: if_icmpgt -38 -> 672
    //   713: new 96	java/lang/StringBuilder
    //   716: dup
    //   717: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   720: bipush 143
    //   722: iconst_2
    //   723: aload 12
    //   725: invokevirtual 158	android/telephony/NeighboringCellInfo:getRssi	()I
    //   728: imul
    //   729: iadd
    //   730: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   733: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   736: astore 13
    //   738: ldc 160
    //   740: new 96	java/lang/StringBuilder
    //   743: dup
    //   744: ldc 162
    //   746: invokespecial 165	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   749: aload 12
    //   751: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   754: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   757: ldc 167
    //   759: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   762: aload 12
    //   764: invokevirtual 154	android/telephony/NeighboringCellInfo:getCid	()I
    //   767: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   770: ldc 172
    //   772: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   775: aload 13
    //   777: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   780: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   783: invokestatic 178	com/tencent/mm/sdk/platformtools/aa:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   786: aload_2
    //   787: new 92	com/tencent/mm/sdk/platformtools/bk
    //   790: dup
    //   791: aload_3
    //   792: aload 8
    //   794: new 96	java/lang/StringBuilder
    //   797: dup
    //   798: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   801: aload 12
    //   803: invokevirtual 155	android/telephony/NeighboringCellInfo:getLac	()I
    //   806: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   809: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   812: new 96	java/lang/StringBuilder
    //   815: dup
    //   816: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   819: aload 12
    //   821: invokevirtual 154	android/telephony/NeighboringCellInfo:getCid	()I
    //   824: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   827: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   830: aload 13
    //   832: ldc 130
    //   834: ldc 57
    //   836: ldc 57
    //   838: ldc 57
    //   840: invokespecial 107	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   843: invokeinterface 112 2 0
    //   848: pop
    //   849: goto -177 -> 672
    //   852: new 96	java/lang/StringBuilder
    //   855: dup
    //   856: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   859: getstatic 18	com/tencent/mm/sdk/platformtools/bo:geB	I
    //   862: invokevirtual 101	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   865: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   868: astore 20
    //   870: aload 20
    //   872: astore 18
    //   874: goto -269 -> 605
    //   877: astore 9
    //   879: goto -237 -> 642
    //   882: astore 22
    //   884: goto -510 -> 374
    //
    // Exception table:
    //   from	to	target	type
    //   25	31	259	java/lang/Exception
    //   36	63	259	java/lang/Exception
    //   210	216	259	java/lang/Exception
    //   221	248	259	java/lang/Exception
    //   75	84	288	java/lang/Exception
    //   89	98	288	java/lang/Exception
    //   102	208	288	java/lang/Exception
    //   263	281	288	java/lang/Exception
    //   545	554	877	java/lang/Exception
    //   559	573	877	java/lang/Exception
    //   592	601	877	java/lang/Exception
    //   605	642	877	java/lang/Exception
    //   852	870	877	java/lang/Exception
    //   290	299	882	java/lang/Exception
    //   304	318	882	java/lang/Exception
    //   337	374	882	java/lang/Exception
  }

  public final void bA(Context paramContext)
  {
    this.geC = ((TelephonyManager)paramContext.getSystemService("phone"));
    this.geC.listen(this.geD, 256);
    this.geF = this.geC.getPhoneType();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bo
 * JD-Core Version:    0.6.2
 */