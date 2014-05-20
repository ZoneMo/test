package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;

public final class l
{
  public static long fan = 0L;
  public static long fao = 0L;
  public static int fap = 2;

  public static void a(Activity paramActivity, Bundle paramBundle, int paramInt)
  {
    i locali = h.m(paramActivity);
    if ((!c.anX().aof()) && (locali != null) && (locali.anP()))
    {
      localPayInfo = (PayInfo)paramBundle.getParcelable("key_pay_info");
      localOrders = (Orders)paramBundle.getParcelable("key_orders");
      if ((localPayInfo != null) && (localOrders != null))
      {
        localm2 = m.dZN;
        arrayOfObject2 = new Object[4];
        arrayOfObject2[0] = Integer.valueOf(paramInt);
        arrayOfObject2[1] = Integer.valueOf(localPayInfo.fbh);
        arrayOfObject2[2] = Integer.valueOf((int)(100.0D * localOrders.faR));
        arrayOfObject2[3] = localOrders.dCP;
        localm2.d(10725, arrayOfObject2);
      }
    }
    while ((c.anX().aof()) || (paramBundle == null) || (locali == null) || (!(locali instanceof d)))
    {
      PayInfo localPayInfo;
      Orders localOrders;
      m localm2;
      Object[] arrayOfObject2;
      return;
    }
    m localm1 = m.dZN;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(paramBundle.getInt("key_bind_scene", 0));
    localm1.d(10932, arrayOfObject1);
  }

  public static void a(PayInfo paramPayInfo, Orders paramOrders)
  {
    if ((!c.anX().aof()) && (paramPayInfo != null) && (paramOrders != null))
    {
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(1);
      arrayOfObject[1] = Integer.valueOf(paramPayInfo.fbh);
      arrayOfObject[2] = Integer.valueOf((int)(100.0D * paramOrders.faR));
      arrayOfObject[3] = paramOrders.dCP;
      localm.d(10725, arrayOfObject);
    }
  }

  public static void aI(int paramInt1, int paramInt2)
  {
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    localm.d(10932, arrayOfObject);
  }

  public static void anR()
  {
    fao = System.currentTimeMillis();
  }

  public static int anS()
  {
    return (int)((System.currentTimeMillis() - fao) / 1000L);
  }

  public static void anT()
  {
    fan = System.currentTimeMillis();
  }

  public static int anU()
  {
    return (int)((System.currentTimeMillis() - fan) / 1000L);
  }

  public static void bZ(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 2; ; i = 1)
    {
      fap = i;
      return;
    }
  }

  // ERROR //
  public static void c(java.lang.String paramString1, java.lang.String paramString2, java.lang.String paramString3, int paramInt, java.lang.String paramString4)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +10 -> 11
    //   4: aload_2
    //   5: invokevirtual 118	java/lang/String:length	()I
    //   8: ifgt +4 -> 12
    //   11: return
    //   12: aload_2
    //   13: iconst_0
    //   14: invokevirtual 122	java/lang/String:charAt	(I)C
    //   17: invokestatic 128	java/lang/Character:isDigit	(C)Z
    //   20: istore 11
    //   22: iload 11
    //   24: ifeq +257 -> 281
    //   27: iconst_0
    //   28: istore 15
    //   30: aconst_null
    //   31: astore 7
    //   33: aload_2
    //   34: astore 8
    //   36: iload 15
    //   38: aload 8
    //   40: invokevirtual 118	java/lang/String:length	()I
    //   43: if_icmpge +168 -> 211
    //   46: aload 8
    //   48: iload 15
    //   50: invokevirtual 122	java/lang/String:charAt	(I)C
    //   53: istore 16
    //   55: iload 16
    //   57: invokestatic 128	java/lang/Character:isDigit	(C)Z
    //   60: ifne +215 -> 275
    //   63: ldc 130
    //   65: iload 16
    //   67: invokestatic 133	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   70: invokevirtual 137	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   73: ifne +202 -> 275
    //   76: aload 8
    //   78: iload 15
    //   80: invokevirtual 141	java/lang/String:substring	(I)Ljava/lang/String;
    //   83: invokevirtual 145	java/lang/String:trim	()Ljava/lang/String;
    //   86: astore 7
    //   88: aload 8
    //   90: iconst_0
    //   91: iload 15
    //   93: iconst_1
    //   94: isub
    //   95: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   98: invokevirtual 145	java/lang/String:trim	()Ljava/lang/String;
    //   101: astore 8
    //   103: goto +172 -> 275
    //   106: iload 12
    //   108: aload 8
    //   110: invokevirtual 118	java/lang/String:length	()I
    //   113: if_icmpge +98 -> 211
    //   116: aload 8
    //   118: iload 12
    //   120: invokevirtual 122	java/lang/String:charAt	(I)C
    //   123: istore 13
    //   125: iload 13
    //   127: invokestatic 128	java/lang/Character:isDigit	(C)Z
    //   130: ifne +16 -> 146
    //   133: ldc 130
    //   135: iload 13
    //   137: invokestatic 133	java/lang/String:valueOf	(C)Ljava/lang/String;
    //   140: invokevirtual 137	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   143: ifeq +34 -> 177
    //   146: aload 8
    //   148: iconst_0
    //   149: iload 12
    //   151: iconst_1
    //   152: isub
    //   153: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   156: invokevirtual 145	java/lang/String:trim	()Ljava/lang/String;
    //   159: astore 7
    //   161: aload 8
    //   163: iload 12
    //   165: invokevirtual 141	java/lang/String:substring	(I)Ljava/lang/String;
    //   168: invokevirtual 145	java/lang/String:trim	()Ljava/lang/String;
    //   171: astore 14
    //   173: aload 14
    //   175: astore 8
    //   177: iinc 12 1
    //   180: goto -74 -> 106
    //   183: astore 5
    //   185: aload 5
    //   187: astore 6
    //   189: aconst_null
    //   190: astore 7
    //   192: aload_2
    //   193: astore 8
    //   195: ldc 150
    //   197: ldc 152
    //   199: iconst_1
    //   200: anewarray 4	java/lang/Object
    //   203: dup
    //   204: iconst_0
    //   205: aload 6
    //   207: aastore
    //   208: invokestatic 158	com/tencent/mm/sdk/platformtools/aa:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   211: getstatic 60	com/tencent/mm/plugin/d/c/m:dZN	Lcom/tencent/mm/plugin/d/c/m;
    //   214: astore 9
    //   216: bipush 6
    //   218: anewarray 4	java/lang/Object
    //   221: astore 10
    //   223: aload 10
    //   225: iconst_0
    //   226: aload_0
    //   227: aastore
    //   228: aload 10
    //   230: iconst_1
    //   231: aload_1
    //   232: aastore
    //   233: aload 10
    //   235: iconst_2
    //   236: aload 8
    //   238: aastore
    //   239: aload 10
    //   241: iconst_3
    //   242: aload 7
    //   244: aastore
    //   245: aload 10
    //   247: iconst_4
    //   248: iload_3
    //   249: invokestatic 66	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   252: aastore
    //   253: aload 10
    //   255: iconst_5
    //   256: aload 4
    //   258: aastore
    //   259: aload 9
    //   261: sipush 10756
    //   264: aload 10
    //   266: invokevirtual 83	com/tencent/mm/plugin/d/c/m:d	(I[Ljava/lang/Object;)V
    //   269: return
    //   270: astore 6
    //   272: goto -77 -> 195
    //   275: iinc 15 1
    //   278: goto -242 -> 36
    //   281: aload_2
    //   282: astore 8
    //   284: aconst_null
    //   285: astore 7
    //   287: iconst_0
    //   288: istore 12
    //   290: goto -184 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   12	22	183	java/lang/Exception
    //   36	103	270	java/lang/Exception
    //   106	146	270	java/lang/Exception
    //   146	173	270	java/lang/Exception
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.l
 * JD-Core Version:    0.6.2
 */