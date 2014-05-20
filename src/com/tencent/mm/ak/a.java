package com.tencent.mm.ak;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.bb;
import com.tencent.mm.pluginsdk.b.b;
import com.tencent.mm.pluginsdk.b.c;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.ui.MMWizardActivity;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  private static final Map fxf;
  private static HashMap fxg = new HashMap();

  static
  {
    HashMap localHashMap = new HashMap();
    fxf = localHashMap;
    localHashMap.put("location", "talkroom");
    fxf.put("talkroom", "voip");
  }

  public static com.tencent.mm.pluginsdk.b.a C(Context paramContext, String paramString)
  {
    return n(paramContext, paramString, null);
  }

  public static void a(Context paramContext, String paramString, Intent paramIntent)
  {
    if (paramIntent == null)
      paramIntent = new Intent();
    String str = al.azr();
    if (paramString.startsWith("."))
      paramString = str + paramString;
    paramIntent.setClassName(al.getPackageName(), paramString);
    if ((paramContext instanceof Activity))
    {
      paramContext.startActivity(paramIntent);
      return;
    }
    paramIntent.addFlags(268435456);
    paramContext.startActivity(paramIntent);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, Intent paramIntent)
  {
    if (!rn(paramString1))
    {
      aa.a("MicroMsg.PluginHelper", "start wizard activity failed, plugin(%s) not loaded", new Object[] { paramString1 });
      return;
    }
    if (paramIntent == null)
      paramIntent = new Intent();
    String str = al.azr() + ".plugin." + paramString1;
    if (paramString2.startsWith("."))
      paramString2 = str + paramString2;
    paramIntent.setClassName(al.getPackageName(), paramString2);
    MMWizardActivity.j(paramContext, paramIntent);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, Intent paramIntent, int paramInt)
  {
    a(paramContext, paramString1, paramString2, paramIntent, paramInt, true);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, Intent paramIntent, int paramInt, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.PluginHelper", "start activity for result, need try load plugin[%B]", arrayOfObject);
    if (!rn(paramString1))
    {
      aa.a("MicroMsg.PluginHelper", "start activity failed, plugin(%s) not loaded", new Object[] { paramString1 });
      return;
    }
    if (paramIntent == null)
      paramIntent = new Intent();
    String str = al.azr() + ".plugin." + paramString1;
    if (paramString2.startsWith("."))
      paramString2 = str + paramString2;
    paramIntent.setClassName(al.getPackageName(), paramString2);
    if ((paramContext instanceof Activity))
    {
      ((Activity)paramContext).startActivityForResult(paramIntent, paramInt);
      return;
    }
    aa.aM("MicroMsg.PluginHelper", "context not activity, skipped");
  }

  public static void a(Context paramContext, String paramString1, String paramString2, Intent paramIntent, boolean paramBoolean)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.PluginHelper", "start activity, need try load plugin[%B]", arrayOfObject);
    if ((paramBoolean) && (!rn(paramString1)))
    {
      aa.a("MicroMsg.PluginHelper", "start activity failed, plugin(%s) not loaded", new Object[] { paramString1 });
      return;
    }
    if (paramIntent == null)
      paramIntent = new Intent();
    String str = al.azr() + ".plugin." + paramString1;
    if (paramString2.startsWith("."))
      paramString2 = str + paramString2;
    paramIntent.setClassName(al.getPackageName(), paramString2);
    if ((paramContext instanceof Activity))
    {
      paramContext.startActivity(paramIntent);
      return;
    }
    paramIntent.addFlags(268435456);
    paramContext.startActivity(paramIntent);
  }

  public static void a(String paramString, e parame, d paramd)
  {
    c localc = ro(paramString);
    if (localc == null)
    {
      aa.a("MicroMsg.PluginHelper", "register application failed, plugin=%s", new Object[] { paramString });
      return;
    }
    f localf = localc.FM();
    if (localf == null)
    {
      aa.c("MicroMsg.PluginHelper", "register application failed, plugin=%s", new Object[] { paramString });
      return;
    }
    localf.a(paramd);
    localf.a(parame);
  }

  public static boolean avr()
  {
    return false;
  }

  public static void b(Context paramContext, String paramString1, String paramString2, Intent paramIntent)
  {
    a(paramContext, paramString1, paramString2, paramIntent, true);
  }

  public static void g(String paramString, Map paramMap)
  {
    c localc = ro(paramString);
    if (localc == null)
    {
      aa.a("MicroMsg.PluginHelper", "register subcore failed, plugin=%s", new Object[] { paramString });
      return;
    }
    bb localbb = localc.FO();
    if (localbb == null)
    {
      aa.c("MicroMsg.PluginHelper", "create sub core failed, plugin=%s", new Object[] { paramString });
      return;
    }
    paramMap.put("plugin." + paramString, localbb);
  }

  public static void l(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, paramString1, paramString2, null, true);
  }

  public static void m(Context paramContext, String paramString1, String paramString2)
  {
    a(paramContext, paramString1, paramString2, null, 0, true);
  }

  public static com.tencent.mm.pluginsdk.b.a n(Context paramContext, String paramString1, String paramString2)
  {
    c localc = ro(paramString1);
    if (localc == null)
    {
      aa.a("MicroMsg.PluginHelper", "create contact widget failed, plugin=%s, type=%s", new Object[] { paramString1, paramString2 });
      return null;
    }
    b localb = localc.FN();
    if (localb == null)
    {
      aa.a("MicroMsg.PluginHelper", "create contact widget factory failed, plugin=%s, type=%s", new Object[] { paramString1, paramString2 });
      return null;
    }
    return localb.C(paramContext, paramString2);
  }

  public static boolean qc(String paramString)
  {
    try
    {
      Object localObject2 = fxg.get(paramString);
      if (localObject2 != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  private static boolean rn(String paramString)
  {
    try
    {
      c localc = ro(paramString);
      if (localc != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  // ERROR //
  private static c ro(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 17	com/tencent/mm/ak/a:fxf	Ljava/util/Map;
    //   6: aload_0
    //   7: invokeinterface 210 2 0
    //   12: checkcast 52	java/lang/String
    //   15: astore_2
    //   16: aload_2
    //   17: ifnull +264 -> 281
    //   20: ldc 92
    //   22: ldc 212
    //   24: iconst_2
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_0
    //   31: aastore
    //   32: dup
    //   33: iconst_1
    //   34: aload_2
    //   35: aastore
    //   36: invokestatic 122	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   39: aload_2
    //   40: astore_3
    //   41: getstatic 31	com/tencent/mm/ak/a:fxg	Ljava/util/HashMap;
    //   44: aload_0
    //   45: invokevirtual 201	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   48: checkcast 146	com/tencent/mm/pluginsdk/b/c
    //   51: astore 4
    //   53: aload 4
    //   55: ifnull +9 -> 64
    //   58: ldc 2
    //   60: monitorexit
    //   61: aload 4
    //   63: areturn
    //   64: invokestatic 216	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   67: invokevirtual 220	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   70: new 58	java/lang/StringBuilder
    //   73: dup
    //   74: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   77: invokestatic 48	com/tencent/mm/sdk/platformtools/al:azr	()Ljava/lang/String;
    //   80: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: ldc 101
    //   85: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: aload_0
    //   89: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 222
    //   94: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokevirtual 228	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   103: invokevirtual 234	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   106: checkcast 146	com/tencent/mm/pluginsdk/b/c
    //   109: astore 4
    //   111: getstatic 31	com/tencent/mm/ak/a:fxg	Ljava/util/HashMap;
    //   114: aload_0
    //   115: aload 4
    //   117: invokevirtual 235	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   120: pop
    //   121: goto -63 -> 58
    //   124: astore 5
    //   126: aload_3
    //   127: invokestatic 216	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   130: aload_3
    //   131: invokestatic 240	com/tencent/mm/compatible/loader/g:m	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   134: invokestatic 242	com/tencent/mm/compatible/loader/g:m	(Ljava/lang/String;Ljava/lang/String;)V
    //   137: invokestatic 216	com/tencent/mm/sdk/platformtools/al:getContext	()Landroid/content/Context;
    //   140: invokevirtual 220	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   143: new 58	java/lang/StringBuilder
    //   146: dup
    //   147: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   150: invokestatic 48	com/tencent/mm/sdk/platformtools/al:azr	()Ljava/lang/String;
    //   153: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc 101
    //   158: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: ldc 222
    //   167: invokevirtual 63	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokevirtual 228	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   176: invokevirtual 234	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   179: checkcast 146	com/tencent/mm/pluginsdk/b/c
    //   182: astore 4
    //   184: getstatic 31	com/tencent/mm/ak/a:fxg	Ljava/util/HashMap;
    //   187: aload_0
    //   188: aload 4
    //   190: invokevirtual 235	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   193: pop
    //   194: goto -136 -> 58
    //   197: astore 8
    //   199: ldc 92
    //   201: ldc 244
    //   203: iconst_1
    //   204: anewarray 4	java/lang/Object
    //   207: dup
    //   208: iconst_0
    //   209: aload_0
    //   210: aastore
    //   211: invokestatic 99	com/tencent/mm/sdk/platformtools/aa:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   214: ldc 92
    //   216: ldc 246
    //   218: iconst_1
    //   219: anewarray 4	java/lang/Object
    //   222: dup
    //   223: iconst_0
    //   224: aload_0
    //   225: aastore
    //   226: invokestatic 99	com/tencent/mm/sdk/platformtools/aa:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   229: aconst_null
    //   230: astore 4
    //   232: goto -174 -> 58
    //   235: astore 7
    //   237: ldc 92
    //   239: ldc 248
    //   241: iconst_1
    //   242: anewarray 4	java/lang/Object
    //   245: dup
    //   246: iconst_0
    //   247: aload_0
    //   248: aastore
    //   249: invokestatic 99	com/tencent/mm/sdk/platformtools/aa:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   252: goto -38 -> 214
    //   255: astore_1
    //   256: ldc 2
    //   258: monitorexit
    //   259: aload_1
    //   260: athrow
    //   261: astore 6
    //   263: ldc 92
    //   265: ldc 250
    //   267: iconst_1
    //   268: anewarray 4	java/lang/Object
    //   271: dup
    //   272: iconst_0
    //   273: aload_0
    //   274: aastore
    //   275: invokestatic 99	com/tencent/mm/sdk/platformtools/aa:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   278: goto -64 -> 214
    //   281: aload_0
    //   282: astore_3
    //   283: goto -242 -> 41
    //
    // Exception table:
    //   from	to	target	type
    //   64	121	124	java/lang/Exception
    //   137	194	197	java/lang/ClassNotFoundException
    //   137	194	235	java/lang/InstantiationException
    //   3	16	255	finally
    //   20	39	255	finally
    //   41	53	255	finally
    //   64	121	255	finally
    //   126	137	255	finally
    //   137	194	255	finally
    //   199	214	255	finally
    //   214	229	255	finally
    //   237	252	255	finally
    //   263	278	255	finally
    //   137	194	261	java/lang/IllegalAccessException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ak.a
 * JD-Core Version:    0.6.2
 */