package com.tencent.mm.booter;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import com.tencent.mm.c.a.ia;
import com.tencent.mm.c.a.ic;
import com.tencent.mm.model.ax;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.modelvoice.bf;
import com.tencent.mm.modelvoice.p;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.an;
import com.tencent.mm.storage.ao;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.LauncherUIProxy;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

public final class w
  implements com.tencent.mm.model.ap, ax
{
  private static final Set cap;
  private static int cas = 0;
  private static int cat = 0;
  private static WeakReference cau;
  private String bNl;
  private String bNy;
  private String cab;
  private String cac;
  private ak cad;
  private int cae;
  private String caf;
  private Intent cag;
  private int cah;
  private int cai;
  private boolean caj;
  private long cak;
  private int cal;
  private boolean cam;
  private Bitmap can;

  @SuppressLint({"HandlerLeak"})
  private Handler cao = new x(this, Looper.getMainLooper());

  @SuppressLint({"HandlerLeak"})
  private Handler caq = new y(this, Looper.getMainLooper());
  private boolean car = false;
  private Context context = null;
  private MediaPlayer tv = null;

  static
  {
    HashSet localHashSet = new HashSet();
    cap = localHashSet;
    localHashSet.add("readerapp");
    cap.add("blogapp");
    cap.add("newsapp");
  }

  public w(Context paramContext)
  {
    this.context = paramContext;
    this.bNl = "";
    this.bNy = "";
    this.caf = "";
    this.cab = "";
    this.cak = 0L;
    this.caj = false;
    this.cag = null;
    com.tencent.mm.z.n.a(this);
    p.a(this);
    h.apj();
    com.tencent.mm.plugin.base.stub.b.a(this);
  }

  private void I(boolean paramBoolean)
  {
    aa.d("MicroMsg.MMNotification", "updateNotifyInfo: silent = " + paramBoolean);
    this.caj = true;
    if (!paramBoolean)
    {
      aa.d("MicroMsg.MMNotification", "updateNotifyInfo : modify lastNotSilentTime = " + this.cak);
      this.cak = System.currentTimeMillis();
    }
  }

  private static int a(ak paramak)
  {
    int i = 0;
    String str = paramak.aCn();
    int j;
    if (com.tencent.mm.model.w.cw(paramak.aCl()))
    {
      j = 0;
      if (!cj.hX(str))
        break label33;
    }
    label33: Map localMap;
    do
    {
      return j;
      j = 3;
      break;
      localMap = com.tencent.mm.sdk.platformtools.u.aL(str, "msgsource");
    }
    while ((localMap == null) || (localMap.isEmpty()));
    while (true)
    {
      int k;
      try
      {
        k = Integer.parseInt((String)localMap.get(".msgsource.tips"));
        if (((k & 0x1) == 0) && ((k & 0x2) != 0))
        {
          aa.e("MicroMsg.MMNotification", "not support this notify tip, no text with sound!!!");
          return i;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.MMNotification", "parseTipsFlag " + localException.toString());
        return j;
      }
      i = k;
    }
  }

  public static String a(int paramInt1, String paramString1, String paramString2, int paramInt2, Context paramContext)
  {
    return a(null, paramInt1, paramString1, paramString2, paramInt2, paramContext, new PString(), new PString(), new PInt(), false);
  }

  private static String a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, PString paramPString1, PString paramPString2)
  {
    int i = 2131165307;
    String str1 = "";
    if ((com.tencent.mm.model.w.cA(paramString1)) || (com.tencent.mm.model.w.cC(paramString1)))
    {
      if (paramString2 != null)
      {
        int k = paramString2.indexOf(":");
        if ((k >= 0) && (k < paramString2.length()))
        {
          String str3 = paramString2.substring(0, k);
          if ((i.ty(str3)) || (i.tA(str3)))
          {
            str1 = com.tencent.mm.model.w.cu(str3);
            paramPString2.value = str3;
            paramString2 = paramString2.substring(k + 1);
          }
        }
      }
      if (cj.hW(str1).length() > 0)
        break label255;
      if (paramString3 != null)
        break label249;
    }
    while (true)
    {
      paramPString1.value = paramString2;
      return paramPString1.value;
      if ((!i.ty(paramString1)) && (!i.tA(paramString1)))
        break;
      com.tencent.mm.model.w.cu(paramString1);
      paramPString2.value = paramString1;
      if (paramInt == 1)
      {
        StringBuilder localStringBuilder5 = new StringBuilder().append(paramContext.getString(i, new Object[] { "" }));
        if (paramString3 == null);
        while (true)
        {
          paramPString1.value = paramString2;
          paramPString2.value = "";
          return paramPString1.value;
          paramString2 = paramString3;
        }
      }
      if (paramString3 == null);
      while (true)
      {
        paramPString1.value = paramString2;
        paramPString2.value = "";
        return paramPString1.value;
        paramString2 = paramString3;
      }
      label249: paramString2 = paramString3;
    }
    label255: StringBuilder localStringBuilder1 = new StringBuilder();
    int j;
    String str2;
    label294: label323: StringBuilder localStringBuilder4;
    if (paramInt == 1)
    {
      j = i;
      StringBuilder localStringBuilder2 = localStringBuilder1.append(paramContext.getString(j));
      if (paramString3 != null)
        break label368;
      str2 = paramString2;
      paramPString1.value = str2;
      StringBuilder localStringBuilder3 = new StringBuilder();
      if (paramInt != 1)
        break label375;
      localStringBuilder4 = localStringBuilder3.append(paramContext.getString(i, new Object[] { str1 }));
      if (paramString3 != null)
        break label383;
    }
    while (true)
    {
      return paramString2;
      j = 2131165308;
      break;
      label368: str2 = paramString3;
      break label294;
      label375: i = 2131165308;
      break label323;
      label383: paramString2 = paramString3;
    }
  }

  private static String a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2, Context paramContext, PString paramPString1, PString paramPString2, PInt paramPInt, boolean paramBoolean)
  {
    boolean bool1;
    boolean bool2;
    label30: int i2;
    if (paramContext != null)
    {
      bool1 = true;
      Assert.assertTrue("context is null", bool1);
      if ((paramString2 == null) || (paramString2.length() <= 0))
        break label79;
      bool2 = true;
      Assert.assertTrue("username is null", bool2);
      if (paramBoolean)
        break label129;
      if ((!com.tencent.mm.model.w.cA(paramString2)) || (v.tv()))
        break label85;
      i2 = 1;
    }
    while (true)
    {
      if (i2 == 0)
        break label129;
      return paramContext.getString(2131165862);
      bool1 = false;
      break;
      label79: bool2 = false;
      break label30;
      label85: if ((com.tencent.mm.model.w.cC(paramString2)) && (!v.tr()))
        i2 = 1;
      else if ((com.tencent.mm.model.w.cG(paramString2)) && (!v.ty()))
        i2 = 1;
      else
        i2 = 0;
    }
    label129: if (com.tencent.mm.model.w.cG(paramString2))
    {
      if (paramBoolean)
        return "";
      boolean bool4 = v.ty();
      long l = cj.a((Long)be.uz().sr().get(65793), 0L);
      if (!bool4)
        return paramContext.getString(2131165862);
      if (l == 0L)
        return paramContext.getString(2131168252);
      if (1000L * cj.M(l) > 1209600000L)
      {
        Object[] arrayOfObject11 = new Object[1];
        arrayOfObject11[0] = Long.valueOf(1000L * cj.M(l) / 86400000L);
        return paramContext.getString(2131168251, arrayOfObject11);
      }
      return "";
    }
    if ((paramString3 != null) && (paramBoolean))
      paramString3 = aW(paramString3);
    for (int i = 1; ; i = 0)
    {
      paramPString1.value = paramString3;
      String str44;
      String str1;
      String str2;
      if ((paramInt1 == 0) && (com.tencent.mm.model.w.cp(paramString2)))
      {
        int i1 = bv.dw(paramString3);
        if (i1 > 0)
        {
          str44 = paramString3.substring(0, i1).trim();
          String str45 = com.tencent.mm.model.w.q(str44, paramString2);
          str1 = (paramString3 + " ").substring(i1 + 1);
          str2 = str45;
        }
      }
      for (String str3 = str44; ; str3 = "")
      {
        int n;
        if (com.tencent.mm.model.w.cT(paramString2))
        {
          int m = paramString3.indexOf(":");
          if (m != -1)
          {
            paramPString2.value = paramString3.substring(0, m);
            n = m + 1;
          }
        }
        for (Object localObject1 = paramString3.substring(n); ; localObject1 = paramString3)
        {
          label704: Object localObject2;
          label708: label1111: label1271: String str38;
          switch (paramInt2)
          {
          default:
          case 3:
          case 23:
          case 33:
          case 47:
          case 1048625:
          case 13:
          case 39:
          case 11:
          case 36:
          case 34:
          case 43:
          case 12299999:
          case -1879048191:
          case -1879048190:
          case -1879048189:
          case 50:
          case 53:
          case 52:
          case -1879048188:
          case 37:
          case 40:
          case 35:
          case 42:
          case 48:
            label779: label817: 
            do
            {
              localObject2 = "";
              while (true)
              {
                if (!com.tencent.mm.model.w.cB(paramString2))
                  break label4187;
                if (1 != paramInt1)
                  break label3919;
                if (cj.hX((String)localObject2))
                  break label3879;
                paramPString1.value = ((String)localObject2);
                return localObject2;
                String str41 = paramContext.getString(2131167710);
                String str42;
                if (str3.length() > 0)
                {
                  str42 = str3 + ": ";
                  if (str3.length() <= 0)
                    break label817;
                }
                for (String str43 = "%s: "; ; str43 = "")
                {
                  paramPString1.value = str43;
                  localObject1 = str42;
                  localObject2 = str41;
                  break;
                  str42 = "";
                  break label779;
                }
                com.tencent.mm.storage.u localu = com.tencent.mm.storage.u.uk((String)localObject1);
                localObject1 = localu.DG() + ": ";
                if ((paramString1 != null) && (paramString1.length() == 32));
                while (true)
                {
                  paramPString1.value = "";
                  paramPString2.value = localu.DG();
                  localObject2 = paramString1;
                  break;
                  paramString1 = paramContext.getString(2131167720);
                }
                localObject1 = a(paramContext, paramInt1, paramString2, (String)localObject1, paramContext.getString(2131167710), paramPString1, paramPString2);
                localObject2 = "";
                continue;
                localObject1 = a(paramContext, paramInt1, paramString2, (String)localObject1, null, paramPString1, paramPString2);
                localObject2 = "";
                continue;
                if ((i.ty(paramString2)) || (i.tA(paramString2)) || (com.tencent.mm.model.w.cA(paramString2)) || (com.tencent.mm.model.w.cC(paramString2)))
                {
                  localObject1 = a(paramContext, paramInt1, paramString2, (String)localObject1, paramContext.getString(2131167712), paramPString1, paramPString2);
                  localObject2 = "";
                }
                else
                {
                  if ((localObject1 != null) && (((String)localObject1).length() > 0) && (!com.tencent.mm.model.w.cB(paramString2)))
                  {
                    if (!com.tencent.mm.model.w.cp(paramString2))
                      break label1111;
                    bf localbf = new bf((String)localObject1);
                    localObject1 = localbf.DG() + ": ";
                    paramPString1.value = "%s:";
                    paramPString2.value = localbf.DG();
                  }
                  while (true)
                  {
                    localObject2 = paramContext.getString(2131167712);
                    break;
                    localObject1 = "";
                  }
                  if ((i.ty(paramString2)) || (i.tA(paramString2)) || (com.tencent.mm.model.w.cA(paramString2)) || (com.tencent.mm.model.w.cC(paramString2)))
                  {
                    localObject1 = a(paramContext, paramInt1, paramString2, (String)localObject1, paramContext.getString(2131167713), paramPString1, paramPString2);
                    localObject2 = "";
                  }
                  else
                  {
                    if ((localObject1 != null) && (((String)localObject1).length() > 0) && (!com.tencent.mm.model.w.cB(paramString2)))
                    {
                      if (!com.tencent.mm.model.w.cp(paramString2))
                        break label1271;
                      com.tencent.mm.ai.o localo = new com.tencent.mm.ai.o((String)localObject1);
                      localObject1 = localo.DG() + ": ";
                      paramPString1.value = "%s:";
                      paramPString2.value = localo.DG();
                    }
                    while (true)
                    {
                      localObject2 = paramContext.getString(2131167713);
                      break;
                      localObject1 = "";
                    }
                    localObject1 = "";
                    localObject2 = paramContext.getString(2131167717);
                    continue;
                    localObject1 = "";
                    localObject2 = paramContext.getString(2131167719);
                    continue;
                    if (((String)localObject1).equals(ak.ghI))
                    {
                      localObject1 = "";
                      localObject2 = paramContext.getString(2131167717);
                    }
                    else
                    {
                      if (!((String)localObject1).equals(ak.ghH))
                        break;
                      localObject1 = "";
                      localObject2 = paramContext.getString(2131167718);
                      continue;
                      localObject1 = "";
                      localObject2 = paramContext.getString(2131167717);
                      continue;
                      localObject1 = "";
                      localObject2 = paramContext.getString(2131167718);
                      continue;
                      if ((localObject1 == null) || (((String)localObject1).length() <= 0))
                        break;
                      ao localao = ao.uU((String)localObject1);
                      if ((localao != null) && (localao.aCu() != null) && (localao.aCu().length() > 0));
                      switch (localao.Gf())
                      {
                      case 19:
                      case 20:
                      case 21:
                      default:
                        Object[] arrayOfObject10 = new Object[1];
                        arrayOfObject10[0] = localao.getDisplayName();
                        localObject1 = paramContext.getString(2131165302, arrayOfObject10);
                        paramPString1.value = ((String)localObject1);
                        localObject2 = "";
                        break;
                      case 18:
                        Object[] arrayOfObject9 = new Object[1];
                        arrayOfObject9[0] = localao.getDisplayName();
                        localObject1 = paramContext.getString(2131165303, arrayOfObject9);
                        localObject2 = "";
                        break;
                      case 22:
                      case 23:
                      case 24:
                      case 26:
                      case 27:
                      case 28:
                      case 29:
                        Object[] arrayOfObject8 = new Object[1];
                        arrayOfObject8[0] = localao.getDisplayName();
                        localObject1 = paramContext.getString(2131165304, arrayOfObject8);
                        localObject2 = "";
                        break;
                      case 25:
                        Object[] arrayOfObject7 = new Object[1];
                        arrayOfObject7[0] = localao.getDisplayName();
                        localObject1 = paramContext.getString(2131165305, arrayOfObject7);
                        paramPString1.value = ((String)localObject1);
                        localObject2 = "";
                        continue;
                        if ((localObject1 == null) || (((String)localObject1).length() <= 0))
                          break label704;
                        com.tencent.mm.storage.al localal2 = com.tencent.mm.storage.al.uQ((String)localObject1);
                        if ((localal2 != null) && (localal2.aCu() != null) && (localal2.aCu().length() > 0))
                        {
                          Object[] arrayOfObject6 = new Object[1];
                          arrayOfObject6[0] = localal2.getDisplayName();
                          localObject1 = paramContext.getString(2131165306, arrayOfObject6);
                          paramPString1.value = ((String)localObject1);
                        }
                        localObject2 = "";
                        continue;
                        if (cj.hW((String)localObject1).length() <= 0)
                          break label704;
                        an localan = be.uz().sw().vh((String)localObject1);
                        Object[] arrayOfObject5 = new Object[2];
                        arrayOfObject5[0] = localan.Ch();
                        arrayOfObject5[1] = localan.getTitle();
                        localObject1 = paramContext.getString(2131165297, arrayOfObject5);
                        paramPString1.value = ((String)localObject1);
                        localObject2 = "";
                        continue;
                        if (cj.hW((String)localObject1).length() <= 0)
                          break label704;
                        String str39;
                        if (com.tencent.mm.model.w.cp(paramString2))
                        {
                          str39 = bv.dy((String)localObject1);
                          if (!TextUtils.isEmpty(str39));
                        }
                        else
                        {
                          str39 = paramString2;
                        }
                        com.tencent.mm.storage.al localal1 = be.uz().sw().vj((String)localObject1);
                        String str40 = be.uz().su().tO(str39).rr();
                        if (com.tencent.mm.model.w.cp(str40))
                          str40 = r.f(r.cj(str40));
                        if (paramInt1 == 1)
                        {
                          Object[] arrayOfObject3 = new Object[2];
                          arrayOfObject3[0] = str40;
                          arrayOfObject3[1] = localal1.getDisplayName();
                          localObject1 = paramContext.getString(2131165311, arrayOfObject3);
                          Object[] arrayOfObject4 = new Object[2];
                          arrayOfObject4[0] = "%s";
                          arrayOfObject4[1] = localal1.getDisplayName();
                          paramPString1.value = paramContext.getString(2131165311, arrayOfObject4);
                          paramPString2.value = str39;
                          localObject2 = "";
                        }
                        else
                        {
                          Object[] arrayOfObject1 = new Object[2];
                          arrayOfObject1[0] = str40;
                          arrayOfObject1[1] = localal1.getDisplayName();
                          localObject1 = paramContext.getString(2131165310, arrayOfObject1);
                          Object[] arrayOfObject2 = new Object[2];
                          arrayOfObject2[0] = "%s";
                          arrayOfObject2[1] = localal1.getDisplayName();
                          paramPString1.value = paramContext.getString(2131165310, arrayOfObject2);
                          paramPString2.value = str39;
                          localObject2 = "";
                        }
                        break;
                      }
                    }
                  }
                }
              }
            }
            while (cj.hW((String)localObject1).length() <= 0);
            if (com.tencent.mm.model.w.cp(paramString2))
            {
              int k = bv.dw((String)localObject1);
              if (k != -1)
              {
                str38 = ((String)localObject1).substring(0, k).trim();
                label2121: bv.dz((String)localObject1);
              }
            }
            break;
          case 301989937:
          case 335544369:
          case 402653233:
          case 369098801:
          case -1879048186:
          case 49:
          case 16777265:
          case 268435505:
          case 285212721:
          case 318767153:
          case 55:
          case 57:
          }
          while (true)
          {
            if (paramInt1 == 1)
            {
              localObject1 = paramContext.getString(2131168011);
              paramPString1.value = ((String)localObject1);
              localObject2 = "";
              break label708;
            }
            localObject1 = paramContext.getString(2131168011);
            paramPString1.value = paramContext.getString(2131168011);
            paramPString2.value = str38;
            localObject2 = "";
            break label708;
            if (com.tencent.mm.j.b.bR(cj.sT(str1)) == null)
            {
              aa.e("MicroMsg.MMNotification", "decode msg content failed");
              return "";
            }
            localObject2 = "";
            localObject1 = paramContext.getString(2131168547);
            paramPString1.value = ((String)localObject1);
            break label708;
            com.tencent.mm.j.b localb3 = com.tencent.mm.j.b.bR(cj.sT(str1));
            if (localb3.cgU != 0)
              if (localb3.cgU == 1)
                localObject2 = paramContext.getString(2131168348);
            while (true)
            {
              localObject1 = "";
              paramPString2.value = str3;
              paramPString1.value = "";
              break;
              if (localb3.cgU == 2)
                localObject2 = paramContext.getString(2131168349);
              else if (localb3.cgU == 3)
                localObject2 = paramContext.getString(2131168350);
              else
                localObject2 = paramContext.getString(2131168347);
            }
            cj.sT(str1);
            localObject2 = paramContext.getString(2131168361);
            localObject1 = "";
            paramPString2.value = str3;
            paramPString1.value = "";
            break label708;
            switch (com.tencent.mm.j.b.bR(cj.sT(str1)).cgU)
            {
            default:
              localObject2 = paramContext.getString(2131167723);
              label2434: if (str3.length() <= 0)
                break;
            case 1:
            case 2:
            }
            for (String str37 = str3 + ": "; ; str37 = "")
            {
              if (!com.tencent.mm.model.w.cT(paramString2))
                paramPString2.value = str3;
              paramPString1.value = "";
              localObject1 = str37;
              break;
              localObject2 = paramContext.getString(2131167724);
              break label2434;
              localObject2 = paramContext.getString(2131167725);
              break label2434;
            }
            com.tencent.mm.j.b localb2 = com.tencent.mm.j.b.bR(cj.sT(str1));
            if (localb2 == null)
            {
              aa.e("MicroMsg.MMNotification", "decode msg content failed");
              return "";
            }
            String str35;
            if (str3.length() > 0)
            {
              str35 = str3 + ": " + localb2.title;
              label2591: if (!com.tencent.mm.model.w.cT(paramString2))
                paramPString2.value = str3;
              if (str3.length() <= 0)
                break label2664;
            }
            label2664: for (String str36 = "%s: " + localb2.title; ; str36 = localb2.title)
            {
              paramPString1.value = str36;
              localObject1 = str35;
              localObject2 = "";
              break;
              str35 = localb2.title;
              break label2591;
            }
            com.tencent.mm.j.b localb1 = com.tencent.mm.j.b.bR(cj.sT(str1));
            if (localb1 == null)
            {
              aa.e("MicroMsg.MMNotification", "decode msg content failed");
              return "";
            }
            switch (localb1.type)
            {
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 16:
            default:
              localObject2 = "";
              localObject1 = "";
              break;
            case 1:
              String str33;
              if (str3.length() > 0)
              {
                str33 = str3 + ": " + localb1.title;
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label2911;
              }
              for (String str34 = "%s: " + localb1.title; ; str34 = localb1.title)
              {
                paramPString1.value = str34;
                localObject1 = str33;
                localObject2 = "";
                break;
                str33 = localb1.title;
                break label2838;
              }
            case 2:
              String str30 = paramContext.getString(2131167710);
              String str31;
              if (str3.length() > 0)
              {
                str31 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3014;
              }
              for (String str32 = "%s: "; ; str32 = "")
              {
                paramPString1.value = str32;
                localObject1 = str31;
                localObject2 = str30;
                break;
                str31 = "";
                break label2962;
              }
            case 3:
              String str27 = paramContext.getString(2131167711);
              String str28;
              if (str3.length() > 0)
              {
                str28 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3114;
              }
              for (String str29 = "%s: "; ; str29 = "")
              {
                paramPString1.value = str29;
                localObject1 = str28;
                localObject2 = str27;
                break;
                str28 = "";
                break label3062;
              }
            case 4:
              String str24 = paramContext.getString(2131167713);
              String str25;
              if (str3.length() > 0)
              {
                str25 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3214;
              }
              for (String str26 = "%s: "; ; str26 = "")
              {
                paramPString1.value = str26;
                localObject1 = str25;
                localObject2 = str24;
                break;
                str25 = "";
                break label3162;
              }
            case 6:
              String str21 = paramContext.getString(2131167716);
              String str22;
              if (str3.length() > 0)
              {
                str22 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3314;
              }
              for (String str23 = "%s: "; ; str23 = "")
              {
                paramPString1.value = str23;
                localObject1 = str22;
                localObject2 = str21;
                break;
                str22 = "";
                break label3262;
              }
            case 7:
              String str18 = paramContext.getString(2131167714);
              String str19;
              if (str3.length() > 0)
              {
                str19 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3414;
              }
              for (String str20 = "%s: "; ; str20 = "")
              {
                paramPString1.value = str20;
                localObject1 = str19;
                localObject2 = str18;
                break;
                str19 = "";
                break label3362;
              }
            case 5:
              String str15 = paramContext.getString(2131167715);
              String str16;
              if (str3.length() > 0)
              {
                str16 = str3 + ": ";
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3514;
              }
              for (String str17 = "%s: "; ; str17 = "")
              {
                paramPString1.value = str17;
                localObject1 = str16;
                localObject2 = str15;
                break;
                str16 = "";
                break label3462;
              }
            case 8:
              String str13 = paramContext.getString(2131167721);
              if (str3.length() > 0);
              for (String str14 = str3 + ": "; ; str14 = "")
              {
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                paramPString1.value = "";
                localObject1 = str14;
                localObject2 = str13;
                break;
              }
            case 15:
              String str11 = paramContext.getString(2131167722);
              if (str3.length() > 0);
              for (String str12 = str3 + ": "; ; str12 = "")
              {
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                paramPString1.value = "";
                localObject1 = str12;
                localObject2 = str11;
                break;
              }
            case 17:
              label2838: label2911: label3062: String str9;
              label2962: label3014: label3162: label3314: if (str3.length() > 0)
              {
                str9 = str3 + ": " + localb1.title;
                if (!com.tencent.mm.model.w.cT(paramString2))
                  paramPString2.value = str3;
                if (str3.length() <= 0)
                  break label3793;
              }
              label3114: label3262: label3414: for (String str10 = "%s: " + localb1.title; ; str10 = localb1.title)
              {
                paramPString1.value = str10;
                localObject1 = str9;
                localObject2 = "";
                break;
                str9 = localb1.title;
                break label3720;
              }
              label3214: label3362: label3514: label3793: if (i != 0)
                localObject1 = aX((String)localObject1);
              label3462: label3720: localObject1 = aW(com.tencent.mm.j.b.bT((String)localObject1));
              paramPString1.value = ((String)localObject1);
              localObject2 = "";
              break;
              paramPString1.value = com.tencent.mm.j.b.bS((String)localObject1);
              localObject2 = paramPString1.value;
              break;
              localObject1 = com.tencent.mm.q.a.b(com.tencent.mm.q.b.eS((String)localObject1));
              paramPString1.value = ((String)localObject1);
              break label704;
              label3879: String[] arrayOfString3 = ((String)localObject1).split("@bottle:");
              if (arrayOfString3.length > 1)
              {
                paramPString1.value = arrayOfString3[1];
                return arrayOfString3[1];
              }
              paramPString1.value = "";
              return null;
              label3919: String[] arrayOfString1 = ((String)localObject1).split(":");
              if ((arrayOfString1 == null) || (arrayOfString1.length <= 0))
              {
                paramPString1.value = "";
                return null;
              }
              String str6 = arrayOfString1[0];
              boolean bool3 = cj.hX(str6);
              String str7 = null;
              if (!bool3)
              {
                i locali = be.uz().su().tO(str6);
                str7 = null;
                if (locali != null)
                {
                  String str8 = locali.rD();
                  str7 = null;
                  if (str8 != null)
                    str7 = locali.rD();
                }
                if ((str7 == null) || (str7.length() <= 0))
                  str7 = locali.rC();
              }
              if (!cj.hX((String)localObject2))
              {
                paramPString1.value = (str7 + ": " + (String)localObject2);
                return str7 + ": " + (String)localObject2;
              }
              String[] arrayOfString2 = ((String)localObject1).split("@bottle:");
              if (arrayOfString2.length > 1)
              {
                paramPString1.value = (str7 + ": " + arrayOfString2[1]);
                return str7 + ": " + arrayOfString2[1];
              }
              paramPString1.value = str7;
              return str7;
              label4187: if (cj.hX((String)localObject1))
                paramPString1.value = "";
              if (!cj.hX(str3))
              {
                if ((str2 != null) && (str2.length() > 0))
                  localObject1 = e((String)localObject1, str3, str2);
                if (cj.hX(paramPString2.value))
                {
                  paramPString1.value = e(paramPString1.value, str3, "%s");
                  paramPString2.value = str3;
                }
                String str4 = com.tencent.mm.compatible.g.n.bm((String)localObject1);
                paramPString1.value = com.tencent.mm.compatible.g.n.bm(paramPString1.value);
                String str5 = str4 + (String)localObject2;
                paramPString1.value += (String)localObject2;
                if (paramBoolean)
                {
                  if ((paramPString1.value.length() != 32) || ((paramInt2 != 47) && (paramInt2 != 1048625)))
                    break label4405;
                  paramPString1.value = str5;
                }
                label4405: for (int j = 1; ; j = 0)
                {
                  if (j == 0)
                    a(paramInt2, paramPString1, paramPString2, paramPInt);
                  return cj.hW(str5);
                }
              }
              if (com.tencent.mm.model.w.cT(paramString2))
              {
                if ((localObject2 != null) && (((String)localObject2).length() > 0))
                  localObject1 = localObject2;
                if (cj.hX((String)localObject1))
                {
                  paramPString1.value = "";
                  paramPString2.value = "";
                  return "";
                }
                if (paramInt1 == 0)
                {
                  paramPString1.value = ("%s:" + (String)localObject1);
                  if (!paramBoolean)
                    break label4567;
                  a(paramInt2, paramPString1, paramPString2, paramPInt);
                  localObject2 = localObject1;
                }
              }
              label4643: 
              while (true)
              {
                if (i != 0)
                  localObject2 = aX((String)localObject2);
                return cj.hW(com.tencent.mm.ao.a.ti((String)localObject2));
                paramPString1.value = (paramContext.getString(2131167788) + ":" + (String)localObject1);
                break;
                label4567: return com.tencent.mm.model.w.cu(paramPString2.value) + ":" + (String)localObject1;
                if ((localObject2 != null) && (((String)localObject2).length() > 0))
                  paramPString1.value = ((String)localObject2);
                while (true)
                {
                  if (!paramBoolean)
                    break label4643;
                  a(paramInt2, paramPString1, paramPString2, paramPInt);
                  break;
                  localObject2 = localObject1;
                }
              }
              str38 = paramString2;
              break label2121;
              str38 = paramString2;
            }
          }
        }
        str1 = paramString3;
        str2 = "";
      }
    }
  }

  private static void a(int paramInt, PString paramPString1, PString paramPString2, PInt paramPInt)
  {
    int i = 150;
    if ((paramPString1.value.length() == 32) && ((paramInt == 47) || (paramInt == 1048625)))
      return;
    paramPString1.value = com.tencent.mm.ao.a.ti(paramPString1.value);
    String str4;
    if (paramPString1.value.length() >= i)
    {
      String str3 = paramPString1.value;
      str4 = paramPString1.value;
      if (i >= str4.length())
        break label147;
      if (str4.charAt(i) != '%')
        label88: paramPString1.value = str3.substring(0, i);
    }
    else
    {
      if (cau != null)
        break label157;
    }
    label147: label157: for (TextPaint localTextPaint = null; ; localTextPaint = (TextPaint)cau.get())
    {
      if ((!paramPString1.value.replace("%%", "").contains("%s")) && (localTextPaint != null))
        break label171;
      paramPInt.value = 0;
      return;
      i++;
      break;
      i = str4.length();
      break label88;
    }
    label171: String str1 = paramPString1.value;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramPString2.value;
    String str2 = String.format(str1, arrayOfObject);
    Context localContext = com.tencent.mm.sdk.platformtools.al.getContext();
    int j;
    CharSequence localCharSequence;
    if (cat > 0)
    {
      j = cat;
      localCharSequence = com.tencent.mm.ao.b.d(localContext, str2, j);
      if (cas <= 0)
        break label280;
    }
    label280: for (int k = cas; ; k = com.tencent.mm.sdk.platformtools.e.a(com.tencent.mm.sdk.platformtools.al.getContext(), 200.0F))
    {
      paramPString1.value = TextUtils.ellipsize(localCharSequence, localTextPaint, k, TextUtils.TruncateAt.END).toString();
      paramPInt.value = 1;
      return;
      j = com.tencent.mm.sdk.platformtools.e.a(com.tencent.mm.sdk.platformtools.al.getContext(), 14.0F);
      break;
    }
  }

  public static void a(TextPaint paramTextPaint)
  {
    if ((cau == null) || (cau.get() == null))
      cau = new WeakReference(paramTextPaint);
  }

  private static boolean aR(String paramString)
  {
    ia localia = new ia();
    localia.bRw.bNk = 1;
    localia.bRw.content = paramString;
    com.tencent.mm.sdk.b.a.ayH().f(localia);
    return localia.bRx.type == 3;
  }

  private static boolean aS(String paramString)
  {
    ia localia = new ia();
    localia.bRw.bNk = 1;
    localia.bRw.content = paramString;
    com.tencent.mm.sdk.b.a.ayH().f(localia);
    return localia.bRx.type == 2;
  }

  private void aV(String paramString)
  {
    if (this.context == null)
      this.context = com.tencent.mm.sdk.platformtools.al.getContext();
    if (this.context == null)
      return;
    Uri localUri;
    if (cj.hX(paramString))
      localUri = RingtoneManager.getDefaultUri(2);
    while (true)
    {
      int k;
      try
      {
        this.caq.removeMessages(305419896);
        this.caq.sendEmptyMessageDelayed(305419896, 8000L);
        if ((this.car) && (this.tv != null) && (this.tv.isPlaying()))
        {
          this.tv.stop();
          this.tv.release();
          this.car = false;
        }
        this.tv = new MediaPlayer();
        this.tv.setDataSource(this.context, localUri);
        localAudioManager = (AudioManager)this.context.getSystemService("audio");
        if (localAudioManager.getStreamVolume(5) == 0)
          break;
        if (localAudioManager.isWiredHeadsetOn())
        {
          int i = localAudioManager.getStreamVolume(8);
          j = localAudioManager.getStreamMaxVolume(8);
          k = localAudioManager.getStreamVolume(5);
          if (k <= j)
            break label442;
          localAudioManager.setStreamVolume(8, j, 0);
          this.tv.setAudioStreamType(8);
          this.tv.setLooping(true);
          this.tv.prepare();
          this.tv.setLooping(false);
          this.tv.start();
          this.car = true;
          localAudioManager.setStreamVolume(8, i, 0);
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = Integer.valueOf(i);
          arrayOfObject2[1] = Integer.valueOf(j);
          arrayOfObject2[2] = paramString;
          aa.e("MicroMsg.MMNotification", "oldVolume is %d, toneVolume is %d, soundUri = %s", arrayOfObject2);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        AudioManager localAudioManager;
        aa.w("MicroMsg.MMNotification", localIllegalArgumentException.getMessage());
        return;
        localUri = Uri.parse(paramString);
        continue;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(localAudioManager.getStreamVolume(5));
        arrayOfObject1[1] = paramString;
        aa.e("MicroMsg.MMNotification", "getStreamVolume =  %d, soundUri = %s", arrayOfObject1);
        this.tv.setAudioStreamType(5);
        this.tv.setLooping(true);
        this.tv.prepare();
        this.tv.setLooping(false);
        this.tv.start();
        this.car = true;
        return;
      }
      catch (SecurityException localSecurityException)
      {
        aa.w("MicroMsg.MMNotification", localSecurityException.getMessage());
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        aa.w("MicroMsg.MMNotification", localIllegalStateException.getMessage());
        return;
      }
      catch (IOException localIOException)
      {
        aa.w("MicroMsg.MMNotification", localIOException.getMessage());
        return;
      }
      catch (Exception localException)
      {
        aa.w("MicroMsg.MMNotification", localException.getMessage());
        return;
      }
      label442: int j = k;
    }
  }

  private static String aW(String paramString)
  {
    if (paramString != null)
      paramString = paramString.replaceAll("%", "%%");
    return paramString;
  }

  private static String aX(String paramString)
  {
    if (paramString != null)
      paramString = paramString.replaceAll("%%", "%");
    return paramString;
  }

  public static String b(ak paramak, PString paramPString1, PString paramPString2, PInt paramPInt)
  {
    return a(paramak.field_imgPath, paramak.field_isSend, paramak.field_talker, paramak.field_content, paramak.field_type, com.tencent.mm.sdk.platformtools.al.getContext(), paramPString1, paramPString2, paramPInt, true);
  }

  public static void bt(int paramInt)
  {
    cas = paramInt;
  }

  public static void bu(int paramInt)
  {
    cat = paramInt;
  }

  private String c(String paramString, boolean paramBoolean)
  {
    String str1;
    if ((com.tencent.mm.model.w.cp(paramString)) && (paramBoolean))
    {
      String str3 = bv.dy(this.bNy);
      if (str3 != null)
        str1 = com.tencent.mm.model.w.cu(str3.trim());
    }
    while (paramString.contains("@bottle"))
    {
      Resources localResources = this.context.getResources();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      return localResources.getQuantityString(2131230722, 1, arrayOfObject);
      str1 = com.tencent.mm.model.w.cu(paramString);
      continue;
      str1 = com.tencent.mm.model.w.cu(paramString);
    }
    if ((cj.hX(str1)) && (com.tencent.mm.model.w.cp(paramString)))
      str1 = this.context.getString(2131165739);
    aa.e("MicroMsg.MMNotification", "dknotify showname:%s talker:%s", new Object[] { str1, paramString });
    String str2;
    switch (this.cae)
    {
    default:
      if (i.ty(paramString))
        str2 = this.context.getString(2131165356, new Object[] { str1 });
      break;
    case 3:
    case 13:
    case 23:
    case 33:
    case 34:
    case 35:
    case 43:
    case 47:
    case 1048625:
    }
    while (true)
    {
      return com.tencent.mm.ao.a.ti(str2);
      if (i.ty(paramString))
      {
        str2 = this.context.getString(2131165356, new Object[] { str1 });
      }
      else
      {
        str2 = this.context.getString(2131165352, new Object[] { str1 });
        continue;
        str2 = this.context.getString(2131165353, new Object[] { str1 });
        continue;
        str2 = this.context.getString(2131165355, new Object[] { str1 });
        continue;
        str2 = this.context.getString(2131165354, new Object[] { str1 });
        continue;
        str2 = this.context.getString(2131165358, new Object[] { str1 });
        continue;
        str2 = this.context.getString(2131165351, new Object[] { str1 });
      }
    }
  }

  private void cancel()
  {
    NotificationManager localNotificationManager = (NotificationManager)this.context.getSystemService("notification");
    if (localNotificationManager != null)
    {
      this.caj = false;
      localNotificationManager.cancel(0);
    }
  }

  private static String e(String paramString1, String paramString2, String paramString3)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)) || (cj.hX(paramString3)));
    int i;
    do
    {
      return paramString1;
      i = paramString1.indexOf(paramString2);
    }
    while (i < 0);
    return paramString1.substring(0, i) + paramString3 + paramString1.substring(i + paramString2.length());
  }

  public final void a(String paramString1, String paramString2, int paramInt)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.MMNotification", "showPushContentNotification, pushContent = %s, fromUserName = %s, msgType = %d", arrayOfObject);
    Intent localIntent = new Intent(this.context, LauncherUIProxy.class);
    localIntent.putExtra("nofification_type", "pushcontent_notification");
    localIntent.putExtra("Intro_Is_Muti_Talker", true);
    localIntent.putExtra("Main_FromUserName", paramString2);
    localIntent.putExtra("MainUI_User_Last_Msg_Type", paramInt);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.context, 35, localIntent, 1073741824);
    Notification localNotification = new Notification(2130838948, null, System.currentTimeMillis());
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.setLatestEventInfo(this.context, this.context.getString(2131167741), paramString1, localPendingIntent);
    ((NotificationManager)this.context.getSystemService("notification")).notify(35, localNotification);
  }

  public final void aQ(String paramString)
  {
    this.cab = paramString;
  }

  public final void aT(String paramString)
  {
    int i = 1;
    aa.v("MicroMsg.MMNotification", "cancel notification talker:" + paramString + " last talker:" + this.cac + "  curChattingTalker:" + this.cab + " talker count:" + this.cai);
    if (!this.caj);
    do
    {
      return;
      if ((this.cac != null) && (this.cac.equals(this.cab)) && (this.cai == i));
      while (i != 0)
      {
        cancel();
        return;
        i = 0;
      }
      com.tencent.mm.storage.n localn = be.uz().sx().tZ(paramString);
      if ((localn != null) && (localn.rN() != 0))
      {
        cancel();
        return;
      }
    }
    while (com.tencent.mm.model.x.dk(com.tencent.mm.model.w.chM) != 0);
    cancel();
  }

  public final void aU(String paramString)
  {
    Notification localNotification = new Notification();
    localNotification.icon = 2130838948;
    Intent localIntent = new Intent(this.context, LauncherUIProxy.class);
    localIntent.putExtra("Intro_Notify", true);
    localIntent.putExtra("Intro_Notify_User", this.bNl);
    localNotification.setLatestEventInfo(this.context, paramString, null, PendingIntent.getActivity(this.context, 0, localIntent, 268435456));
    NotificationManager localNotificationManager = (NotificationManager)this.context.getSystemService("notification");
    localNotification.flags = 16;
    if (localNotificationManager != null)
    {
      localNotificationManager.notify(0, localNotification);
      return;
    }
    aa.w("MicroMsg.MMNotification", "get NotificationManager failed");
  }

  public final void b(ak paramak)
  {
    this.cad = paramak;
    this.cah = a(paramak);
    this.bNl = paramak.aCl();
    this.bNy = paramak.getContent();
    this.cae = paramak.getType();
    this.caf = "";
    this.cag = null;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramak.AH());
    arrayOfObject[1] = Long.valueOf(Thread.currentThread().getId());
    arrayOfObject[2] = cj.azV();
    aa.e("MicroMsg.MMNotification", "dknotify notifyFirst: %d %d [%s]", arrayOfObject);
    this.cao.sendEmptyMessageDelayed(0, 200L);
  }

  public final void bs(int paramInt)
  {
    Intent localIntent = new Intent(this.context, LauncherUIProxy.class);
    localIntent.putExtra("nofification_type", "update_nofification");
    localIntent.putExtra("show_update_dialog", true);
    localIntent.putExtra("update_type", paramInt);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.context, 0, localIntent, 0);
    Notification localNotification = new Notification(2130838948, null, System.currentTimeMillis());
    localNotification.flags = (0x10 | localNotification.flags);
    localNotification.setLatestEventInfo(this.context, this.context.getString(2131167739), this.context.getString(2131167740), localPendingIntent);
    ((NotificationManager)this.context.getSystemService("notification")).notify(34, localNotification);
  }

  public final void e(List paramList)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Integer.valueOf(paramList.size());
    arrayOfObject1[1] = Long.valueOf(Thread.currentThread().getId());
    arrayOfObject1[2] = Integer.valueOf(this.cah);
    arrayOfObject1[3] = cj.azV();
    aa.e("MicroMsg.MMNotification", "dknotify notifyOther msgsize:%d %d %d [%s]", arrayOfObject1);
    if ((paramList == null) || (paramList.size() <= 0));
    ak localak;
    do
    {
      return;
      Iterator localIterator = paramList.iterator();
      int i = 0;
      while (localIterator.hasNext())
        i |= a((ak)localIterator.next());
      this.cah = i;
      localak = (ak)paramList.get(-1 + paramList.size());
    }
    while (localak == null);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(localak.AH());
    aa.e("MicroMsg.MMNotification", "dknotify notifyOther: %d", arrayOfObject2);
    this.caf = "";
    this.bNl = localak.aCl();
    this.bNy = localak.getContent();
    this.cae = localak.getType();
    this.cao.sendEmptyMessageDelayed(0, 200L);
  }

  public final Looper getLooper()
  {
    return Looper.getMainLooper();
  }

  public final void nJ()
  {
    aa.d("MicroMsg.MMNotification", "force cancelNotification");
    cancel();
    NotificationManager localNotificationManager = (NotificationManager)this.context.getSystemService("notification");
    if (localNotificationManager != null)
      localNotificationManager.cancel(35);
  }

  public final String oL()
  {
    return this.cab;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.w
 * JD-Core Version:    0.6.2
 */