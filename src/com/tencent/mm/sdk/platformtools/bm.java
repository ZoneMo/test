package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

@Deprecated
final class bm
{
  private static int geA = 10000;
  private static int geB = 10000;
  private TelephonyManager geC;
  private PhoneStateListener geD = new bn(this);

  // ERROR //
  public static java.util.List bB(Context paramContext)
  {
    // Byte code:
    //   0: new 40	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 41	java/util/LinkedList:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: ldc 43
    //   11: invokevirtual 49	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   14: checkcast 51	android/telephony/TelephonyManager
    //   17: astore_2
    //   18: aload_2
    //   19: invokevirtual 55	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   22: astore_3
    //   23: aload_3
    //   24: ifnull +12 -> 36
    //   27: aload_3
    //   28: ldc 57
    //   30: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   33: ifeq +5 -> 38
    //   36: aload_1
    //   37: areturn
    //   38: ldc 65
    //   40: astore 4
    //   42: ldc 57
    //   44: astore 5
    //   46: aload_3
    //   47: iconst_0
    //   48: iconst_3
    //   49: invokevirtual 69	java/lang/String:substring	(II)Ljava/lang/String;
    //   52: astore 4
    //   54: aload_3
    //   55: iconst_3
    //   56: invokevirtual 72	java/lang/String:substring	(I)Ljava/lang/String;
    //   59: astore 19
    //   61: aload 19
    //   63: astore 5
    //   65: aload 4
    //   67: astore 7
    //   69: aload_2
    //   70: invokevirtual 76	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   73: checkcast 78	android/telephony/gsm/GsmCellLocation
    //   76: astore 13
    //   78: aload 13
    //   80: ifnull +87 -> 167
    //   83: aload 13
    //   85: invokevirtual 82	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   88: istore 14
    //   90: aload 13
    //   92: invokevirtual 85	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   95: istore 15
    //   97: iload 15
    //   99: ldc 86
    //   101: if_icmpge +66 -> 167
    //   104: iload 15
    //   106: iconst_m1
    //   107: if_icmpeq +60 -> 167
    //   110: iload 14
    //   112: iconst_m1
    //   113: if_icmpeq +54 -> 167
    //   116: getstatic 18	com/tencent/mm/sdk/platformtools/bm:geB	I
    //   119: getstatic 16	com/tencent/mm/sdk/platformtools/bm:geA	I
    //   122: if_icmpne +166 -> 288
    //   125: ldc 57
    //   127: astore 16
    //   129: aload_1
    //   130: new 88	com/tencent/mm/sdk/platformtools/bk
    //   133: dup
    //   134: aload 7
    //   136: aload 5
    //   138: iload 15
    //   140: invokestatic 91	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   143: iload 14
    //   145: invokestatic 91	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   148: aload 16
    //   150: ldc 93
    //   152: ldc 57
    //   154: ldc 57
    //   156: ldc 57
    //   158: invokespecial 96	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   161: invokeinterface 101 2 0
    //   166: pop
    //   167: aload_2
    //   168: invokevirtual 105	android/telephony/TelephonyManager:getNeighboringCellInfo	()Ljava/util/List;
    //   171: astore 9
    //   173: aload 9
    //   175: ifnull +138 -> 313
    //   178: aload 9
    //   180: invokeinterface 108 1 0
    //   185: ifle +128 -> 313
    //   188: aload 9
    //   190: invokeinterface 112 1 0
    //   195: astore 10
    //   197: aload 10
    //   199: invokeinterface 118 1 0
    //   204: ifeq +109 -> 313
    //   207: aload 10
    //   209: invokeinterface 122 1 0
    //   214: checkcast 124	android/telephony/NeighboringCellInfo
    //   217: astore 11
    //   219: aload 11
    //   221: invokevirtual 125	android/telephony/NeighboringCellInfo:getCid	()I
    //   224: iconst_m1
    //   225: if_icmpeq -28 -> 197
    //   228: aload_1
    //   229: new 88	com/tencent/mm/sdk/platformtools/bk
    //   232: dup
    //   233: aload 7
    //   235: aload 5
    //   237: ldc 57
    //   239: new 127	java/lang/StringBuilder
    //   242: dup
    //   243: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   246: aload 11
    //   248: invokevirtual 125	android/telephony/NeighboringCellInfo:getCid	()I
    //   251: invokevirtual 132	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   254: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   257: ldc 57
    //   259: ldc 93
    //   261: ldc 57
    //   263: ldc 57
    //   265: ldc 57
    //   267: invokespecial 96	com/tencent/mm/sdk/platformtools/bk:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   270: invokeinterface 101 2 0
    //   275: pop
    //   276: goto -79 -> 197
    //   279: astore 6
    //   281: aload 4
    //   283: astore 7
    //   285: goto -216 -> 69
    //   288: new 127	java/lang/StringBuilder
    //   291: dup
    //   292: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   295: getstatic 18	com/tencent/mm/sdk/platformtools/bm:geB	I
    //   298: invokevirtual 132	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   301: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   304: astore 18
    //   306: aload 18
    //   308: astore 16
    //   310: goto -181 -> 129
    //   313: aload_1
    //   314: areturn
    //   315: astore 8
    //   317: goto -150 -> 167
    //
    // Exception table:
    //   from	to	target	type
    //   46	61	279	java/lang/Exception
    //   69	78	315	java/lang/Exception
    //   83	97	315	java/lang/Exception
    //   116	125	315	java/lang/Exception
    //   129	167	315	java/lang/Exception
    //   288	306	315	java/lang/Exception
  }

  public final void bA(Context paramContext)
  {
    this.geC = ((TelephonyManager)paramContext.getSystemService("phone"));
    this.geC.listen(this.geD, 256);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bm
 * JD-Core Version:    0.6.2
 */