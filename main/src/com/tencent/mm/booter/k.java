package com.tencent.mm.booter;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.media.MediaPlayer;
import android.os.Looper;
import android.util.SparseArray;
import com.tencent.mm.a.f;
import com.tencent.mm.compatible.g.c;
import com.tencent.mm.j.b;
import com.tencent.mm.model.am;
import com.tencent.mm.network.bd;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pointers.PBool;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.protocal.a.nk;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.bg;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class k
  implements com.tencent.mm.model.al
{
  private String bZA = "";
  private String bZB = "";
  private String bZC = "";
  private MediaPlayer bZD;
  private volatile int bZE = 0;
  private RandomAccessFile bZF;
  private long bZG = 0L;
  private bd bZH;
  private InputStream bZI;
  private c bZJ;
  private FileInputStream bZK;
  private volatile boolean bZL;
  private volatile boolean bZM = false;
  private ay bZN = new ay(Looper.getMainLooper(), new l(this), true);
  private List bZO = new ArrayList();
  private long bZP = 0L;
  private boolean bZQ = false;
  private boolean bZR = false;
  private boolean bZS = true;
  private bg bZT = new bg();
  private boolean bZU = false;
  private SparseArray bZV = new SparseArray();
  private int bZW = -1;
  private boolean bZg = false;
  private com.tencent.mm.compatible.g.a bZh;
  private String bZz;
  private Context context;
  private volatile int currentIndex = -1;
  private final Object lock = new Object();

  public k()
  {
    this.bZT.bz(com.tencent.mm.sdk.platformtools.al.getContext());
    this.bZT.a(new q(this));
  }

  private static or a(or paramor, String paramString1, String paramString2)
  {
    or localor = new or();
    try
    {
      localor.bD(paramor.toByteArray());
      localor.fQf = paramString1;
      localor.fyE = paramString2;
      return localor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static String a(String paramString1, String paramString2, boolean paramBoolean, PBool paramPBool)
  {
    if ((paramBoolean) || (au.hX(paramString2)));
    for (String str = paramString1; au.hX(str); str = paramString2)
      return str;
    PString localPString = new PString();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Boolean.valueOf(paramBoolean);
    aa.d("MicroMsg.DownloadPlayer", "url[%s], lowBandUrl[%s], isWifi[%B]", arrayOfObject);
    if (str.startsWith("http://y.qq.com/i/song.html#p="))
      if (a(str.substring(30), paramBoolean, localPString))
        paramPBool.value = paramBoolean;
    while (true)
    {
      return localPString.value;
      if (str.contains("wechat_music_url="))
        a(str.substring(17 + str.indexOf("wechat_music_url=")), paramBoolean, localPString);
      else
        localPString.value = str;
    }
  }

  private void a(or paramor)
  {
    Object[] arrayOfObject = new Object[1];
    if (paramor == null);
    for (String str = "null"; ; str = paramor.toString())
    {
      arrayOfObject[0] = str;
      aa.d("MicroMsg.DownloadPlayer", "init current music data: musicwrapper %s", arrayOfObject);
      this.bZV.put(0, paramor);
      this.currentIndex = 0;
      return;
    }
  }

  private void a(FileDescriptor paramFileDescriptor)
  {
    aa.i("MicroMsg.DownloadPlayer", "start play");
    an.i(new u(this, paramFileDescriptor));
  }

  private static boolean a(String paramString, boolean paramBoolean, PString paramPString)
  {
    String str1 = new String(aO(paramString));
    int i = str1.indexOf("{");
    if (i != -1)
      str1 = str1.substring(i);
    try
    {
      JSONObject localJSONObject = new JSONObject(str1);
      String str2 = localJSONObject.getString("song_WapLiveURL");
      String str3 = localJSONObject.getString("song_WifiURL");
      aa.d("MicroMsg.DownloadPlayer", "waplive: " + str2 + "  wifi:" + str3);
      if (paramBoolean);
      while (true)
      {
        paramPString.value = str3;
        return true;
        str3 = str2;
      }
    }
    catch (Exception localException)
    {
      paramPString.value = paramString;
    }
    return false;
  }

  private boolean aL(String paramString)
  {
    File localFile = new File(this.bZz + f.h(paramString.getBytes()));
    if (localFile.exists())
      aa.d("MicroMsg.DownloadPlayer", "try play url exist! %s", new Object[] { paramString });
    try
    {
      this.bZK = new FileInputStream(localFile);
      boolean bool = b(this.bZK.getFD());
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void aM(String paramString)
  {
    try
    {
      long l = this.bZG;
      if (l == 0L);
      while (true)
      {
        return;
        FileOutputStream localFileOutputStream = new FileOutputStream(paramString);
        localFileOutputStream.write(this.bZG.getBytes());
        localFileOutputStream.flush();
        localFileOutputStream.close();
      }
    }
    finally
    {
    }
  }

  private void aN(String paramString)
  {
    try
    {
      aa.i("MicroMsg.DownloadPlayer", "stopDownLoad");
      try
      {
        if (this.bZH != null)
        {
          this.bZH.disconnect();
          this.bZI.close();
        }
        if (this.bZF != null)
        {
          this.bZF.setLength(this.bZG);
          this.bZF.close();
          File localFile = new File(paramString);
          aa.i("MicroMsg.DownloadPlayer", "stopDownLoad temFileLen:" + localFile.length() + " downloadFileLen:" + this.bZG);
          this.bZF = null;
        }
        this.bZG = 0L;
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localException.getLocalizedMessage();
          aa.c("MicroMsg.DownloadPlayer", "stop download error[%s]", arrayOfObject);
        }
      }
    }
    finally
    {
    }
  }

  private static byte[] aO(String paramString)
  {
    byte[] arrayOfByte = new byte[paramString.length() / 2 + paramString.length() % 2];
    int i = 0;
    int j = 0;
    while (true)
    {
      int k;
      try
      {
        if (i < paramString.length())
        {
          k = i + 1;
          int m = h(paramString.charAt(i));
          if (k >= paramString.length())
            break label96;
          i = k + 1;
          n = h(paramString.charAt(k));
          int i1 = j + 1;
          arrayOfByte[j] = ((byte)(n | m << 4));
          j = i1;
          continue;
        }
      }
      catch (Exception localException)
      {
        arrayOfByte = null;
      }
      return arrayOfByte;
      label96: i = k;
      int n = 0;
    }
  }

  // ERROR //
  private void b(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 183
    //   4: ldc_w 400
    //   7: invokestatic 247	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   10: aload_0
    //   11: lconst_0
    //   12: putfield 68	com/tencent/mm/booter/k:bZG	J
    //   15: aload_0
    //   16: iconst_0
    //   17: putfield 402	com/tencent/mm/booter/k:bZL	Z
    //   20: new 301	java/io/File
    //   23: dup
    //   24: aload_2
    //   25: invokespecial 314	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: astore 12
    //   30: new 301	java/io/File
    //   33: dup
    //   34: aload_3
    //   35: invokespecial 314	java/io/File:<init>	(Ljava/lang/String;)V
    //   38: astore 13
    //   40: aload 12
    //   42: invokevirtual 318	java/io/File:exists	()Z
    //   45: ifne +23 -> 68
    //   48: aload 12
    //   50: invokevirtual 405	java/io/File:createNewFile	()Z
    //   53: pop
    //   54: aload 13
    //   56: invokevirtual 318	java/io/File:exists	()Z
    //   59: ifeq +9 -> 68
    //   62: aload 13
    //   64: invokevirtual 408	java/io/File:delete	()Z
    //   67: pop
    //   68: iconst_4
    //   69: anewarray 4	java/lang/Object
    //   72: astore 14
    //   74: aload 14
    //   76: iconst_0
    //   77: aload 12
    //   79: invokevirtual 411	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   82: aastore
    //   83: aload 14
    //   85: iconst_1
    //   86: aload 12
    //   88: invokevirtual 377	java/io/File:length	()J
    //   91: invokestatic 416	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   94: aastore
    //   95: aload 14
    //   97: iconst_2
    //   98: aload 13
    //   100: invokevirtual 318	java/io/File:exists	()Z
    //   103: invokestatic 181	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   106: aastore
    //   107: aload 14
    //   109: iconst_3
    //   110: aload 13
    //   112: invokevirtual 377	java/io/File:length	()J
    //   115: invokestatic 416	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   118: aastore
    //   119: ldc 183
    //   121: ldc_w 418
    //   124: aload 14
    //   126: invokestatic 191	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   129: aload 12
    //   131: invokevirtual 377	java/io/File:length	()J
    //   134: lconst_0
    //   135: lcmp
    //   136: ifle +102 -> 238
    //   139: aload 13
    //   141: invokevirtual 318	java/io/File:exists	()Z
    //   144: ifeq +94 -> 238
    //   147: aload 13
    //   149: invokevirtual 377	java/io/File:length	()J
    //   152: lstore 43
    //   154: lload 43
    //   156: lconst_0
    //   157: lcmp
    //   158: ifle +80 -> 238
    //   161: aload 13
    //   163: invokevirtual 377	java/io/File:length	()J
    //   166: l2i
    //   167: newarray byte
    //   169: astore 46
    //   171: new 322	java/io/FileInputStream
    //   174: dup
    //   175: aload 13
    //   177: invokespecial 325	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   180: astore 47
    //   182: aload 47
    //   184: aload 46
    //   186: invokevirtual 422	java/io/FileInputStream:read	([B)I
    //   189: pop
    //   190: aload 47
    //   192: invokevirtual 423	java/io/FileInputStream:close	()V
    //   195: aload_0
    //   196: new 195	java/lang/String
    //   199: dup
    //   200: aload 46
    //   202: invokespecial 269	java/lang/String:<init>	([B)V
    //   205: invokestatic 427	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   208: putfield 68	com/tencent/mm/booter/k:bZG	J
    //   211: iconst_1
    //   212: anewarray 4	java/lang/Object
    //   215: astore 49
    //   217: aload 49
    //   219: iconst_0
    //   220: aload_0
    //   221: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   224: invokestatic 416	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   227: aastore
    //   228: ldc 183
    //   230: ldc_w 429
    //   233: aload 49
    //   235: invokestatic 191	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   238: aload_0
    //   239: aload 4
    //   241: invokestatic 435	com/tencent/mm/network/k:hD	(Ljava/lang/String;)Lcom/tencent/mm/network/bd;
    //   244: putfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   247: aload_0
    //   248: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   251: ldc_w 437
    //   254: invokevirtual 440	com/tencent/mm/network/bd:setRequestMethod	(Ljava/lang/String;)V
    //   257: aload_0
    //   258: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   261: sipush 25000
    //   264: invokevirtual 444	com/tencent/mm/network/bd:setConnectTimeout	(I)V
    //   267: aload_0
    //   268: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   271: lconst_0
    //   272: lcmp
    //   273: ifle +64 -> 337
    //   276: aload_0
    //   277: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   280: ldc_w 446
    //   283: new 286	java/lang/StringBuilder
    //   286: dup
    //   287: ldc_w 448
    //   290: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   293: aload_0
    //   294: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   297: invokevirtual 338	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   300: ldc_w 450
    //   303: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   309: invokevirtual 453	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   312: ldc 183
    //   314: new 286	java/lang/StringBuilder
    //   317: dup
    //   318: ldc_w 455
    //   321: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   324: aload_0
    //   325: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   328: invokevirtual 338	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   331: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 298	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   337: iload 5
    //   339: ifne +17 -> 356
    //   342: aload 4
    //   344: invokestatic 172	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   347: ifeq +301 -> 648
    //   350: iconst_0
    //   351: istore 18
    //   353: goto +1014 -> 1367
    //   356: aload_0
    //   357: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   360: ldc_w 457
    //   363: ldc_w 459
    //   366: invokevirtual 453	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   369: aload_0
    //   370: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   373: ldc_w 461
    //   376: ldc_w 463
    //   379: invokevirtual 453	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   382: aload_0
    //   383: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   386: ldc_w 465
    //   389: new 286	java/lang/StringBuilder
    //   392: dup
    //   393: invokespecial 302	java/lang/StringBuilder:<init>	()V
    //   396: ldc_w 467
    //   399: invokestatic 472	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   402: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: ldc_w 474
    //   408: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: aload_0
    //   412: getfield 476	com/tencent/mm/booter/k:context	Landroid/content/Context;
    //   415: invokestatic 480	com/tencent/mm/booter/k:z	(Landroid/content/Context;)Ljava/lang/String;
    //   418: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: invokevirtual 453	com/tencent/mm/network/bd:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   427: aload_0
    //   428: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   431: invokevirtual 483	com/tencent/mm/network/bd:getResponseCode	()I
    //   434: sipush 200
    //   437: if_icmpeq +261 -> 698
    //   440: aload_0
    //   441: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   444: invokevirtual 483	com/tencent/mm/network/bd:getResponseCode	()I
    //   447: sipush 206
    //   450: if_icmpeq +248 -> 698
    //   453: ldc 183
    //   455: new 286	java/lang/StringBuilder
    //   458: dup
    //   459: ldc_w 485
    //   462: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   465: aload_0
    //   466: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   469: invokevirtual 483	com/tencent/mm/network/bd:getResponseCode	()I
    //   472: invokevirtual 488	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   475: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   478: invokestatic 491	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   481: new 493	com/tencent/mm/booter/t
    //   484: dup
    //   485: aload_0
    //   486: invokespecial 494	com/tencent/mm/booter/t:<init>	(Lcom/tencent/mm/booter/k;)V
    //   489: invokestatic 257	com/tencent/mm/sdk/platformtools/an:i	(Ljava/lang/Runnable;)V
    //   492: aload_0
    //   493: monitorexit
    //   494: return
    //   495: astore 45
    //   497: ldc 183
    //   499: new 286	java/lang/StringBuilder
    //   502: dup
    //   503: ldc_w 496
    //   506: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   509: aload 45
    //   511: invokevirtual 497	java/lang/Exception:toString	()Ljava/lang/String;
    //   514: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   520: invokestatic 491	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   523: goto -285 -> 238
    //   526: astore 7
    //   528: aload_0
    //   529: getfield 97	com/tencent/mm/booter/k:bZP	J
    //   532: invokestatic 501	com/tencent/mm/platformtools/au:O	(J)J
    //   535: lstore 8
    //   537: ldc 183
    //   539: new 286	java/lang/StringBuilder
    //   542: dup
    //   543: ldc_w 503
    //   546: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   549: lload 8
    //   551: invokevirtual 338	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   554: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   557: invokestatic 491	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   560: lload 8
    //   562: ldc2_w 504
    //   565: lcmp
    //   566: ifle +793 -> 1359
    //   569: aload_0
    //   570: getfield 95	com/tencent/mm/booter/k:bZO	Ljava/util/List;
    //   573: invokeinterface 511 1 0
    //   578: astore 10
    //   580: aload 10
    //   582: invokeinterface 516 1 0
    //   587: ifeq -95 -> 492
    //   590: aload 10
    //   592: invokeinterface 520 1 0
    //   597: pop
    //   598: goto -18 -> 580
    //   601: astore 6
    //   603: aload_0
    //   604: monitorexit
    //   605: aload 6
    //   607: athrow
    //   608: astore 15
    //   610: aload_0
    //   611: invokevirtual 523	com/tencent/mm/booter/k:release	()V
    //   614: aload_0
    //   615: getfield 72	com/tencent/mm/booter/k:lock	Ljava/lang/Object;
    //   618: astore 16
    //   620: aload 16
    //   622: monitorenter
    //   623: new 525	com/tencent/mm/booter/s
    //   626: dup
    //   627: aload_0
    //   628: invokespecial 526	com/tencent/mm/booter/s:<init>	(Lcom/tencent/mm/booter/k;)V
    //   631: invokestatic 257	com/tencent/mm/sdk/platformtools/an:i	(Ljava/lang/Runnable;)V
    //   634: aload 16
    //   636: monitorexit
    //   637: goto -145 -> 492
    //   640: astore 17
    //   642: aload 16
    //   644: monitorexit
    //   645: aload 17
    //   647: athrow
    //   648: aload 4
    //   650: invokestatic 532	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   653: invokevirtual 535	android/net/Uri:getHost	()Ljava/lang/String;
    //   656: ldc_w 537
    //   659: invokevirtual 218	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   662: istore 18
    //   664: iconst_2
    //   665: anewarray 4	java/lang/Object
    //   668: astore 42
    //   670: aload 42
    //   672: iconst_0
    //   673: aload 4
    //   675: aastore
    //   676: aload 42
    //   678: iconst_1
    //   679: iload 18
    //   681: invokestatic 181	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   684: aastore
    //   685: ldc 183
    //   687: ldc_w 539
    //   690: aload 42
    //   692: invokestatic 387	com/tencent/mm/sdk/platformtools/aa:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   695: goto +672 -> 1367
    //   698: ldc 183
    //   700: new 286	java/lang/StringBuilder
    //   703: dup
    //   704: ldc_w 541
    //   707: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   710: aload_0
    //   711: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   714: ldc_w 465
    //   717: invokevirtual 544	com/tencent/mm/network/bd:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   720: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   723: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   726: invokestatic 298	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   729: ldc 183
    //   731: new 286	java/lang/StringBuilder
    //   734: dup
    //   735: ldc_w 546
    //   738: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   741: aload_0
    //   742: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   745: ldc_w 548
    //   748: invokevirtual 551	com/tencent/mm/network/bd:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   751: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   757: invokestatic 298	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   760: aload_0
    //   761: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   764: lconst_0
    //   765: lcmp
    //   766: ifle +59 -> 825
    //   769: aload_0
    //   770: invokespecial 554	com/tencent/mm/booter/k:oy	()Z
    //   773: ifne +52 -> 825
    //   776: ldc 183
    //   778: ldc_w 556
    //   781: invokestatic 559	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   784: aload 12
    //   786: invokevirtual 408	java/io/File:delete	()Z
    //   789: pop
    //   790: aload 12
    //   792: invokevirtual 405	java/io/File:createNewFile	()Z
    //   795: pop
    //   796: aload_0
    //   797: lconst_0
    //   798: putfield 68	com/tencent/mm/booter/k:bZG	J
    //   801: new 301	java/io/File
    //   804: dup
    //   805: aload_3
    //   806: invokespecial 314	java/io/File:<init>	(Ljava/lang/String;)V
    //   809: astore 40
    //   811: aload 40
    //   813: invokevirtual 318	java/io/File:exists	()Z
    //   816: ifeq +9 -> 825
    //   819: aload 40
    //   821: invokevirtual 408	java/io/File:delete	()Z
    //   824: pop
    //   825: aload_0
    //   826: new 366	java/io/RandomAccessFile
    //   829: dup
    //   830: aload_2
    //   831: ldc_w 561
    //   834: invokespecial 563	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   837: putfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   840: aload_0
    //   841: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   844: lstore 19
    //   846: lload 19
    //   848: ldc2_w 564
    //   851: ladd
    //   852: lstore 21
    //   854: aload_0
    //   855: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   858: ldc_w 567
    //   861: invokevirtual 551	com/tencent/mm/network/bd:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   864: invokestatic 427	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   867: lstore 34
    //   869: lload 34
    //   871: lconst_0
    //   872: lcmp
    //   873: ifeq +16 -> 889
    //   876: aload_0
    //   877: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   880: lstore 36
    //   882: lload 36
    //   884: lload 34
    //   886: ladd
    //   887: lstore 21
    //   889: lload 21
    //   891: lstore 24
    //   893: aload_0
    //   894: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   897: lload 24
    //   899: invokevirtual 370	java/io/RandomAccessFile:setLength	(J)V
    //   902: aload_0
    //   903: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   906: aload_0
    //   907: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   910: invokevirtual 570	java/io/RandomAccessFile:seek	(J)V
    //   913: aload_0
    //   914: aload_0
    //   915: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   918: invokevirtual 574	com/tencent/mm/network/bd:getInputStream	()Ljava/io/InputStream;
    //   921: putfield 359	com/tencent/mm/booter/k:bZI	Ljava/io/InputStream;
    //   924: sipush 4096
    //   927: newarray byte
    //   929: astore 26
    //   931: iconst_0
    //   932: istore 27
    //   934: lconst_0
    //   935: lstore 28
    //   937: aload_0
    //   938: iconst_1
    //   939: putfield 112	com/tencent/mm/booter/k:bZU	Z
    //   942: aload_0
    //   943: getfield 359	com/tencent/mm/booter/k:bZI	Ljava/io/InputStream;
    //   946: aload 26
    //   948: iload 27
    //   950: sipush 4096
    //   953: iload 27
    //   955: isub
    //   956: invokevirtual 577	java/io/InputStream:read	([BII)I
    //   959: istore 30
    //   961: iload 30
    //   963: iconst_m1
    //   964: if_icmpeq +224 -> 1188
    //   967: iload 27
    //   969: iload 30
    //   971: iadd
    //   972: sipush 4096
    //   975: if_icmpge +48 -> 1023
    //   978: iload 27
    //   980: iload 30
    //   982: iadd
    //   983: istore 27
    //   985: goto -43 -> 942
    //   988: astore 23
    //   990: ldc 183
    //   992: new 286	java/lang/StringBuilder
    //   995: dup
    //   996: ldc_w 579
    //   999: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1002: aload 23
    //   1004: invokevirtual 497	java/lang/Exception:toString	()Ljava/lang/String;
    //   1007: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1010: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1013: invokestatic 491	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1016: lload 21
    //   1018: lstore 24
    //   1020: goto -127 -> 893
    //   1023: aload_0
    //   1024: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1027: aload 26
    //   1029: iconst_0
    //   1030: sipush 4096
    //   1033: invokevirtual 582	java/io/RandomAccessFile:write	([BII)V
    //   1036: aload_0
    //   1037: ldc2_w 583
    //   1040: aload_0
    //   1041: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1044: ladd
    //   1045: putfield 68	com/tencent/mm/booter/k:bZG	J
    //   1048: new 301	java/io/File
    //   1051: dup
    //   1052: aload_2
    //   1053: invokespecial 314	java/io/File:<init>	(Ljava/lang/String;)V
    //   1056: pop
    //   1057: aload_0
    //   1058: aload_3
    //   1059: invokespecial 586	com/tencent/mm/booter/k:aM	(Ljava/lang/String;)V
    //   1062: aload_0
    //   1063: getfield 112	com/tencent/mm/booter/k:bZU	Z
    //   1066: ifeq +66 -> 1132
    //   1069: aload_0
    //   1070: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1073: ldc2_w 587
    //   1076: lload 28
    //   1078: ladd
    //   1079: lcmp
    //   1080: ifle +52 -> 1132
    //   1083: ldc 183
    //   1085: ldc_w 590
    //   1088: invokestatic 247	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1091: aload_0
    //   1092: iconst_0
    //   1093: putfield 112	com/tencent/mm/booter/k:bZU	Z
    //   1096: aload_0
    //   1097: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1100: lstore 28
    //   1102: aload_0
    //   1103: new 322	java/io/FileInputStream
    //   1106: dup
    //   1107: new 301	java/io/File
    //   1110: dup
    //   1111: aload_2
    //   1112: invokespecial 314	java/io/File:<init>	(Ljava/lang/String;)V
    //   1115: invokespecial 325	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   1118: putfield 327	com/tencent/mm/booter/k:bZK	Ljava/io/FileInputStream;
    //   1121: aload_0
    //   1122: aload_0
    //   1123: getfield 327	com/tencent/mm/booter/k:bZK	Ljava/io/FileInputStream;
    //   1126: invokevirtual 331	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   1129: invokespecial 592	com/tencent/mm/booter/k:a	(Ljava/io/FileDescriptor;)V
    //   1132: aload_0
    //   1133: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1136: lload 24
    //   1138: lcmp
    //   1139: ifle +14 -> 1153
    //   1142: aload_0
    //   1143: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1146: aload_0
    //   1147: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1150: invokevirtual 370	java/io/RandomAccessFile:setLength	(J)V
    //   1153: aload_0
    //   1154: getfield 402	com/tencent/mm/booter/k:bZL	Z
    //   1157: istore 33
    //   1159: iconst_0
    //   1160: istore 27
    //   1162: iload 33
    //   1164: ifeq -222 -> 942
    //   1167: aload_0
    //   1168: getfield 359	com/tencent/mm/booter/k:bZI	Ljava/io/InputStream;
    //   1171: aload 26
    //   1173: invokevirtual 593	java/io/InputStream:read	([B)I
    //   1176: iconst_m1
    //   1177: if_icmpne +174 -> 1351
    //   1180: ldc 183
    //   1182: ldc_w 595
    //   1185: invokestatic 559	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   1188: aload_0
    //   1189: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1192: aload 26
    //   1194: iconst_0
    //   1195: iload 27
    //   1197: invokevirtual 582	java/io/RandomAccessFile:write	([BII)V
    //   1200: aload_0
    //   1201: aload_0
    //   1202: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1205: iload 27
    //   1207: i2l
    //   1208: ladd
    //   1209: putfield 68	com/tencent/mm/booter/k:bZG	J
    //   1212: ldc 183
    //   1214: new 286	java/lang/StringBuilder
    //   1217: dup
    //   1218: ldc_w 597
    //   1221: invokespecial 289	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1224: aload_1
    //   1225: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1228: ldc_w 599
    //   1231: invokevirtual 293	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1234: aload_0
    //   1235: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1238: invokevirtual 338	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1241: invokevirtual 296	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1244: invokestatic 298	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1247: aload_0
    //   1248: getfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   1251: invokevirtual 357	com/tencent/mm/network/bd:disconnect	()V
    //   1254: aload_0
    //   1255: getfield 359	com/tencent/mm/booter/k:bZI	Ljava/io/InputStream;
    //   1258: invokevirtual 362	java/io/InputStream:close	()V
    //   1261: aload_0
    //   1262: aconst_null
    //   1263: putfield 352	com/tencent/mm/booter/k:bZH	Lcom/tencent/mm/network/bd;
    //   1266: aload_0
    //   1267: aconst_null
    //   1268: putfield 359	com/tencent/mm/booter/k:bZI	Ljava/io/InputStream;
    //   1271: aload_0
    //   1272: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1275: lconst_0
    //   1276: lcmp
    //   1277: ifle +24 -> 1301
    //   1280: aload_0
    //   1281: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1284: lload 24
    //   1286: lcmp
    //   1287: ifeq +14 -> 1301
    //   1290: aload_0
    //   1291: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1294: aload_0
    //   1295: getfield 68	com/tencent/mm/booter/k:bZG	J
    //   1298: invokevirtual 370	java/io/RandomAccessFile:setLength	(J)V
    //   1301: aload_0
    //   1302: getfield 112	com/tencent/mm/booter/k:bZU	Z
    //   1305: ifeq +19 -> 1324
    //   1308: aload_0
    //   1309: iconst_0
    //   1310: putfield 112	com/tencent/mm/booter/k:bZU	Z
    //   1313: aload_0
    //   1314: aload_0
    //   1315: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1318: invokevirtual 600	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   1321: invokespecial 592	com/tencent/mm/booter/k:a	(Ljava/io/FileDescriptor;)V
    //   1324: aload_0
    //   1325: getfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1328: invokevirtual 371	java/io/RandomAccessFile:close	()V
    //   1331: aload_0
    //   1332: aconst_null
    //   1333: putfield 364	com/tencent/mm/booter/k:bZF	Ljava/io/RandomAccessFile;
    //   1336: ldc 58
    //   1338: aload_2
    //   1339: aload_1
    //   1340: invokestatic 605	com/tencent/mm/a/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1343: aload_3
    //   1344: invokestatic 608	com/tencent/mm/a/c:deleteFile	(Ljava/lang/String;)Z
    //   1347: pop
    //   1348: goto -856 -> 492
    //   1351: aload_0
    //   1352: aload_2
    //   1353: invokespecial 610	com/tencent/mm/booter/k:aN	(Ljava/lang/String;)V
    //   1356: goto -864 -> 492
    //   1359: aload_0
    //   1360: lconst_0
    //   1361: putfield 97	com/tencent/mm/booter/k:bZP	J
    //   1364: goto -872 -> 492
    //   1367: iload 18
    //   1369: ifeq -987 -> 382
    //   1372: goto -1016 -> 356
    //
    // Exception table:
    //   from	to	target	type
    //   161	238	495	java/lang/Exception
    //   2	68	526	java/lang/Exception
    //   68	154	526	java/lang/Exception
    //   247	337	526	java/lang/Exception
    //   342	350	526	java/lang/Exception
    //   356	382	526	java/lang/Exception
    //   382	492	526	java/lang/Exception
    //   497	523	526	java/lang/Exception
    //   610	623	526	java/lang/Exception
    //   642	648	526	java/lang/Exception
    //   648	695	526	java/lang/Exception
    //   698	825	526	java/lang/Exception
    //   825	846	526	java/lang/Exception
    //   893	931	526	java/lang/Exception
    //   937	942	526	java/lang/Exception
    //   942	961	526	java/lang/Exception
    //   990	1016	526	java/lang/Exception
    //   1023	1132	526	java/lang/Exception
    //   1132	1153	526	java/lang/Exception
    //   1153	1159	526	java/lang/Exception
    //   1167	1188	526	java/lang/Exception
    //   1188	1301	526	java/lang/Exception
    //   1301	1324	526	java/lang/Exception
    //   1324	1348	526	java/lang/Exception
    //   1351	1356	526	java/lang/Exception
    //   2	68	601	finally
    //   68	154	601	finally
    //   161	238	601	finally
    //   238	247	601	finally
    //   247	337	601	finally
    //   342	350	601	finally
    //   356	382	601	finally
    //   382	492	601	finally
    //   497	523	601	finally
    //   528	560	601	finally
    //   569	580	601	finally
    //   580	598	601	finally
    //   610	623	601	finally
    //   642	648	601	finally
    //   648	695	601	finally
    //   698	825	601	finally
    //   825	846	601	finally
    //   854	869	601	finally
    //   876	882	601	finally
    //   893	931	601	finally
    //   937	942	601	finally
    //   942	961	601	finally
    //   990	1016	601	finally
    //   1023	1132	601	finally
    //   1132	1153	601	finally
    //   1153	1159	601	finally
    //   1167	1188	601	finally
    //   1188	1301	601	finally
    //   1301	1324	601	finally
    //   1324	1348	601	finally
    //   1351	1356	601	finally
    //   1359	1364	601	finally
    //   238	247	608	java/lang/Exception
    //   623	637	640	finally
    //   854	869	988	java/lang/Exception
    //   876	882	988	java/lang/Exception
  }

  private boolean b(FileDescriptor paramFileDescriptor)
  {
    boolean bool = true;
    aa.d("MicroMsg.DownloadPlayer", "start play img");
    try
    {
      if (this.bZh != null)
      {
        this.bZh.a(null);
        this.bZh.qc();
      }
      this.bZh = null;
      com.tencent.mm.compatible.a.a.a(8, new v(this));
      if (this.bZh != null)
      {
        this.bZh.a(null);
        this.bZh.qc();
        this.bZh.requestFocus();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.bZh.toString();
        aa.e("MicroMsg.DownloadPlayer", "request focus %s", arrayOfObject);
        this.bZJ = new m(this);
      }
      this.bZD = new MediaPlayer();
      this.bZD.setAudioStreamType(3);
      this.bZD.setOnCompletionListener(new n(this));
      if (this.bZD != null)
      {
        this.bZD.setDataSource(paramFileDescriptor);
        this.bZD.prepare();
        this.bZD.seekTo(this.bZE);
      }
      if (this.bZS)
        this.bZS = false;
      while (true)
      {
        if (this.bZD != null)
          ow();
        if ((this.bZh == null) || (this.bZJ == null))
          break;
        this.bZh.a(this.bZJ);
        return bool;
        this.bZR = true;
      }
    }
    catch (Exception localException)
    {
      bool = false;
    }
    return bool;
  }

  private void c(String paramString1, String paramString2, String paramString3)
  {
    this.bZz = (paramString1 + "music/");
    oH();
    release();
    if (this.context == null)
      this.context = com.tencent.mm.sdk.platformtools.al.getContext();
    j(paramString2, paramString3);
  }

  private String getUrl()
  {
    if (oA() == null);
    do
    {
      return null;
      if (!au.hX(oA().fQa))
        return oA().fQa;
      if (!au.hX(oA().fQc))
        return oA().fQc;
    }
    while (au.hX(oA().fQb));
    return oA().fQb;
  }

  private static int h(char paramChar)
  {
    int i;
    if ((paramChar >= '1') && (paramChar <= '9'))
      i = paramChar - '0';
    do
    {
      do
      {
        return i;
        i = 0;
      }
      while (paramChar < 'A');
      i = 0;
    }
    while (paramChar > 'F');
    return 10 + (paramChar - 'A');
  }

  private void j(String paramString1, String paramString2)
  {
    synchronized (this.lock)
    {
      Iterator localIterator = this.bZO.iterator();
      while (localIterator.hasNext())
      {
        am localam = (am)localIterator.next();
        if (localam != null)
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localam.toString();
          aa.d("MicroMsg.DownloadPlayer", "on start call back: %s", arrayOfObject2);
          localam.onStart();
        }
      }
    }
    this.bZN.bO(50L);
    Context localContext = this.context;
    this.context = localContext;
    aa.i("MicroMsg.DownloadPlayer", "play : " + paramString1);
    boolean bool1 = bm.ac(localContext);
    PBool localPBool = new PBool();
    String str1 = a(paramString1, paramString2, bool1, localPBool);
    if (!au.hX(str1))
      if (!bool1)
        break label350;
    label350: for (String str2 = str1; ; str2 = a(paramString1, paramString2, true, new PBool()))
    {
      if ((!aL(str2)) && ((bool1) || (!aL(str1))))
      {
        boolean bool2 = localPBool.value;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = str1;
        arrayOfObject1[1] = Boolean.valueOf(bool2);
        aa.d("MicroMsg.DownloadPlayer", "mediaUrl[%s], isQQmusicInWifi[%B]", arrayOfObject1);
        this.bZA = (this.bZz + f.h(str1.getBytes()));
        this.bZB = (this.bZA + ".tem");
        this.bZC = (this.bZA + ".config");
        r localr = new r(this, str1, bool2);
        localr.setPriority(1);
        localr.start();
      }
      return;
    }
  }

  private String oC()
  {
    if ((getUrl() == null) && (oA() == null));
    while (true)
    {
      return null;
      String str;
      if ((getUrl() != null) && (getUrl().contains("#p=")))
        str = getUrl();
      while (str != null)
      {
        if (str == null);
        for (int i = -1; ; i = str.indexOf("#p="))
        {
          if (i >= 0)
            break label177;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          aa.c("MicroMsg.DownloadPlayer", "pIndex is %d, return", arrayOfObject);
          return null;
          if ((oA() != null) && (oA().fQc != null) && (oA().fQc.contains("#p=")))
          {
            str = oA().fQc;
            break;
          }
          if ((oA() == null) || (oA().fQb == null) || (!oA().fQb.contains("#p=")))
            break label185;
          str = oA().fQb;
          break;
        }
        label177: return str.substring(i + 3);
        label185: str = null;
      }
    }
  }

  private void oH()
  {
    File localFile1 = new File(this.bZz);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(localFile1, ".nomedia");
    if (!localFile2.exists());
    try
    {
      localFile2.createNewFile();
      label48: this.bZE = 0;
      return;
    }
    catch (Exception localException)
    {
      break label48;
    }
  }

  private void ow()
  {
    if (this.bZD != null)
      this.bZD.start();
    synchronized (this.lock)
    {
      an.i(new p(this));
      return;
    }
  }

  private void ox()
  {
    aa.i("MicroMsg.DownloadPlayer", "clearCurrentMusicData");
    if (this.currentIndex >= 0)
    {
      this.bZV.remove(this.currentIndex);
      this.bZV.clear();
      this.currentIndex = (-1 + this.bZV.size());
    }
  }

  private boolean oy()
  {
    String str = this.bZH.getHeaderField("Content-Range");
    if (au.hX(str))
      aa.w("MicroMsg.DownloadPlayer", "dealWithContinueDownload, rangeInfo is null");
    while (true)
    {
      return false;
      String[] arrayOfString = str.split("-");
      if ((arrayOfString == null) || (arrayOfString.length <= 0))
      {
        aa.w("MicroMsg.DownloadPlayer", "dealWithContinueDownload, rangeArray empty");
        return false;
      }
      try
      {
        int i = arrayOfString[0].indexOf("bytes");
        int j = Integer.parseInt(arrayOfString[0].substring(1 + (i + 5)));
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(j);
        arrayOfObject2[1] = Long.valueOf(this.bZG);
        aa.e("MicroMsg.DownloadPlayer", "try continueDownLoad from %d, downloadFileLen %d", arrayOfObject2);
        long l1 = j;
        long l2 = this.bZG;
        if (l1 == l2)
          return true;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getLocalizedMessage();
        aa.c("MicroMsg.DownloadPlayer", "dealWithContinueDownload, error[%s]", arrayOfObject1);
      }
    }
    return false;
  }

  private void oz()
  {
    try
    {
      aa.i("MicroMsg.DownloadPlayer", "stopPlay");
      this.bZE = 0;
      while (true)
      {
        try
        {
          if (this.bZD == null)
            break label134;
          this.bZD.stop();
          this.bZD.release();
          this.bZD = null;
          synchronized (this.lock)
          {
            Iterator localIterator = this.bZO.iterator();
            if (localIterator.hasNext())
            {
              am localam = (am)localIterator.next();
              if (localam == null)
                continue;
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = localam.toString();
              aa.d("MicroMsg.DownloadPlayer", "on stop call back: %s", arrayOfObject);
              localam.onStop();
            }
          }
        }
        catch (Exception localException)
        {
          return;
        }
        label134: if (this.bZK != null)
          this.bZK.close();
      }
    }
    finally
    {
    }
  }

  private static String z(Context paramContext)
  {
    String str1 = "";
    String str2 = com.tencent.mm.sdk.platformtools.al.getPackageName();
    if (str2 == null);
    while (true)
    {
      return str1;
      try
      {
        PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str2, 0);
        if (localPackageInfo != null)
        {
          str1 = str1 + localPackageInfo.versionName;
          String str3 = str1 + "." + localPackageInfo.versionCode;
          return str3;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
      }
    }
    return str1;
  }

  public final com.tencent.mm.model.al a(String paramString1, String paramString2, b paramb, String paramString3)
  {
    Object localObject1;
    Object localObject2;
    or localor;
    if ((au.hX(paramb.cgQ)) && (au.hX(paramb.cgR)))
    {
      localObject1 = paramb.url;
      localObject2 = paramb.cgB;
      c(paramString1, (String)localObject1, (String)localObject2);
      if (paramb != null)
      {
        this.bZV.clear();
        if (paramb != null)
          break label130;
        localor = null;
      }
    }
    while (true)
    {
      a(localor);
      return this;
      if (paramb.cgQ == null);
      for (String str1 = paramb.url; ; str1 = paramb.cgQ)
      {
        if (paramb.cgR != null)
          break label113;
        String str3 = paramb.cgB;
        localObject1 = str1;
        localObject2 = str3;
        break;
      }
      label113: String str2 = paramb.cgR;
      localObject1 = str1;
      localObject2 = str2;
      break;
      label130: localor = new or();
      localor.fPT = 0;
      localor.fPU = paramString2;
      localor.fPV = 0.0F;
      localor.fPY = "";
      localor.fPZ = paramString3;
      localor.fQe = paramString3;
      localor.fAK = 1;
      localor.fQd = null;
      localor.fPW = paramb.title;
      localor.fPX = paramb.description;
      localor.fQc = paramb.url;
      localor.fQb = paramb.cgB;
      localor.fQa = paramb.cgQ;
      localor.fyE = paramb.appId;
      localor.fQf = paramString1;
    }
  }

  public final com.tencent.mm.model.al a(String paramString1, String paramString2, or paramor)
  {
    c(paramString1, au.R(paramor.fQa, paramor.fQc), paramor.fQb);
    if (paramor != null)
    {
      this.bZV.clear();
      a(a(paramor, paramString1, paramString2));
    }
    return this;
  }

  public final com.tencent.mm.model.al a(String paramString1, String paramString2, String paramString3, nk paramnk)
  {
    c(paramString1, paramnk.fyI, paramnk.fOr);
    Object localObject;
    if (paramnk != null)
    {
      this.bZV.clear();
      localObject = null;
      if (paramnk != null)
        break label43;
    }
    while (true)
    {
      a((or)localObject);
      return this;
      label43: or localor = new or();
      localor.fPT = 1;
      localor.fPU = paramString2;
      localor.fPV = 0.0F;
      localor.fPY = "";
      localor.fPZ = paramnk.fOn;
      localor.fQe = null;
      localor.fAK = 1;
      localor.fQd = null;
      localor.fPW = paramnk.bMa;
      localor.fPX = paramnk.fEA;
      localor.fQc = paramnk.fyI;
      localor.fQb = paramnk.fOr;
      localor.fQa = null;
      localor.fQg = paramnk.fOo;
      localor.fAS = paramnk.fzM;
      localor.fQf = paramString1;
      localor.fyE = paramString3;
      localObject = localor;
    }
  }

  public final com.tencent.mm.model.al a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    if (au.hX(paramString4));
    for (String str = paramString2; ; str = paramString4)
    {
      c(paramString1, str, paramString3);
      this.bZV.clear();
      a(a(6, null, paramString8, paramString9, paramString2, paramString3, paramString4, String.valueOf(paramString5), paramString1, paramString7, paramString6));
      return this;
    }
  }

  public final or a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10)
  {
    or localor = new or();
    localor.fPT = paramInt;
    localor.fPZ = paramString1;
    localor.fPW = paramString2;
    localor.fPX = paramString3;
    localor.fQc = paramString4;
    localor.fQb = paramString5;
    localor.fQa = paramString6;
    localor.fQf = paramString8;
    localor.fyE = paramString10;
    localor.fQe = paramString9;
    localor.fPU = paramString7;
    localor.fPV = 0.0F;
    localor.fPY = "";
    localor.fAK = 1;
    localor.fQd = null;
    localor.fAS = paramString7;
    return localor;
  }

  public final void a(am paramam)
  {
    if ((paramam == null) || (this.bZO.contains(paramam)))
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramam.toString();
    aa.d("MicroMsg.DownloadPlayer", "add callback: %s", arrayOfObject);
    synchronized (this.lock)
    {
      this.bZO.add(paramam);
      return;
    }
  }

  public final com.tencent.mm.model.al aP(String paramString)
  {
    if (oA() == null)
      return this;
    oA().fQd = paramString;
    return this;
  }

  public final com.tencent.mm.model.al b(or paramor)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.bZV.size());
    aa.d("MicroMsg.DownloadPlayer", "put musicwrapper: %d ", arrayOfObject);
    this.bZV.put(this.bZV.size(), paramor);
    return this;
  }

  public final void b(am paramam)
  {
    if (paramam == null)
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramam.toString();
    aa.d("MicroMsg.DownloadPlayer", "unRegistDownloadCallBack: %s", arrayOfObject);
    synchronized (this.lock)
    {
      this.bZO.remove(paramam);
      return;
    }
  }

  public final com.tencent.mm.model.al br(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.bZV.size()));
    do
    {
      return this;
      this.bZW = paramInt;
      this.currentIndex = this.bZW;
    }
    while (oA() == null);
    this.bZM = true;
    oF();
    return this;
  }

  public final void c(am paramam)
  {
    aa.d("MicroMsg.DownloadPlayer", "releasePlayer");
    if (!os())
    {
      release();
      ox();
      aa.d("MicroMsg.DownloadPlayer", "releasePlayer == release playing");
      this.bZQ = false;
      this.bZR = false;
      this.bZg = false;
      this.bZU = false;
      if (this.bZh != null)
      {
        this.bZS = true;
        this.bZh.qc();
      }
    }
    b(paramam);
  }

  public final boolean d(String paramString1, String paramString2, String paramString3)
  {
    return ((getUrl() != null) && (getUrl().equals(paramString1))) || ((getUrl() != null) && (getUrl().equals(paramString3))) || ((oA() != null) && (oA().fQb != null) && (oA().fQb.equals(paramString2)));
  }

  public final String getTitle()
  {
    if (oA() == null)
      return "";
    if (oA().fPW == null)
      return "";
    return oA().fPW;
  }

  public final or oA()
  {
    if ((this.currentIndex < 0) || (this.currentIndex >= this.bZV.size()));
    for (or localor = null; ; localor = (or)this.bZV.get(this.currentIndex))
    {
      if (localor == null)
      {
        this.bZM = false;
        this.bZW = -1;
      }
      return localor;
    }
  }

  public final com.tencent.mm.model.al oB()
  {
    if ((oA() == null) || (oC() == null));
    while (true)
    {
      return this;
      String str = new String(aO(oC()));
      int i = str.indexOf("{");
      if (i != -1)
        str = str.substring(i);
      try
      {
        JSONObject localJSONObject = new JSONObject(str);
        or localor = oA();
        if (localor != null)
        {
          localor.fMa = localJSONObject.getInt("song_ID");
          if (au.hX(localor.fPW))
            localor.fPW = localJSONObject.getString("song_Name");
          if (au.hX(localor.fQb))
            localor.fQb = localJSONObject.getString("song_WapLiveURL");
          if (au.hX(localor.fQa))
            localor.fQa = localJSONObject.getString("song_WifiURL");
          if (au.hX(localor.fPY))
            localor.fPY = localJSONObject.getString("song_Album");
          if (au.hX(localor.fPX))
          {
            localor.fPX = localJSONObject.getString("song_Singer");
            return this;
          }
        }
      }
      catch (Exception localException)
      {
      }
    }
    return this;
  }

  public final int oD()
  {
    if (oA() == null)
      return -1;
    return oA().fMa;
  }

  public final String oE()
  {
    if (oA() == null)
      return null;
    return oA().fyE;
  }

  public final com.tencent.mm.model.al oF()
  {
    if (oA() == null)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(this.currentIndex);
      SparseArray localSparseArray = this.bZV;
      int i = 0;
      if (localSparseArray == null);
      while (true)
      {
        arrayOfObject[1] = Integer.valueOf(i);
        aa.b("MicroMsg.DownloadPlayer", "play UI Music error null current music, currentIndex: %d, music size: %d", arrayOfObject);
        synchronized (this.lock)
        {
          Iterator localIterator = this.bZO.iterator();
          am localam;
          do
          {
            if (!localIterator.hasNext())
              break;
            localam = (am)localIterator.next();
          }
          while (localam == null);
          localam.pB();
        }
        i = this.bZV.size();
      }
      return this;
    }
    aa.d("MicroMsg.DownloadPlayer", "play UI Music = =");
    this.bZz = (oA().fQf + "music/");
    if (this.context == null)
      this.context = com.tencent.mm.sdk.platformtools.al.getContext();
    oH();
    oG();
    j(oA().fQc, oA().fQb);
    return this;
  }

  public final com.tencent.mm.model.al oG()
  {
    aa.i("MicroMsg.DownloadPlayer", "stop UI Music");
    if (this.bZh != null)
    {
      this.bZS = true;
      this.bZh.qc();
    }
    this.bZL = true;
    oz();
    return this;
  }

  public final com.tencent.mm.model.al oI()
  {
    this.currentIndex = (1 + this.currentIndex);
    if (this.bZW > 0)
    {
      if (this.currentIndex >= this.bZV.size())
        this.currentIndex = 0;
      if (this.currentIndex == this.bZW)
      {
        this.bZW = -1;
        return this;
      }
    }
    if (oA() == null)
    {
      this.currentIndex = (-1 + this.currentIndex);
      return this;
    }
    oF();
    return this;
  }

  public final String oJ()
  {
    if (oA() == null)
      return null;
    return oA().fAS;
  }

  public final com.tencent.mm.model.al oK()
  {
    this.bZV.clear();
    this.currentIndex = -1;
    this.bZW = -1;
    this.bZM = false;
    release();
    return this;
  }

  public final int oo()
  {
    if (oA() == null)
      return -1;
    return oA().fPT;
  }

  public final String op()
  {
    if (oA() == null)
      return null;
    return oA().fPU;
  }

  public final int oq()
  {
    if (oA() == null)
      return 0;
    return oA().fQg;
  }

  public final String or()
  {
    if (oA() == null)
      return null;
    return oA().fPY;
  }

  public final boolean os()
  {
    return (this.bZD != null) && (this.bZD.isPlaying());
  }

  public final String ot()
  {
    if (oA() == null)
      return null;
    return oA().fQe;
  }

  public final void ou()
  {
    c(null);
    aa.i("MicroMsg.DownloadPlayer", "clear call back");
    synchronized (this.lock)
    {
      this.bZO.clear();
      return;
    }
  }

  public final boolean ov()
  {
    return !os();
  }

  public final void pause()
  {
    if (os())
      this.bZD.pause();
    this.bZU = false;
    synchronized (this.lock)
    {
      an.i(new o(this));
      return;
    }
  }

  public final void release()
  {
    oG();
    ox();
  }

  public final void resume()
  {
    ow();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.k
 * JD-Core Version:    0.6.2
 */