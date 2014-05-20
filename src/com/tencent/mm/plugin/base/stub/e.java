package com.tencent.mm.plugin.base.stub;

import android.os.Bundle;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.modelmsg.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.ch;

final class e
{
  private boolean cOb = false;
  private boolean cOc = false;
  private final h cOd;
  private ch cOe;
  private OAuthUI cOf;
  private al cOg;
  private ay ckr = new ay(new f(this), false);

  private e(OAuthUI paramOAuthUI, h paramh, al paramal)
  {
    this.cOf = paramOAuthUI;
    this.cOd = paramh;
    this.cOg = paramal;
  }

  public static e a(OAuthUI paramOAuthUI, String paramString, g paramg, h paramh, al paramal)
  {
    e locale = new e(paramOAuthUI, paramh, paramal);
    String str1 = paramg.gcb;
    String str2 = paramg.cnI;
    if (locale.cOb)
    {
      aa.e("MicroMsg.OAuthSession", "already getting");
      return locale;
    }
    locale.cOc = true;
    Bundle localBundle = new Bundle();
    localBundle.putString("geta8key_data_appid", paramString);
    localBundle.putString("geta8key_data_scope", str1);
    localBundle.putString("geta8key_data_state", str2);
    try
    {
      locale.cOg.c(233, localBundle);
      locale.cOb = true;
      locale.ckr.bO(3000L);
      return locale;
    }
    catch (Exception localException)
    {
      while (true)
        aa.w("MicroMsg.OAuthSession", "startGetA8Key, ex = " + localException.getMessage());
    }
  }

  // ERROR //
  public final void a(com.tencent.mm.plugin.webview.stub.d paramd)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 26	com/tencent/mm/plugin/base/stub/e:cOc	Z
    //   6: ifne +11 -> 17
    //   9: ldc 62
    //   11: ldc 121
    //   13: invokestatic 115	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   16: return
    //   17: aload_1
    //   18: invokeinterface 127 1 0
    //   23: istore 10
    //   25: iload 10
    //   27: istore 6
    //   29: aload_1
    //   30: invokeinterface 130 1 0
    //   35: istore_2
    //   36: aload_1
    //   37: invokeinterface 133 1 0
    //   42: pop
    //   43: aload_1
    //   44: invokeinterface 137 1 0
    //   49: ldc 139
    //   51: invokevirtual 143	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   54: astore 13
    //   56: aload 13
    //   58: astore 7
    //   60: ldc 62
    //   62: new 96	java/lang/StringBuilder
    //   65: dup
    //   66: ldc 145
    //   68: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: iload 6
    //   73: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   76: ldc 150
    //   78: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: iload_2
    //   82: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   85: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 153	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   91: aload_0
    //   92: getfield 118	com/tencent/mm/plugin/base/stub/e:cOe	Lcom/tencent/mm/ui/base/ch;
    //   95: ifnull +10 -> 105
    //   98: aload_0
    //   99: getfield 118	com/tencent/mm/plugin/base/stub/e:cOe	Lcom/tencent/mm/ui/base/ch;
    //   102: invokevirtual 158	com/tencent/mm/ui/base/ch:dismiss	()V
    //   105: aload_0
    //   106: iconst_0
    //   107: putfield 24	com/tencent/mm/plugin/base/stub/e:cOb	Z
    //   110: aload_0
    //   111: getfield 38	com/tencent/mm/plugin/base/stub/e:ckr	Lcom/tencent/mm/sdk/platformtools/ay;
    //   114: invokevirtual 161	com/tencent/mm/sdk/platformtools/ay:azn	()V
    //   117: iload_2
    //   118: ifne +66 -> 184
    //   121: iload 6
    //   123: ifne +61 -> 184
    //   126: aload_0
    //   127: getfield 42	com/tencent/mm/plugin/base/stub/e:cOd	Lcom/tencent/mm/plugin/base/stub/h;
    //   130: aload_0
    //   131: aload 7
    //   133: iconst_1
    //   134: invokeinterface 166 4 0
    //   139: return
    //   140: astore_3
    //   141: aload_3
    //   142: astore 4
    //   144: iload_2
    //   145: istore 5
    //   147: ldc 62
    //   149: new 96	java/lang/StringBuilder
    //   152: dup
    //   153: ldc 168
    //   155: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload 4
    //   160: invokevirtual 105	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   163: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 70	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: iload_2
    //   173: istore 6
    //   175: iload 5
    //   177: istore_2
    //   178: aconst_null
    //   179: astore 7
    //   181: goto -121 -> 60
    //   184: iload 6
    //   186: iconst_4
    //   187: if_icmpne +57 -> 244
    //   190: iload_2
    //   191: bipush 156
    //   193: if_icmpne +51 -> 244
    //   196: aload_0
    //   197: getfield 40	com/tencent/mm/plugin/base/stub/e:cOf	Lcom/tencent/mm/plugin/base/stub/OAuthUI;
    //   200: invokevirtual 173	com/tencent/mm/plugin/base/stub/OAuthUI:stopLoading	()V
    //   203: aload_0
    //   204: getfield 44	com/tencent/mm/plugin/base/stub/e:cOg	Lcom/tencent/mm/plugin/webview/stub/al;
    //   207: iload 6
    //   209: iload_2
    //   210: invokeinterface 177 3 0
    //   215: return
    //   216: astore 9
    //   218: ldc 62
    //   220: new 96	java/lang/StringBuilder
    //   223: dup
    //   224: ldc 179
    //   226: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   229: aload 9
    //   231: invokevirtual 105	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   234: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: invokestatic 115	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   243: return
    //   244: iload 6
    //   246: iconst_1
    //   247: if_icmpeq +23 -> 270
    //   250: iload 6
    //   252: iconst_2
    //   253: if_icmpeq +17 -> 270
    //   256: iload 6
    //   258: bipush 7
    //   260: if_icmpeq +10 -> 270
    //   263: iload 6
    //   265: bipush 8
    //   267: if_icmpne +46 -> 313
    //   270: ldc 62
    //   272: new 96	java/lang/StringBuilder
    //   275: dup
    //   276: ldc 181
    //   278: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   281: iload 6
    //   283: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   286: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: invokestatic 70	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: iconst_0
    //   293: istore 8
    //   295: iload 8
    //   297: ifne +45 -> 342
    //   300: aload_0
    //   301: getfield 42	com/tencent/mm/plugin/base/stub/e:cOd	Lcom/tencent/mm/plugin/base/stub/h;
    //   304: aload_0
    //   305: aconst_null
    //   306: iconst_0
    //   307: invokeinterface 166 4 0
    //   312: return
    //   313: aload_0
    //   314: getfield 40	com/tencent/mm/plugin/base/stub/e:cOf	Lcom/tencent/mm/plugin/base/stub/OAuthUI;
    //   317: invokestatic 187	com/tencent/mm/sdk/platformtools/ba:bk	(Landroid/content/Context;)Z
    //   320: ifne +16 -> 336
    //   323: ldc 62
    //   325: ldc 189
    //   327: invokestatic 70	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   330: iconst_0
    //   331: istore 8
    //   333: goto -38 -> 295
    //   336: iconst_1
    //   337: istore 8
    //   339: goto -44 -> 295
    //   342: aload_0
    //   343: getfield 42	com/tencent/mm/plugin/base/stub/e:cOd	Lcom/tencent/mm/plugin/base/stub/h;
    //   346: aload_0
    //   347: aload 7
    //   349: iconst_1
    //   350: invokeinterface 166 4 0
    //   355: return
    //   356: astore 11
    //   358: iload_2
    //   359: istore 5
    //   361: iload 6
    //   363: istore_2
    //   364: aload 11
    //   366: astore 4
    //   368: goto -221 -> 147
    //
    // Exception table:
    //   from	to	target	type
    //   17	25	140	java/lang/Exception
    //   203	215	216	java/lang/Exception
    //   29	56	356	java/lang/Exception
  }

  public final void release()
  {
    this.cOc = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.e
 * JD-Core Version:    0.6.2
 */