package com.tencent.mm.x;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Map;
import java.util.TimeZone;

public final class b
{
  private static Map cum = null;
  private static String cun = null;

  public static boolean Bc()
  {
    return (cj.Bj()) || (!z.azj().equals("zh_CN"));
  }

  public static boolean Bd()
  {
    return cj.Bj();
  }

  public static boolean Be()
  {
    return (v.tg() != 0) || (!cj.Bj());
  }

  public static boolean Bf()
  {
    return cj.Bj();
  }

  public static boolean Bg()
  {
    return false;
  }

  public static boolean Bh()
  {
    if (!z.azj().equals("zh_CN"));
    TimeZone localTimeZone1;
    TimeZone localTimeZone2;
    do
    {
      return true;
      localTimeZone1 = TimeZone.getDefault();
      localTimeZone2 = TimeZone.getTimeZone("GMT+08:00");
    }
    while (localTimeZone1.getRawOffset() != localTimeZone2.getRawOffset());
    return false;
  }

  public static boolean Bi()
  {
    if (!z.azj().equals("zh_CN"))
      return true;
    TimeZone localTimeZone1 = TimeZone.getDefault();
    TimeZone localTimeZone2 = TimeZone.getTimeZone("GMT+08:00");
    if (localTimeZone1.getRawOffset() != localTimeZone2.getRawOffset())
      return true;
    TelephonyManager localTelephonyManager = (TelephonyManager)al.getContext().getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getNetworkCountryIso();
      if ((!cj.hX(str)) && (!str.equalsIgnoreCase("cn")))
        return true;
    }
    return false;
  }

  public static boolean Bj()
  {
    return cj.Bj();
  }

  public static boolean Bk()
  {
    return (z.azj().equals("zh_TW")) || (z.azj().equals("zh_HK"));
  }

  public static boolean Bl()
  {
    return z.azj().equals("zh_CN");
  }

  // ERROR //
  public static c c(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 106	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   6: invokevirtual 112	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   9: getfield 118	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   12: invokevirtual 123	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   15: astore 24
    //   17: aload 24
    //   19: astore 5
    //   21: aload 5
    //   23: ifnull +14 -> 37
    //   26: aload 5
    //   28: getstatic 14	com/tencent/mm/x/b:cun	Ljava/lang/String;
    //   31: invokevirtual 35	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   34: ifne +7 -> 41
    //   37: aconst_null
    //   38: putstatic 12	com/tencent/mm/x/b:cum	Ljava/util/Map;
    //   41: getstatic 12	com/tencent/mm/x/b:cum	Ljava/util/Map;
    //   44: ifnonnull +265 -> 309
    //   47: new 125	java/util/HashMap
    //   50: dup
    //   51: invokespecial 128	java/util/HashMap:<init>	()V
    //   54: putstatic 12	com/tencent/mm/x/b:cum	Ljava/util/Map;
    //   57: aload 5
    //   59: putstatic 14	com/tencent/mm/x/b:cun	Ljava/lang/String;
    //   62: aload_0
    //   63: invokevirtual 132	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   66: ldc 134
    //   68: invokevirtual 140	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   71: astore_3
    //   72: aload_3
    //   73: invokevirtual 145	java/io/InputStream:available	()I
    //   76: newarray byte
    //   78: astore 21
    //   80: aload_3
    //   81: aload 21
    //   83: invokevirtual 149	java/io/InputStream:read	([B)I
    //   86: pop
    //   87: new 31	java/lang/String
    //   90: dup
    //   91: aload 21
    //   93: invokespecial 152	java/lang/String:<init>	([B)V
    //   96: astore 9
    //   98: aload_3
    //   99: ifnull +7 -> 106
    //   102: aload_3
    //   103: invokevirtual 155	java/io/InputStream:close	()V
    //   106: aload 9
    //   108: invokevirtual 158	java/lang/String:trim	()Ljava/lang/String;
    //   111: ldc 160
    //   113: invokevirtual 164	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   116: astore 10
    //   118: aload_2
    //   119: invokestatic 168	com/tencent/mm/sdk/platformtools/cj:hW	(Ljava/lang/String;)Ljava/lang/String;
    //   122: invokevirtual 158	java/lang/String:trim	()Ljava/lang/String;
    //   125: ldc 170
    //   127: invokevirtual 164	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   130: astore 11
    //   132: iconst_0
    //   133: istore 12
    //   135: iload 12
    //   137: aload 10
    //   139: arraylength
    //   140: if_icmpge +169 -> 309
    //   143: aload 10
    //   145: iload 12
    //   147: aaload
    //   148: invokevirtual 158	java/lang/String:trim	()Ljava/lang/String;
    //   151: ldc 172
    //   153: invokevirtual 164	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   156: astore 13
    //   158: new 174	com/tencent/mm/x/c
    //   161: dup
    //   162: invokespecial 175	com/tencent/mm/x/c:<init>	()V
    //   165: astore 14
    //   167: aload 14
    //   169: aload 13
    //   171: iconst_0
    //   172: aaload
    //   173: putfield 178	com/tencent/mm/x/c:cuo	Ljava/lang/String;
    //   176: aload 14
    //   178: aload 13
    //   180: iconst_1
    //   181: aaload
    //   182: putfield 181	com/tencent/mm/x/c:cup	Ljava/lang/String;
    //   185: aload 11
    //   187: arraylength
    //   188: istore 15
    //   190: iconst_0
    //   191: istore 16
    //   193: iload 16
    //   195: iload 15
    //   197: if_icmpge +45 -> 242
    //   200: aload 11
    //   202: iload 16
    //   204: aaload
    //   205: invokevirtual 158	java/lang/String:trim	()Ljava/lang/String;
    //   208: ldc 183
    //   210: invokevirtual 164	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   213: astore 18
    //   215: aload 18
    //   217: iconst_0
    //   218: aaload
    //   219: astore 19
    //   221: aload 13
    //   223: iconst_1
    //   224: aaload
    //   225: aload 19
    //   227: invokevirtual 35	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   230: ifeq +73 -> 303
    //   233: aload 14
    //   235: aload 18
    //   237: iconst_1
    //   238: aaload
    //   239: putfield 186	com/tencent/mm/x/c:cuq	Ljava/lang/String;
    //   242: getstatic 12	com/tencent/mm/x/b:cum	Ljava/util/Map;
    //   245: aload 14
    //   247: getfield 178	com/tencent/mm/x/c:cuo	Ljava/lang/String;
    //   250: aload 14
    //   252: invokeinterface 192 3 0
    //   257: pop
    //   258: iinc 12 1
    //   261: goto -126 -> 135
    //   264: astore 8
    //   266: aload_3
    //   267: ifnull +81 -> 348
    //   270: aload_3
    //   271: invokevirtual 155	java/io/InputStream:close	()V
    //   274: ldc 194
    //   276: astore 9
    //   278: goto -172 -> 106
    //   281: astore 20
    //   283: ldc 194
    //   285: astore 9
    //   287: goto -181 -> 106
    //   290: astore 6
    //   292: aload_3
    //   293: ifnull +7 -> 300
    //   296: aload_3
    //   297: invokevirtual 155	java/io/InputStream:close	()V
    //   300: aload 6
    //   302: athrow
    //   303: iinc 16 1
    //   306: goto -113 -> 193
    //   309: getstatic 12	com/tencent/mm/x/b:cum	Ljava/util/Map;
    //   312: aload_1
    //   313: invokevirtual 197	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   316: invokeinterface 201 2 0
    //   321: checkcast 174	com/tencent/mm/x/c
    //   324: areturn
    //   325: astore 23
    //   327: goto -221 -> 106
    //   330: astore 7
    //   332: goto -32 -> 300
    //   335: astore 4
    //   337: aconst_null
    //   338: astore 5
    //   340: goto -299 -> 41
    //   343: astore 25
    //   345: goto -304 -> 41
    //   348: ldc 194
    //   350: astore 9
    //   352: goto -246 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   62	98	264	java/io/IOException
    //   270	274	281	java/io/IOException
    //   62	98	290	finally
    //   102	106	325	java/io/IOException
    //   296	300	330	java/io/IOException
    //   2	17	335	java/lang/Exception
    //   26	37	343	java/lang/Exception
    //   37	41	343	java/lang/Exception
  }

  public static boolean fZ(String paramString)
  {
    return (paramString != null) && (paramString.length() > 1) && (paramString.startsWith("+")) && (!paramString.startsWith("+86"));
  }

  public static String ga(String paramString)
  {
    if ((paramString.startsWith("+886")) || (paramString.startsWith("+86")))
      return "zh-TW";
    if ((paramString.startsWith("+852")) || (paramString.startsWith("+853")))
      return "zh-HK";
    if (paramString.startsWith("+81"))
      return "ja";
    if (paramString.startsWith("+82"))
      return "ko";
    if (paramString.startsWith("+66"))
      return "th";
    if (paramString.startsWith("+84"))
      return "vi";
    if (paramString.startsWith("+62"))
      return "id";
    if (paramString.startsWith("+55"))
      return "pt";
    if (paramString.startsWith("+34"))
      return "es-419";
    return "en";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.x.b
 * JD-Core Version:    0.6.2
 */