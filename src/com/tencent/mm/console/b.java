package com.tencent.mm.console;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.be;
import com.tencent.mm.model.br;
import com.tencent.mm.model.cb;
import com.tencent.mm.model.ce;
import com.tencent.mm.model.cn;
import com.tencent.mm.model.w;
import com.tencent.mm.modelstat.WatchDogPushReceiver;
import com.tencent.mm.platformtools.SpellMap;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.storage.cd;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.account.RegByMobileWaitingSMSUI;
import com.tencent.mm.ui.applet.u;
import com.tencent.mm.ui.contact.profile.ContactInfoUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.z.t;
import java.io.File;
import junit.framework.Assert;

final class b
{
  private static int bq(String paramString)
  {
    if ((!paramString.startsWith("//")) || (paramString.length() <= 2));
    while (true)
    {
      return 0;
      int i = paramString.indexOf(" ");
      if (i == -1)
        i = paramString.length();
      try
      {
        int j = Integer.parseInt(paramString.substring(2, i));
        int k = com.tencent.mm.protocal.a.fxr % 256;
        if ((j >= k) && (j % k == 0))
          return j / k;
      }
      catch (Exception localException)
      {
      }
    }
    return 0;
  }

  private static String br(String paramString)
  {
    int i = paramString.indexOf(" ");
    if (i < 0)
      return "";
    return paramString.substring(i).trim();
  }

  private static void f(File paramFile)
  {
    if ((paramFile.exists()) && (paramFile.isDirectory()))
    {
      if (paramFile.listFiles().length != 0)
        break label28;
      paramFile.delete();
    }
    while (true)
    {
      return;
      label28: File[] arrayOfFile = paramFile.listFiles();
      int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
      {
        if (arrayOfFile[j].isDirectory())
          f(arrayOfFile[j]);
        arrayOfFile[j].delete();
      }
    }
  }

  public static boolean n(Context paramContext, String paramString)
  {
    int i = 0;
    boolean bool;
    if (paramString.equals("//version"))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = j.a(paramContext, com.tencent.mm.protocal.a.fxr, true);
      arrayOfObject1[1] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
      localStringBuilder1.append(String.format("[ver ] %s %08X\n", arrayOfObject1));
      localStringBuilder1.append(com.tencent.mm.sdk.platformtools.i.ayK());
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j.bKo);
      localStringBuilder1.append(String.format("[cid ] %d\n", arrayOfObject2));
      TextView localTextView = new TextView(paramContext);
      localTextView.setText(localStringBuilder1);
      localTextView.setGravity(19);
      localTextView.setTextSize(1, 10.0F);
      localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
      localTextView.setTextColor(-16711936);
      localTextView.setTypeface(Typeface.MONOSPACE);
      int j = paramContext.getResources().getDimensionPixelSize(2131558431);
      localTextView.setPadding(j, j, j, j);
      com.tencent.mm.ui.base.h.a(paramContext, null, localTextView, null);
      bool = true;
    }
    while (true)
    {
      return bool;
      if (paramString.startsWith("//whatsnew"))
      {
        MMAppMgr.i((Activity)paramContext, 57005);
        return true;
      }
      if (paramString.startsWith("//profile "))
      {
        com.tencent.mm.storage.i locali2 = be.uz().su().tO(paramString.replace("//profile ", "").trim());
        if ((locali2 != null) && (locali2.rj() != 0))
        {
          Intent localIntent6 = new Intent().setClass(paramContext, ContactInfoUI.class);
          localIntent6.putExtra("Contact_User", locali2.getUsername());
          paramContext.startActivity(localIntent6);
        }
        return true;
      }
      if (paramString.startsWith("//getfpkey"))
      {
        String str17 = cd.aDp();
        com.tencent.mm.ui.base.h.a(paramContext, str17, "Fingerprint Key", paramContext.getString(2131168882), paramContext.getString(2131167832), new c(paramContext, str17), null);
        return true;
      }
      if (paramString.equals("//iampig"))
      {
        be.uz().sT().Dc();
        return true;
      }
      if (paramString.startsWith("//commitwd"))
      {
        WatchDogPushReceiver.Di();
        return true;
      }
      if (paramString.startsWith("//wv "))
      {
        String str16 = paramString.replace("//wv ", "");
        Intent localIntent5 = new Intent();
        localIntent5.putExtra("rawUrl", str16);
        localIntent5.setClass(paramContext, WebViewUI.class);
        paramContext.startActivity(localIntent5);
        return true;
      }
      if (paramString.startsWith("//wvlocal "))
      {
        String str15 = paramString.replace("//wvlocal ", "");
        Intent localIntent4 = new Intent();
        localIntent4.putExtra("rawUrl", str15);
        localIntent4.setClass(paramContext, WebViewUI.class);
        paramContext.startActivity(localIntent4);
        return true;
      }
      if (paramString.startsWith("//channelId"))
        com.tencent.mm.ui.base.h.p(paramContext, j.bKo, "channelId");
      if (paramString.startsWith("//traceroute"))
      {
        com.tencent.mm.ak.a.l(paramContext, "traceroute", ".ui.NetworkDiagnoseIntroUI");
        return true;
      }
      if (paramString.startsWith("//qzone "))
      {
        String str14 = paramString.replace("//qzone ", "");
        new u(paramContext).mD(str14);
      }
      if (paramString.startsWith("//dumpcrash"))
      {
        com.tencent.mm.sdk.platformtools.m.f(com.tencent.mm.storage.h.cfC + "crash/", com.tencent.mm.storage.h.ggA, false);
        return true;
      }
      if (paramString.startsWith("//getip"))
      {
        be.uA().d(new cb(new d()));
        return true;
      }
      if (paramString.startsWith("//getlocalkey"))
      {
        String str13 = cd.aDo();
        com.tencent.mm.ui.base.h.a(paramContext, str13, "Fingerprint Key", paramContext.getString(2131168882), paramContext.getString(2131167832), new e(paramContext, str13), null);
        return true;
      }
      if (paramString.startsWith("//testhtml"))
      {
        Intent localIntent1 = new Intent(paramContext, WebViewUI.class);
        localIntent1.putExtra("rawUrl", "file:///android_asset/jsapi/reader_test1.html");
        paramContext.startActivity(localIntent1);
        return true;
      }
      if (paramString.startsWith("//testlocalhtml "))
      {
        String str12 = paramString.replace("//testlocalhtml ", "");
        Intent localIntent3 = new Intent(paramContext, WebViewUI.class);
        localIntent3.putExtra("rawUrl", "file://" + str12);
        localIntent3.putExtra("neverGetA8Key", true);
        paramContext.startActivity(localIntent3);
        return true;
      }
      if (paramString.startsWith("//setkey"))
      {
        if (cd.vE(paramString.replace("//setkey", "")))
          Toast.makeText(paramContext, 2131168885, 0).show();
        return true;
      }
      if (paramString.startsWith("//checkspell"))
      {
        String str11 = paramString.replace("//checkspell ", "");
        if (cj.hX(str11))
          return true;
        StringBuilder localStringBuilder2 = new StringBuilder();
        while (i < str11.length())
        {
          localStringBuilder2.append("[" + str11.charAt(i) + ":" + SpellMap.j(str11.charAt(i)) + "]");
          i++;
        }
        com.tencent.mm.ui.base.h.p(paramContext, localStringBuilder2.toString(), "Check Spell");
        return true;
      }
      if (paramString.startsWith("//cleargiffolder"))
      {
        File[] arrayOfFile1 = new File(be.uz().sJ()).listFiles();
        if ((arrayOfFile1 != null) && (arrayOfFile1.length > 0))
          for (int i1 = 0; i1 < arrayOfFile1.length; i1++)
          {
            File localFile = arrayOfFile1[i1];
            if ((localFile != null) && (localFile.isDirectory()))
            {
              File[] arrayOfFile2 = localFile.listFiles();
              if ((arrayOfFile2 != null) && (arrayOfFile2.length > 0))
                for (int i2 = 0; i2 < arrayOfFile2.length; i2++)
                  if (arrayOfFile2[i2].isDirectory())
                    f(arrayOfFile2[i2]);
            }
          }
      }
      if (paramString.startsWith("//gallery "))
      {
        String str10 = paramString.replace("//gallery ", "");
        if (cj.hX(str10))
          return true;
        paramContext.getSharedPreferences(al.azs(), 0).edit().putString("gallery", str10).commit();
        return true;
      }
      if (paramString.startsWith("//tgs "))
      {
        String str9 = paramString.replace("//tgs ", "");
        if (!TextUtils.isEmpty(str9))
        {
          if (!"on".equals(str9))
            break label1255;
          paramContext.getSharedPreferences(al.azs(), 0).edit().putBoolean("turngamesound", true).commit();
        }
        while (true)
        {
          return true;
          label1255: if ("off".equals(str9))
            paramContext.getSharedPreferences(al.azs(), 0).edit().putBoolean("turngamesound", false).commit();
        }
      }
      if (paramString.startsWith("//testMbanner"));
      try
      {
        String[] arrayOfString3 = paramString.replace("//testMbanner ", "").split(",");
        if (arrayOfString3.length >= 2)
          br.uP().a(new com.tencent.mm.platformtools.ac().eO(Integer.valueOf(arrayOfString3[0]).intValue()).eP(Integer.valueOf(arrayOfString3[1]).intValue()).FA());
        label1374: return true;
        if (paramString.startsWith("//recomT"));
        try
        {
          String str8 = paramString.replace("//recomT ", "");
          com.tencent.mm.model.s.te().a(str8, Boolean.valueOf(true));
          label1409: return true;
          if (paramString.startsWith("//recomF"));
          try
          {
            String str7 = paramString.replace("//recomF ", "");
            com.tencent.mm.model.s.te().a(str7, Boolean.valueOf(false));
            label1444: return true;
            if (paramString.startsWith("//testgetreg"));
            try
            {
              String[] arrayOfString2 = paramString.replace("//testgetreg ", "").split(",");
              if (arrayOfString2.length > 2)
                new cn().cD(Integer.valueOf(arrayOfString2[0]).intValue()).cF(Integer.valueOf(arrayOfString2[1]).intValue()).cE(Integer.valueOf(arrayOfString2[2]).intValue()).commit();
              label1530: return true;
              if (paramString.startsWith("//set52welcome"));
              try
              {
                int n = Integer.valueOf(paramString.replace("//set52welcome ", "")).intValue();
                al.getContext().getSharedPreferences(al.azs(), 0).edit().putInt("is_user_52_welcome_key", n).commit();
                label1590: return true;
                if (paramString.startsWith("//testwaitsms"));
                try
                {
                  Intent localIntent2 = new Intent();
                  localIntent2.setClass(paramContext, RegByMobileWaitingSMSUI.class);
                  localIntent2.putExtra("bindmcontact_mobile", "+8613186086906");
                  paramContext.startActivity(localIntent2);
                  label1639: return true;
                  if (paramString.startsWith("//new emoji"))
                  {
                    com.tencent.mm.i.i.rX().e(262147, true);
                    return true;
                  }
                  if (paramString.startsWith("//free emoji"))
                  {
                    com.tencent.mm.i.i.rX().e(262149, true);
                    return true;
                  }
                  if (paramString.startsWith("//browser clear"))
                  {
                    be.uz().sr().set(274528, "");
                    return true;
                  }
                  if (paramString.startsWith("//browser 0"))
                  {
                    be.uz().sr().set(274496, Integer.valueOf(0));
                    return true;
                  }
                  if (paramString.startsWith("//dumpappinfoblob "))
                  {
                    String str6 = paramString.replace("//dumpappinfoblob ", "");
                    com.tencent.mm.pluginsdk.model.app.k localk = ba.HE().qo(str6);
                    com.tencent.mm.ui.base.h.p(paramContext, localk.bSA + "\n" + localk.bSH + "\n" + localk.bSI, "");
                    return true;
                  }
                  if (paramString.startsWith("//googleauth "))
                  {
                    String str5 = paramString.replace("//googleauth ", "");
                    if (!TextUtils.isEmpty(str5))
                    {
                      if (!"webview".equals(str5))
                        break label1895;
                      paramContext.getSharedPreferences(al.azs(), 0).edit().putBoolean("googleauth", true).commit();
                    }
                    while (true)
                    {
                      return true;
                      label1895: if ("local".equals(str5))
                        paramContext.getSharedPreferences(al.azs(), 0).edit().putBoolean("googleauth", false).commit();
                    }
                  }
                  if (paramString.startsWith("//clrgamecache"))
                  {
                    ag localag = com.tencent.mm.pluginsdk.h.apq();
                    if (localag != null)
                      localag.aA(paramContext);
                    return true;
                  }
                  if (paramString.startsWith("//googlemap"))
                  {
                    com.tencent.mm.platformtools.at.cHP = true;
                    return true;
                  }
                  if (paramString.startsWith("//sosomap"))
                  {
                    com.tencent.mm.platformtools.at.cHP = false;
                    return true;
                  }
                  if (paramString.startsWith("//opentrace"))
                  {
                    new com.tencent.mm.ui.applet.o();
                    com.tencent.mm.ui.applet.o.bT(al.getContext());
                    return true;
                  }
                  paramString.startsWith("//cardbatchget ");
                  paramString.startsWith("//cardbatchdel ");
                  if (paramString.startsWith("//clearcardsync"))
                  {
                    be.uz().sr().set(282880, null);
                    return true;
                  }
                  int k = bq(paramString);
                  Object[] arrayOfObject3 = new Object[1];
                  arrayOfObject3[0] = Integer.valueOf(k);
                  aa.e("MicroMsg.CommandProcessor", "processed : in ret:[%d]", arrayOfObject3);
                  bool = false;
                  switch (k)
                  {
                  case 0:
                  default:
                    return false;
                  case 568:
                    Assert.assertTrue("test errlog", false);
                    return true;
                  case 569:
                    be.uz().sY();
                    return true;
                  case 570:
                    if (cd.vE(br(paramString)))
                      Toast.makeText(paramContext, 2131168885, 0).show();
                    return true;
                  case 571:
                    String str4 = br(paramString);
                    be.uz().sr().set(8195, str4);
                    return true;
                  case 572:
                    j.bKs = Integer.valueOf(br(paramString)).intValue();
                    return true;
                  case 574:
                    com.tencent.mm.ui.base.h.p(paramContext, com.tencent.mm.a.f.h((com.tencent.mm.compatible.c.s.pU() + be.uz().sd()).getBytes()), "md5");
                    return true;
                  case 579:
                    String str3 = br(paramString);
                    ar.tZ().jdMethod_do(str3);
                    return true;
                  case 580:
                    be.uA().d(new cb(new f()));
                    return true;
                  case 581:
                    String str2 = br(paramString);
                    ba.aqh().qn(str2);
                    return true;
                  case 582:
                    String str1 = br(paramString);
                    com.tencent.mm.storage.i locali1 = be.uz().su().tO(str1);
                    bool = false;
                    if (locali1 == null)
                      continue;
                    int m = locali1.rj();
                    bool = false;
                    if (m == 0)
                      continue;
                    locali1.qI();
                    w.n(locali1);
                    return true;
                  case 583:
                    be.uz().sZ();
                    return true;
                  case 584:
                  case 585:
                    ce.dC(br(paramString));
                    return true;
                  case 586:
                    String[] arrayOfString1 = paramString.split(" ");
                    if ((arrayOfString1 != null) && (arrayOfString1.length == 3))
                      t.F(Integer.parseInt(arrayOfString1[1]), Integer.parseInt(arrayOfString1[2]));
                    return true;
                  }
                }
                catch (Exception localException1)
                {
                  break label1639;
                }
              }
              catch (Exception localException2)
              {
                break label1590;
              }
            }
            catch (Exception localException3)
            {
              break label1530;
            }
          }
          catch (Exception localException4)
          {
            break label1444;
          }
        }
        catch (Exception localException5)
        {
          break label1409;
        }
      }
      catch (Exception localException6)
      {
        break label1374;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.b
 * JD-Core Version:    0.6.2
 */