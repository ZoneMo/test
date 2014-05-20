package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.plugin.backup.b.a;
import com.tencent.mm.plugin.backup.b.c;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.Set;

public final class ar
  implements com.tencent.mm.n.m, n
{
  private static int cKf = 15;
  private int cAG = 0;
  private al cKg;
  private int cKo = 0;
  private z cKp = null;
  private boolean cKq = false;
  private HashMap cLb = new HashMap();
  private s cLc = new s();
  private int cLd = 0;
  private int cLe = 0;
  private long cLf = 0L;
  private final Handler ctk = new Handler(Looper.getMainLooper());
  private Object lock = new Object();

  private void GA()
  {
    if (this.cKq)
      return;
    this.cKq = true;
    d.uA().a(326, this);
    d.uA().a(327, this);
  }

  private boolean Hw()
  {
    return cj.hX(this.cLc.GU());
  }

  private void Hy()
  {
    if (Hw())
    {
      aa.d("MicroMsg.RecoverServer", "checkDownLoadData break  ");
      return;
      break label133;
    }
    label133: label455: label477: 
    do
    {
      do
      {
        do
        {
          Iterator localIterator;
          do
          {
            do
            {
              if (this.cLc.Hb())
              {
                aa.d("MicroMsg.RecoverServer", "checkDownLoadData has paused");
                return;
              }
              if (at.cHx)
              {
                Hx();
                return;
              }
              aa.i("MicroMsg.RecoverServer", "checkDownLoadData dataItemIdList.size: " + this.cLc.GX().size() + "  downloadingMap.size: " + this.cLb.size());
              if (this.cLc.GX().isEmpty())
                break;
            }
            while (this.cLb.size() > cKf);
            localIterator = this.cLc.GX().iterator();
          }
          while (!localIterator.hasNext());
          String str = (String)localIterator.next();
          if (this.cLb.containsValue(str))
            break;
          c localc = new c(this.cLc.GT(), this.cLc.GU(), str, this.cLc.GV(), d.Gr(), this);
          if (!d.uA().d(localc))
          {
            aa.e("MicroMsg.RecoverServer", "checkDownLoadData doScene RecoverData failed");
            e(3, -1, "send RecoverData");
            return;
          }
          int i = localc.hashCode();
          aa.d("MicroMsg.RecoverServer", "downloadingMap put:" + i + ":" + str + "  now size:" + this.cLb.size() + " isContain:" + this.cLb.containsKey(Integer.valueOf(i)));
          this.cLb.put(Integer.valueOf(i), str);
          if (this.cLb.size() <= cKf)
            break;
          return;
          aa.d("MicroMsg.RecoverServer", "dataItemIdList is empty");
          if (this.cLc.GW() == -1)
          {
            this.cLc.eZ(0);
            if (this.cLc.GV() != 1)
              break label455;
            this.cLc.eY(2);
          }
          while (true)
          {
            if ((this.cLc.GV() != 1) && (this.cLc.GV() != 2))
              break label477;
            com.tencent.mm.plugin.backup.b.f localf = new com.tencent.mm.plugin.backup.b.f(this.cLc.GT(), this.cLc.GU(), this.cLc.GW(), this.cLc.GV());
            if (d.uA().d(localf))
              break;
            e(3, -1, " send RecoverHead");
            return;
            if (this.cLc.GV() == 2)
              this.cLc.eY(3);
          }
          if (this.cLc.GV() != 3)
            break label541;
          aa.d("MicroMsg.RecoverServer", "recover downLoad finish");
          c.HJ();
        }
        while (this.cKp == null);
        this.cKp.b(this.cLc.Ha(), this.cLc.Ha());
        this.cKp.Hn();
        return;
        if ((this.cKg != null) && (this.cKg.isAlive()))
          break label575;
      }
      while (this.cKp == null);
      this.cKp.Hn();
      return;
    }
    while (this.cLc.Hb());
    label541: label575: synchronized (this.lock)
    {
      this.lock.notify();
      return;
    }
  }

  // ERROR //
  private int a(String paramString, HashMap paramHashMap, aw paramaw)
  {
    // Byte code:
    //   0: invokestatic 297	java/lang/System:currentTimeMillis	()J
    //   3: lstore 4
    //   5: aload_1
    //   6: iconst_0
    //   7: iconst_m1
    //   8: invokestatic 303	com/tencent/mm/a/c:h	(Ljava/lang/String;II)[B
    //   11: astore 6
    //   13: new 305	com/tencent/mm/protocal/a/af
    //   16: dup
    //   17: invokespecial 306	com/tencent/mm/protocal/a/af:<init>	()V
    //   20: aload 6
    //   22: invokevirtual 310	com/tencent/mm/protocal/a/af:aH	([B)Lcom/tencent/mm/protocal/a/af;
    //   25: astore 8
    //   27: aload 8
    //   29: getfield 314	com/tencent/mm/protocal/a/af:fAD	Ljava/util/LinkedList;
    //   32: invokevirtual 317	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   35: astore 9
    //   37: aload 9
    //   39: invokeinterface 172 1 0
    //   44: ifeq +916 -> 960
    //   47: aload 9
    //   49: invokeinterface 176 1 0
    //   54: checkcast 319	com/tencent/mm/protocal/a/ae
    //   57: astore 10
    //   59: aload_0
    //   60: getfield 274	com/tencent/mm/plugin/backup/model/ar:cKg	Lcom/tencent/mm/plugin/backup/model/al;
    //   63: invokevirtual 322	com/tencent/mm/plugin/backup/model/al:Hs	()Z
    //   66: ifeq +31 -> 97
    //   69: iconst_m1
    //   70: ireturn
    //   71: astore 7
    //   73: ldc 106
    //   75: new 129	java/lang/StringBuilder
    //   78: dup
    //   79: ldc_w 324
    //   82: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload_1
    //   86: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokestatic 204	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   95: iconst_0
    //   96: ireturn
    //   97: aload_0
    //   98: getfield 76	com/tencent/mm/plugin/backup/model/ar:cLc	Lcom/tencent/mm/plugin/backup/model/s;
    //   101: invokevirtual 117	com/tencent/mm/plugin/backup/model/s:Hb	()Z
    //   104: ifeq +22 -> 126
    //   107: aload_0
    //   108: getfield 52	com/tencent/mm/plugin/backup/model/ar:lock	Ljava/lang/Object;
    //   111: astore 28
    //   113: aload 28
    //   115: monitorenter
    //   116: aload_0
    //   117: getfield 52	com/tencent/mm/plugin/backup/model/ar:lock	Ljava/lang/Object;
    //   120: invokevirtual 327	java/lang/Object:wait	()V
    //   123: aload 28
    //   125: monitorexit
    //   126: ldc_w 329
    //   129: new 129	java/lang/StringBuilder
    //   132: dup
    //   133: ldc_w 331
    //   136: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload 10
    //   141: getfield 334	com/tencent/mm/protocal/a/ae:dGR	I
    //   144: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   147: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: invokestatic 338	com/tencent/mm/plugin/backup/model/d:Gj	()Lcom/tencent/mm/plugin/backup/model/ax;
    //   156: invokevirtual 344	com/tencent/mm/plugin/backup/model/ax:sr	()Lcom/tencent/mm/storage/e;
    //   159: iconst_2
    //   160: invokevirtual 350	com/tencent/mm/storage/e:get	(I)Ljava/lang/Object;
    //   163: checkcast 178	java/lang/String
    //   166: astore 12
    //   168: invokestatic 338	com/tencent/mm/plugin/backup/model/d:Gj	()Lcom/tencent/mm/plugin/backup/model/ax;
    //   171: invokevirtual 354	com/tencent/mm/plugin/backup/model/ax:sw	()Lcom/tencent/mm/storage/ap;
    //   174: astore 13
    //   176: aload 10
    //   178: getfield 358	com/tencent/mm/protocal/a/ae:fzs	Lcom/tencent/mm/protocal/a/rw;
    //   181: invokevirtual 363	com/tencent/mm/protocal/a/rw:getString	()Ljava/lang/String;
    //   184: astore 14
    //   186: aload 10
    //   188: getfield 366	com/tencent/mm/protocal/a/ae:fzt	Lcom/tencent/mm/protocal/a/rw;
    //   191: invokevirtual 363	com/tencent/mm/protocal/a/rw:getString	()Ljava/lang/String;
    //   194: astore 15
    //   196: invokestatic 371	com/tencent/mm/plugin/backup/model/r:GQ	()Ljava/util/List;
    //   199: astore 16
    //   201: aload 16
    //   203: aload 14
    //   205: invokeinterface 374 2 0
    //   210: ifne +15 -> 225
    //   213: aload 16
    //   215: aload 15
    //   217: invokeinterface 374 2 0
    //   222: ifeq +164 -> 386
    //   225: ldc_w 329
    //   228: new 129	java/lang/StringBuilder
    //   231: dup
    //   232: ldc_w 376
    //   235: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   238: aload 14
    //   240: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: ldc_w 378
    //   246: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: aload 15
    //   251: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   257: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: aload 10
    //   262: getfield 334	com/tencent/mm/protocal/a/ae:dGR	I
    //   265: lookupswitch	default:+91->356, 1:+629->894, 3:+673->938, 34:+651->916, 37:+684->949, 40:+684->949, 42:+684->949, 43:+662->927, 48:+684->949, 49:+640->905, 10000:+684->949
    //   357: getstatic 386	com/tencent/mm/plugin/backup/a/h:cJD	I
    //   360: iadd
    //   361: putstatic 386	com/tencent/mm/plugin/backup/a/h:cJD	I
    //   364: aload_3
    //   365: invokevirtual 391	com/tencent/mm/plugin/backup/model/aw:HA	()V
    //   368: goto -331 -> 37
    //   371: astore 30
    //   373: aload 28
    //   375: monitorexit
    //   376: iconst_m1
    //   377: ireturn
    //   378: astore 29
    //   380: aload 28
    //   382: monitorexit
    //   383: aload 29
    //   385: athrow
    //   386: ldc_w 329
    //   389: new 129	java/lang/StringBuilder
    //   392: dup
    //   393: ldc_w 393
    //   396: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   399: aload 14
    //   401: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: ldc_w 378
    //   407: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: aload 15
    //   412: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   421: aload 14
    //   423: invokestatic 396	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   426: ifne +11 -> 437
    //   429: aload 15
    //   431: invokestatic 396	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   434: ifeq +46 -> 480
    //   437: ldc_w 329
    //   440: ldc_w 398
    //   443: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   446: goto -186 -> 260
    //   449: astore 11
    //   451: ldc 106
    //   453: new 129	java/lang/StringBuilder
    //   456: dup
    //   457: ldc_w 400
    //   460: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   463: aload 11
    //   465: invokevirtual 401	java/lang/Exception:toString	()Ljava/lang/String;
    //   468: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: invokestatic 204	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   477: goto -217 -> 260
    //   480: aload 10
    //   482: getfield 404	com/tencent/mm/protocal/a/ae:fzo	I
    //   485: ifle +188 -> 673
    //   488: aload 12
    //   490: aload 14
    //   492: invokevirtual 407	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   495: ifeq +629 -> 1124
    //   498: aload 15
    //   500: astore 17
    //   502: aload 13
    //   504: aload 17
    //   506: aload 10
    //   508: getfield 404	com/tencent/mm/protocal/a/ae:fzo	I
    //   511: invokevirtual 413	com/tencent/mm/storage/ap:ae	(Ljava/lang/String;I)Lcom/tencent/mm/storage/ak;
    //   514: astore 18
    //   516: aload 18
    //   518: invokevirtual 418	com/tencent/mm/storage/ak:Bo	()J
    //   521: lconst_0
    //   522: lcmp
    //   523: ifne -263 -> 260
    //   526: aload 10
    //   528: getfield 404	com/tencent/mm/protocal/a/ae:fzo	I
    //   531: ifeq +13 -> 544
    //   534: aload 18
    //   536: aload 10
    //   538: getfield 404	com/tencent/mm/protocal/a/ae:fzo	I
    //   541: invokevirtual 421	com/tencent/mm/storage/ak:dA	(I)V
    //   544: aload 18
    //   546: ldc2_w 422
    //   549: aload 10
    //   551: getfield 426	com/tencent/mm/protocal/a/ae:fAv	I
    //   554: i2l
    //   555: lmul
    //   556: invokevirtual 430	com/tencent/mm/storage/ak:G	(J)V
    //   559: aload 18
    //   561: aload 10
    //   563: getfield 334	com/tencent/mm/protocal/a/ae:dGR	I
    //   566: invokevirtual 433	com/tencent/mm/storage/ak:setType	(I)V
    //   569: invokestatic 338	com/tencent/mm/plugin/backup/model/d:Gj	()Lcom/tencent/mm/plugin/backup/model/ax;
    //   572: invokevirtual 437	com/tencent/mm/plugin/backup/model/ax:sz	()Lcom/tencent/mm/storage/cc;
    //   575: astore 19
    //   577: invokestatic 338	com/tencent/mm/plugin/backup/model/d:Gj	()Lcom/tencent/mm/plugin/backup/model/ax;
    //   580: invokevirtual 441	com/tencent/mm/plugin/backup/model/ax:su	()Lcom/tencent/mm/storage/k;
    //   583: astore 20
    //   585: aload 19
    //   587: aload 14
    //   589: invokevirtual 446	com/tencent/mm/storage/cc:has	(Ljava/lang/String;)Z
    //   592: ifne +526 -> 1118
    //   595: aload 12
    //   597: aload 14
    //   599: invokevirtual 407	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   602: ifeq +529 -> 1131
    //   605: goto +513 -> 1118
    //   608: iload 21
    //   610: ifeq +151 -> 761
    //   613: aload 20
    //   615: aload 15
    //   617: invokevirtual 452	com/tencent/mm/storage/k:tO	(Ljava/lang/String;)Lcom/tencent/mm/storage/i;
    //   620: astore 22
    //   622: aload 22
    //   624: ifnull +61 -> 685
    //   627: aload 22
    //   629: invokevirtual 457	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   632: invokestatic 396	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   635: ifne +50 -> 685
    //   638: aload 22
    //   640: invokevirtual 460	com/tencent/mm/storage/i:aAp	()Z
    //   643: ifeq +42 -> 685
    //   646: ldc_w 329
    //   649: new 129	java/lang/StringBuilder
    //   652: dup
    //   653: ldc_w 376
    //   656: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   659: aload 15
    //   661: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   667: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   670: goto -410 -> 260
    //   673: ldc_w 329
    //   676: ldc_w 462
    //   679: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   682: goto -422 -> 260
    //   685: aload 18
    //   687: iconst_1
    //   688: invokevirtual 465	com/tencent/mm/storage/ak:bZ	(I)V
    //   691: aload 18
    //   693: aload 15
    //   695: invokevirtual 468	com/tencent/mm/storage/ak:uK	(Ljava/lang/String;)V
    //   698: aload 18
    //   700: aload 10
    //   702: getfield 471	com/tencent/mm/protocal/a/ae:fAu	I
    //   705: invokevirtual 474	com/tencent/mm/storage/ak:setStatus	(I)V
    //   708: goto +429 -> 1137
    //   711: aload_2
    //   712: aload 15
    //   714: aload_2
    //   715: aload 14
    //   717: invokevirtual 477	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   720: checkcast 222	java/lang/Integer
    //   723: iconst_0
    //   724: invokestatic 480	com/tencent/mm/platformtools/au:a	(Ljava/lang/Integer;I)I
    //   727: invokestatic 226	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   730: invokevirtual 236	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   733: pop
    //   734: aload 10
    //   736: getfield 334	com/tencent/mm/protocal/a/ae:dGR	I
    //   739: invokestatic 484	com/tencent/mm/plugin/backup/model/d:eV	(I)Lcom/tencent/mm/plugin/backup/model/y;
    //   742: astore 24
    //   744: aload 24
    //   746: ifnonnull +131 -> 877
    //   749: ldc_w 329
    //   752: ldc_w 486
    //   755: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   758: goto -498 -> 260
    //   761: aload 20
    //   763: aload 14
    //   765: invokevirtual 452	com/tencent/mm/storage/k:tO	(Ljava/lang/String;)Lcom/tencent/mm/storage/i;
    //   768: astore 26
    //   770: aload 26
    //   772: ifnull +49 -> 821
    //   775: aload 26
    //   777: invokevirtual 457	com/tencent/mm/storage/i:getUsername	()Ljava/lang/String;
    //   780: invokestatic 396	com/tencent/mm/platformtools/au:hX	(Ljava/lang/String;)Z
    //   783: ifne +38 -> 821
    //   786: aload 26
    //   788: invokevirtual 460	com/tencent/mm/storage/i:aAp	()Z
    //   791: ifeq +30 -> 821
    //   794: ldc_w 329
    //   797: new 129	java/lang/StringBuilder
    //   800: dup
    //   801: ldc_w 376
    //   804: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   807: aload 14
    //   809: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   812: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   815: invokestatic 381	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   818: goto -558 -> 260
    //   821: aload 18
    //   823: iconst_0
    //   824: invokevirtual 465	com/tencent/mm/storage/ak:bZ	(I)V
    //   827: aload 18
    //   829: aload 14
    //   831: invokevirtual 468	com/tencent/mm/storage/ak:uK	(Ljava/lang/String;)V
    //   834: aload 18
    //   836: iconst_4
    //   837: invokevirtual 474	com/tencent/mm/storage/ak:setStatus	(I)V
    //   840: aload 10
    //   842: getfield 471	com/tencent/mm/protocal/a/ae:fAu	I
    //   845: iconst_3
    //   846: if_icmpne +291 -> 1137
    //   849: aload_2
    //   850: aload 14
    //   852: iconst_1
    //   853: aload_2
    //   854: aload 14
    //   856: invokevirtual 477	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   859: checkcast 222	java/lang/Integer
    //   862: iconst_0
    //   863: invokestatic 480	com/tencent/mm/platformtools/au:a	(Ljava/lang/Integer;I)I
    //   866: iadd
    //   867: invokestatic 226	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   870: invokevirtual 236	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   873: pop
    //   874: goto +263 -> 1137
    //   877: aload 24
    //   879: aload 12
    //   881: aload 10
    //   883: aload 18
    //   885: invokeinterface 491 4 0
    //   890: pop
    //   891: goto -631 -> 260
    //   894: iconst_1
    //   895: getstatic 494	com/tencent/mm/plugin/backup/a/h:cJz	I
    //   898: iadd
    //   899: putstatic 494	com/tencent/mm/plugin/backup/a/h:cJz	I
    //   902: goto -546 -> 356
    //   905: iconst_1
    //   906: getstatic 497	com/tencent/mm/plugin/backup/a/h:cJC	I
    //   909: iadd
    //   910: putstatic 497	com/tencent/mm/plugin/backup/a/h:cJC	I
    //   913: goto -557 -> 356
    //   916: iconst_1
    //   917: getstatic 500	com/tencent/mm/plugin/backup/a/h:cJB	I
    //   920: iadd
    //   921: putstatic 500	com/tencent/mm/plugin/backup/a/h:cJB	I
    //   924: goto -568 -> 356
    //   927: iconst_1
    //   928: getstatic 503	com/tencent/mm/plugin/backup/a/h:cJA	I
    //   931: iadd
    //   932: putstatic 503	com/tencent/mm/plugin/backup/a/h:cJA	I
    //   935: goto -579 -> 356
    //   938: iconst_1
    //   939: getstatic 506	com/tencent/mm/plugin/backup/a/h:cJx	I
    //   942: iadd
    //   943: putstatic 506	com/tencent/mm/plugin/backup/a/h:cJx	I
    //   946: goto -590 -> 356
    //   949: iconst_1
    //   950: getstatic 509	com/tencent/mm/plugin/backup/a/h:cJy	I
    //   953: iadd
    //   954: putstatic 509	com/tencent/mm/plugin/backup/a/h:cJy	I
    //   957: goto -601 -> 356
    //   960: ldc_w 511
    //   963: new 129	java/lang/StringBuilder
    //   966: dup
    //   967: ldc_w 513
    //   970: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   973: getstatic 386	com/tencent/mm/plugin/backup/a/h:cJD	I
    //   976: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   979: ldc_w 515
    //   982: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: getstatic 494	com/tencent/mm/plugin/backup/a/h:cJz	I
    //   988: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   991: ldc_w 517
    //   994: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   997: getstatic 509	com/tencent/mm/plugin/backup/a/h:cJy	I
    //   1000: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1003: ldc_w 519
    //   1006: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1009: getstatic 506	com/tencent/mm/plugin/backup/a/h:cJx	I
    //   1012: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1015: ldc_w 521
    //   1018: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1021: getstatic 500	com/tencent/mm/plugin/backup/a/h:cJB	I
    //   1024: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1027: ldc_w 523
    //   1030: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1033: getstatic 503	com/tencent/mm/plugin/backup/a/h:cJA	I
    //   1036: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1039: ldc_w 525
    //   1042: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1045: getstatic 497	com/tencent/mm/plugin/backup/a/h:cJC	I
    //   1048: invokevirtual 148	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1051: ldc_w 527
    //   1054: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1057: invokestatic 297	java/lang/System:currentTimeMillis	()J
    //   1060: getstatic 530	com/tencent/mm/plugin/backup/a/h:cJE	J
    //   1063: lsub
    //   1064: invokevirtual 533	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1067: ldc_w 535
    //   1070: invokevirtual 153	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1073: getstatic 538	com/tencent/mm/plugin/backup/a/h:cJG	J
    //   1076: invokevirtual 533	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1079: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1082: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1085: ldc 106
    //   1087: new 129	java/lang/StringBuilder
    //   1090: dup
    //   1091: ldc_w 540
    //   1094: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1097: invokestatic 297	java/lang/System:currentTimeMillis	()J
    //   1100: lload 4
    //   1102: lsub
    //   1103: invokevirtual 533	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1106: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1109: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1112: aload 8
    //   1114: getfield 543	com/tencent/mm/protocal/a/af:fAC	I
    //   1117: ireturn
    //   1118: iconst_1
    //   1119: istore 21
    //   1121: goto -513 -> 608
    //   1124: aload 14
    //   1126: astore 17
    //   1128: goto -626 -> 502
    //   1131: iconst_0
    //   1132: istore 21
    //   1134: goto -526 -> 608
    //   1137: iload 21
    //   1139: ifeq +6 -> 1145
    //   1142: goto -431 -> 711
    //   1145: aload 14
    //   1147: astore 15
    //   1149: goto -438 -> 711
    //
    // Exception table:
    //   from	to	target	type
    //   13	27	71	java/lang/Exception
    //   116	123	371	java/lang/InterruptedException
    //   116	123	378	finally
    //   373	376	378	finally
    //   126	225	449	java/lang/Exception
    //   225	260	449	java/lang/Exception
    //   386	437	449	java/lang/Exception
    //   437	446	449	java/lang/Exception
    //   480	498	449	java/lang/Exception
    //   502	544	449	java/lang/Exception
    //   544	605	449	java/lang/Exception
    //   613	622	449	java/lang/Exception
    //   627	670	449	java/lang/Exception
    //   673	682	449	java/lang/Exception
    //   685	708	449	java/lang/Exception
    //   711	744	449	java/lang/Exception
    //   749	758	449	java/lang/Exception
    //   761	770	449	java/lang/Exception
    //   775	818	449	java/lang/Exception
    //   821	874	449	java/lang/Exception
    //   877	891	449	java/lang/Exception
  }

  private void e(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 == 3) && (paramInt2 == 9999))
    {
      aa.i("MicroMsg.RecoverServer", "dealWithErrType pause err ignore");
      return;
    }
    if ((!this.cLc.Hb()) && (this.cKp != null))
    {
      this.cKo = 2;
      com.tencent.mm.plugin.d.c.m.dZN.j(10341, "2," + paramInt1 + "/" + paramInt2 + "/" + paramString);
      aa.aM("MicroMsg.RecoverServer", paramInt1 + ", " + paramInt2 + " " + paramString);
      q.GO();
      if (this.cKp != null)
        this.cKp.V(paramInt1, paramInt2);
    }
    c.pause();
    this.cLc.aa(true);
  }

  private void reset()
  {
    this.cLb.clear();
    this.cAG = 0;
    this.cLd = 0;
    this.cLe = 0;
  }

  public final boolean GG()
  {
    return this.cLc.GT() != 0;
  }

  public final int GH()
  {
    return this.cKo;
  }

  public final void GI()
  {
    this.cKo = 0;
  }

  public final void Gx()
  {
    if (this.cAG == 0)
      b(null, 0);
    this.cKo = 0;
    GA();
    c.resume();
    if (!Hw())
    {
      this.cLc.aa(false);
      Hy();
      return;
    }
    aa.e("MicroMsg.RecoverServer", "reStartBak the task has canceled");
  }

  public final boolean Gy()
  {
    return (this.cLc.Hb()) && ((this.cKg == null) || (!this.cKg.isAlive()));
  }

  public final boolean Gz()
  {
    return this.cLc.Hb();
  }

  public final void Hv()
  {
    this.cKo = 0;
    c.pause();
    this.cLc.aa(true);
    if (this.cLc.GV() == 4)
      this.cLc.eY(3);
  }

  public final void Hx()
  {
    if ((this.cKg != null) && (this.cKg.isAlive()) && (!this.cLc.Hb()))
      synchronized (this.lock)
      {
        this.lock.notify();
        return;
      }
    if (this.cLc.GV() == 4)
    {
      aa.w("MicroMsg.RecoverServer", "recoverFromSdcard is recovering");
      return;
    }
    this.cLc.eY(4);
    this.cLc.aa(false);
    d.a(new as(this));
  }

  public final boolean Hz()
  {
    return this.cLc.GV() >= 3;
  }

  public final void a(int paramInt1, int paramInt2, x paramx)
  {
    a locala;
    if (paramx.getType() == 327)
    {
      locala = (a)paramx;
      if (locala.iC(this.cLc.GU()))
        break label40;
      aa.d("MicroMsg.RecoverServer", "scene back is old");
    }
    label40: 
    do
    {
      return;
      this.cAG += locala.HI();
    }
    while ((this.cKp == null) || (this.cLc.Hb()));
    this.cKp.b(this.cAG, this.cLc.Ha());
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RecoverServer", "onSceneEnd errType:" + paramInt1 + " errCode:" + paramInt2);
    if (!((a)paramx).iC(this.cLc.GU()))
      aa.d("MicroMsg.RecoverServer", "scene back is old, this.bakChatClientId:" + this.cLc.GU());
    do
    {
      return;
      if (paramx.getType() == 327)
      {
        int j = paramx.hashCode();
        aa.d("MicroMsg.RecoverServer", "downloadingMap remove:" + j);
        this.cLb.remove(Integer.valueOf(j));
      }
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        e(paramInt1, paramInt2, "sceneType" + paramx.getType() + " " + paramString);
        return;
      }
      if (paramx.getType() == 326)
      {
        com.tencent.mm.plugin.backup.b.f localf = (com.tencent.mm.plugin.backup.b.f)paramx;
        int i = localf.getDataType();
        if (i != this.cLc.GV())
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(i);
          aa.c("MicroMsg.RecoverServer", "%d type is not the same with stateMode", arrayOfObject);
          return;
        }
        Iterator localIterator = localf.HO().iterator();
        while (localIterator.hasNext())
        {
          rw localrw = (rw)localIterator.next();
          this.cLc.is(localrw.getString());
          if (this.cLc.GV() == 1)
          {
            String str2 = d.Gr() + "mmbakItem/" + r.ip(localrw.getString()) + localrw.getString();
            this.cLc.iu(str2);
          }
        }
        aa.d("MicroMsg.RecoverServer", "headIndex: " + this.cLc.GW());
        if (localf.HP() == 0)
        {
          this.cLc.eZ(localf.getIndex());
          Hy();
          return;
        }
        this.cLc.eZ(-1);
        Hy();
        return;
      }
    }
    while (paramx.getType() != 327);
    c localc = (c)paramx;
    String str1 = localc.HL();
    this.cLc.it(str1);
    this.cLc.fa(this.cLc.GZ() + localc.vR());
    aa.d("MicroMsg.RecoverServer", "dataItemIdList : " + this.cLc.GX().size() + " downloadingMap:" + this.cLb.size());
    Hy();
  }

  public final void a(z paramz)
  {
    this.cKp = paramz;
  }

  public final void b(z paramz)
  {
    if (paramz.equals(this.cKp))
      this.cKp = null;
  }

  public final void b(Integer paramInteger, int paramInt)
  {
    this.cKo = 0;
    this.cLc.aa(false);
    GA();
    cKf = r.GS();
    c.resume();
    d.Gn().init();
    com.tencent.mm.plugin.backup.a.h.cJF = System.currentTimeMillis();
    if (paramInteger == null)
    {
      if (this.cAG == 0)
        this.cAG = this.cLc.GZ();
      if ((this.cLd == 0) && (this.cKp != null))
        this.cKp.b(this.cAG, this.cLc.Ha());
      if ((this.cLd != 0) && (this.cKp != null))
        this.cKp.c(this.cLd, this.cLe);
    }
    while (true)
    {
      this.cLf = System.currentTimeMillis();
      Hy();
      return;
      reset();
      Random localRandom = new Random();
      localRandom.setSeed(cj.FE());
      String str = com.tencent.mm.a.f.h((cj.FE() + localRandom.nextDouble()).getBytes());
      aa.d("MicroMsg.RecoverServer", "startTask bakChatClientId:" + str + " bakchatSvrID:" + paramInteger);
      this.cLc.a(paramInteger.intValue(), str, paramInt);
    }
  }

  public final void g(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2)
      q.a(cj.FE(), 2, this.cAG);
    this.cKq = false;
    d.uA().b(326, this);
    d.uA().b(327, this);
    Iterator localIterator = this.cLb.keySet().iterator();
    while (localIterator.hasNext())
    {
      int i = ((Integer)localIterator.next()).intValue();
      d.uA().cancel(i);
    }
    reset();
    this.cLc.aa(true);
    if (this.cKg != null)
      aa.i("MicroMsg.RecoverServer", "cancelBak kill thread");
    synchronized (this.lock)
    {
      this.cKg.kill();
      if (paramBoolean1)
        this.cLc.reset();
      return;
    }
  }

  public final int getOffset()
  {
    if (this.cAG != 0)
      return this.cAG;
    return this.cLc.GZ();
  }

  public final int vR()
  {
    return this.cLc.Ha();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ar
 * JD-Core Version:    0.6.2
 */