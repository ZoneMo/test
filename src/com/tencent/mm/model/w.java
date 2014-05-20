package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.protocal.a.on;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import junit.framework.Assert;

public final class w
{
  public static final String chM = k.b("rconversation.username", new String[] { "@chatroom", "@micromsg.qq.com" });
  public static final String chN = k.b("rconversation.username", new String[] { "@t.qq.com" });
  public static final String chO = k.b("rconversation.username", new String[] { "@qqim" });
  public static final String chP = k.b("rconversation.username", new String[] { "@chatroom_exclusive" });
  private static Set chQ = new HashSet();
  public static final String[] chR = { "qqmail", "fmessage", "tmessage", "qmessage", "qqsync", "floatbottle", "lbsapp", "shakeapp", "medianote", "qqfriend", "newsapp", "blogapp", "facebookapp", "masssendapp", "feedsapp", "voipapp", "cardpackage", "voicevoipapp", "voiceinputapp", "officialaccounts", "googlecontact", "linkedinplugin" };

  public static String a(i parami, String paramString)
  {
    if (parami == null);
    do
    {
      return paramString;
      if ((paramString.toLowerCase().endsWith("@chatroom")) && (cj.hX(parami.kn())))
      {
        String str = be.uz().sA().cu(paramString);
        if (!cj.hX(str))
          return str;
      }
    }
    while ((parami.rr() == null) || (parami.rr().length() <= 0));
    return parami.rr();
  }

  public static String a(i parami, String paramString, boolean paramBoolean)
  {
    if (parami == null);
    do
    {
      return paramString;
      if ((paramBoolean) && (cj.hX(parami.kn())))
        return be.uz().sA().cu(paramString);
    }
    while ((parami.rr() == null) || (parami.rr().length() <= 0));
    return parami.rr();
  }

  public static void a(Set paramSet)
  {
    chQ = paramSet;
  }

  public static boolean a(i parami)
  {
    if (parami == null);
    while ((!parami.getUsername().endsWith("@chatroom")) || (!parami.rb()))
      return false;
    return true;
  }

  public static boolean a(n paramn)
  {
    String str = paramn.getUsername();
    if (db(str));
    while ((da(str)) || (cT(str)) || (cU(str)) || (cw(str)) || (paramn.rQ() == -1L))
      return false;
    return true;
  }

  public static int[] a(String paramString1, String paramString2, List paramList, String paramString3)
  {
    int i = 0;
    long l1 = System.currentTimeMillis();
    int[] arrayOfInt1 = be.uz().su().b(paramString1, paramString2, paramString3, paramList);
    aa.d("MicroMsg.ContactStorageLogic", "kevin MMCore.getAccStg().getContactStg().getShowHeadDistinct(" + (System.currentTimeMillis() - l1));
    if ((arrayOfInt1 == null) || (arrayOfInt1.length <= 0));
    int[] arrayOfInt2;
    do
    {
      return null;
      long l2 = System.currentTimeMillis();
      arrayOfInt2 = be.uz().su().c(paramString1, paramString2, paramString3, paramList);
      aa.d("MicroMsg.ContactStorageLogic", "kevin MMCore.getAccStg().getContactStg().getSectionNumByShowHead" + (System.currentTimeMillis() - l2));
    }
    while (arrayOfInt2 == null);
    if (arrayOfInt1.length == arrayOfInt2.length);
    int[] arrayOfInt3;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      arrayOfInt3 = new int[arrayOfInt2.length];
      int j = 0;
      int m;
      for (int k = 0; i < arrayOfInt1.length; k = m)
      {
        m = k + 1;
        arrayOfInt3[k] = j;
        j += arrayOfInt2[i];
        i++;
      }
    }
    return arrayOfInt3;
  }

  public static int[] a(String paramString1, String paramString2, List paramList, String[] paramArrayOfString)
  {
    int i = 0;
    int[] arrayOfInt1 = be.uz().su().b(paramString1, paramString2, paramArrayOfString, paramList);
    if ((arrayOfInt1 == null) || (arrayOfInt1.length <= 0));
    int[] arrayOfInt2;
    do
    {
      return null;
      arrayOfInt2 = be.uz().su().c(paramString1, paramString2, paramArrayOfString, paramList);
    }
    while (arrayOfInt2 == null);
    if (arrayOfInt1.length == arrayOfInt2.length);
    int[] arrayOfInt3;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      arrayOfInt3 = new int[arrayOfInt2.length];
      int j = 0;
      int m;
      for (int k = 0; i < arrayOfInt1.length; k = m)
      {
        m = k + 1;
        arrayOfInt3[k] = j;
        j += arrayOfInt2[i];
        i++;
      }
    }
    return arrayOfInt3;
  }

  public static String[] a(String paramString1, String paramString2, String paramString3, List paramList)
  {
    long l = System.currentTimeMillis();
    int[] arrayOfInt = be.uz().su().b(paramString1, paramString2, paramString3, paramList);
    aa.d("MicroMsg.ContactStorageLogic", "kevin MMCore.getAccStg().getContactStg().getShowSectionByShowHead" + (System.currentTimeMillis() - l));
    if ((arrayOfInt == null) || (arrayOfInt.length <= 0))
      return null;
    String[] arrayOfString = new String[arrayOfInt.length];
    int i = 0;
    int j = 0;
    if (i < arrayOfInt.length)
    {
      char c = (char)arrayOfInt[i];
      int k;
      if (c == '{')
      {
        k = j + 1;
        arrayOfString[j] = "#";
      }
      while (true)
      {
        i++;
        j = k;
        break;
        if (c == ' ')
        {
          k = j + 1;
          arrayOfString[j] = "$";
        }
        else
        {
          k = j + 1;
          arrayOfString[j] = String.valueOf(c);
        }
      }
    }
    return arrayOfString;
  }

  public static String[] a(String paramString1, String paramString2, String[] paramArrayOfString, List paramList)
  {
    long l = System.currentTimeMillis();
    int[] arrayOfInt = be.uz().su().b(paramString1, paramString2, paramArrayOfString, paramList);
    aa.d("MicroMsg.ContactStorageLogic", "kevin MMCore.getAccStg().getContactStg().getShowSectionByShowHead" + (System.currentTimeMillis() - l));
    if ((arrayOfInt == null) || (arrayOfInt.length <= 0))
      return null;
    String[] arrayOfString = new String[arrayOfInt.length];
    int i = 0;
    int j = 0;
    if (i < arrayOfInt.length)
    {
      char c = (char)arrayOfInt[i];
      int k;
      if (c == '{')
      {
        k = j + 1;
        arrayOfString[j] = "#";
      }
      while (true)
      {
        i++;
        j = k;
        break;
        if (c == ' ')
        {
          k = j + 1;
          arrayOfString[j] = "$";
        }
        else
        {
          k = j + 1;
          arrayOfString[j] = String.valueOf(c);
        }
      }
    }
    return arrayOfString;
  }

  public static void b(i parami)
  {
    boolean bool;
    i locali;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(parami.getUsername());
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label52;
    }
    while (true)
    {
      parami.qM();
      n(parami);
      return;
      bool = false;
      break;
      label52: parami = locali;
    }
  }

  public static void b(i parami, String paramString)
  {
    i locali = be.uz().su().tO(parami.getUsername());
    if ((locali != null) && (paramString != null));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      locali.bH(paramString);
      n(locali);
      return;
    }
  }

  public static void c(i parami)
  {
    boolean bool;
    i locali;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(parami.getUsername());
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label52;
    }
    while (true)
    {
      parami.qK();
      n(parami);
      return;
      bool = false;
      break;
      label52: parami = locali;
    }
  }

  public static boolean cA(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("tmessage");
    return false;
  }

  public static boolean cB(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("floatbottle");
    return false;
  }

  public static boolean cC(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("qmessage");
    return false;
  }

  public static boolean cD(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("facebookapp");
    return false;
  }

  public static boolean cE(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("masssendapp");
    return false;
  }

  public static boolean cF(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("feedsapp");
    return false;
  }

  public static boolean cG(String paramString)
  {
    return "qqsync".equalsIgnoreCase(paramString);
  }

  public static boolean cH(String paramString)
  {
    boolean bool1 = false;
    if (paramString != null)
      if (!paramString.equalsIgnoreCase("weixin"))
      {
        boolean bool2 = paramString.equalsIgnoreCase("gh_9639b5a92773");
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
    return bool1;
  }

  public static boolean cI(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("lbsapp");
    return false;
  }

  public static boolean cJ(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("shakeapp");
    return false;
  }

  public static boolean cK(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("medianote");
    return false;
  }

  public static boolean cL(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("newsapp");
    return false;
  }

  public static boolean cM(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("voipapp");
    return false;
  }

  public static boolean cN(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("voicevoipapp");
    return false;
  }

  public static boolean cO(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("voiceinputapp");
    return false;
  }

  public static boolean cP(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("linkedinplugin");
    return false;
  }

  public static boolean cQ(String paramString)
  {
    return cR(paramString);
  }

  public static boolean cR(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("gh_22b87fa7cb3c");
    return false;
  }

  public static boolean cS(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("blogapp");
    return false;
  }

  public static boolean cT(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("officialaccounts");
    return false;
  }

  public static boolean cU(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("helper_entry");
    return false;
  }

  public static boolean cV(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("qqfriend");
    return false;
  }

  public static boolean cW(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("googlecontact");
    return false;
  }

  public static boolean cX(String paramString)
  {
    return "filehelper".equalsIgnoreCase(paramString);
  }

  public static boolean cY(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("pc_share");
    return false;
  }

  public static boolean cZ(String paramString)
  {
    if (da(paramString));
    while ((db(paramString)) || (cT(paramString)) || (cU(paramString)))
      return true;
    return false;
  }

  public static boolean cm(int paramInt)
  {
    return i.lP(paramInt);
  }

  public static boolean co(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    while ((paramString.contains("@")) && (!paramString.endsWith("@micromsg.qq.com")))
      return false;
    return true;
  }

  public static boolean cp(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    return paramString.endsWith("@chatroom");
  }

  public static boolean cq(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    return paramString.endsWith("@lbsroom");
  }

  public static boolean cr(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    i locali;
    do
    {
      do
        return false;
      while (!paramString.endsWith("@chatroom"));
      locali = be.uz().su().tO(paramString);
    }
    while ((locali == null) || (!locali.rb()));
    return true;
  }

  public static boolean cs(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    return paramString.endsWith("@stranger");
  }

  public static String ct(String paramString)
  {
    i locali = be.uz().su().tO(paramString);
    if (locali == null)
      return "";
    if (!cj.hX(locali.ru()))
      return locali.ru();
    return "";
  }

  public static String cu(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return "";
    return a(be.uz().su().tO(paramString), paramString);
  }

  public static boolean cv(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return true;
    return be.uz().su().tO(paramString).rb();
  }

  public static boolean cw(String paramString)
  {
    if (cj.hX(paramString));
    i locali;
    do
    {
      return false;
      locali = be.uz().su().tO(paramString);
    }
    while (locali == null);
    return i.lP(locali.rJ());
  }

  public static void cx(String paramString)
  {
    if (cj.hX(paramString));
    i locali;
    do
    {
      return;
      locali = be.uz().su().tO(paramString);
    }
    while (locali == null);
    locali.qG();
    be.uz().su().a(paramString, locali);
  }

  public static boolean cy(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("qqmail");
    return false;
  }

  public static boolean cz(String paramString)
  {
    if (paramString != null)
      return paramString.equalsIgnoreCase("fmessage");
    return false;
  }

  public static void d(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      i locali = be.uz().su().tO(parami.getUsername());
      if ((locali == null) || (cj.hX(locali.getUsername())))
        locali = parami;
      locali.qL();
      n(locali);
      n localn = be.uz().sx().tZ(parami.getUsername());
      if ((localn != null) && ("@blacklist".equals(localn.field_parentRef)))
      {
        o localo = be.uz().sx();
        String[] arrayOfString = new String[1];
        arrayOfString[0] = localn.getUsername();
        localo.a(arrayOfString, "");
      }
      return;
    }
  }

  public static void d(String paramString, boolean paramBoolean)
  {
    i locali = be.uz().su().tO(paramString);
    if ((locali == null) || (cj.hX(locali.getUsername())))
      return;
    if (paramBoolean)
      locali.qV();
    while (true)
    {
      m(locali);
      return;
      locali.qW();
    }
  }

  public static boolean da(String paramString)
  {
    String str = (String)be.uz().sr().get(21);
    return ((str != null) && (str.equalsIgnoreCase(paramString))) || (paramString.equalsIgnoreCase("weixin"));
  }

  public static boolean db(String paramString)
  {
    String[] arrayOfString = chR;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        if (arrayOfString[j].equalsIgnoreCase(paramString))
          bool = true;
      }
      else
        return bool;
    }
  }

  public static boolean dc(String paramString)
  {
    if (db(paramString));
    while ((i.tA(paramString)) || (i.ty(paramString)) || (i.tC(paramString)))
      return true;
    return false;
  }

  public static int dd(String paramString)
  {
    boolean bool;
    String str;
    if (cj.hW(paramString).length() > 0)
    {
      bool = true;
      Assert.assertTrue(bool);
      str = paramString.trim().toLowerCase();
      if (!str.endsWith("@chatroom"))
        break label40;
    }
    label40: 
    do
    {
      return 1;
      bool = false;
      break;
      if (i.ty(str))
        return 11;
      if (i.tA(str))
        return 36;
    }
    while (!i.tC(str));
    return 1;
  }

  public static int de(String paramString)
  {
    if (cj.hW(paramString).length() > 0);
    String str;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      str = paramString.trim().toLowerCase();
      if (!str.endsWith("@chatroom"))
        break;
      return 3;
    }
    if (i.ty(str))
      return 13;
    if (i.tA(str))
      return 39;
    if (i.tC(str))
      return 3;
    if (str.contains("@"))
      return 3;
    return 3;
  }

  public static boolean df(String paramString)
  {
    int i = 1;
    if (be.uz().su().tO(paramString).ry() != i)
      i = 0;
    return i;
  }

  public static boolean dg(String paramString)
  {
    i locali = be.uz().su().tO(paramString);
    return (locali != null) && (locali.rf());
  }

  public static boolean dh(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0));
    while ((!paramString.startsWith("t.qq.com/")) && (!paramString.startsWith("http://t.qq.com/")))
      return false;
    return true;
  }

  public static String di(String paramString)
  {
    if (dh(paramString))
      return paramString.replace("http://t.qq.com/", "").replace("t.qq.com/", "");
    return "";
  }

  public static String dj(String paramString)
  {
    if (chQ.contains(paramString))
      paramString = "";
    return paramString;
  }

  public static void e(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      i locali = be.uz().su().tO(parami.getUsername());
      if ((locali == null) || (cj.hX(locali.getUsername())))
        locali = parami;
      locali.qV();
      locali.bM(parami.qF());
      m(locali);
      return;
    }
  }

  public static void e(String paramString, boolean paramBoolean)
  {
    boolean bool;
    i locali;
    if (!cj.hX(paramString))
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(paramString);
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label44;
    }
    label44: 
    do
    {
      return;
      bool = false;
      break;
      locali.field_type = (0x800 | locali.field_type);
      n(locali);
    }
    while (!paramBoolean);
    be.uz().sx().ub(paramString);
  }

  public static void f(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      i locali = be.uz().su().tO(parami.getUsername());
      if ((locali == null) || (cj.hX(locali.getUsername())))
        locali = parami;
      locali.qW();
      locali.bM(parami.qF());
      m(locali);
      return;
    }
  }

  public static void f(String paramString, boolean paramBoolean)
  {
    boolean bool;
    i locali;
    if (!cj.hX(paramString))
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(paramString);
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label44;
    }
    label44: 
    do
    {
      return;
      bool = false;
      break;
      locali.field_type = (0xFFFFF7FF & locali.field_type);
      n(locali);
    }
    while (!paramBoolean);
    be.uz().sx().uc(paramString);
  }

  public static void g(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      i locali = be.uz().su().tO(parami.getUsername());
      if ((locali == null) || (cj.hX(locali.getUsername())))
        locali = parami;
      locali.qR();
      locali.bM(parami.qF());
      n(locali);
      return;
    }
  }

  public static boolean g(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0));
    while (true)
    {
      return false;
      for (int i = 0; i < paramList.size(); i++)
        if (i.ty((String)paramList.get(i)))
          return true;
    }
  }

  public static void h(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      i locali = be.uz().su().tO(parami.getUsername());
      if ((locali == null) || (cj.hX(locali.getUsername())))
        locali = parami;
      locali.qS();
      locali.bM(parami.qF());
      n(locali);
      return;
    }
  }

  public static void i(i parami)
  {
    boolean bool;
    i locali;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(parami.getUsername());
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label52;
    }
    while (true)
    {
      parami.qT();
      n(parami);
      return;
      bool = false;
      break;
      label52: parami = locali;
    }
  }

  public static void j(i parami)
  {
    boolean bool;
    i locali;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      locali = be.uz().su().tO(parami.getUsername());
      if ((locali != null) && (!cj.hX(locali.getUsername())))
        break label52;
    }
    while (true)
    {
      parami.qU();
      n(parami);
      return;
      bool = false;
      break;
      label52: parami = locali;
    }
  }

  public static void k(i parami)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (parami != null)
    {
      bool2 = bool1;
      Assert.assertTrue("MicroMsg.ContactStorageLogic: user is null", bool2);
      if (parami.rj() == 0)
        break label73;
      bool3 = bool1;
      label24: Assert.assertTrue("MicroMsg.ContactStorageLogic: contactId == 0", bool3);
      if (parami.getUsername().length() <= 0)
        break label78;
    }
    while (true)
    {
      Assert.assertTrue("MicroMsg.ContactStorageLogic: username length <= 0", bool1);
      parami.qI();
      be.uz().su().a(parami.getUsername(), parami);
      return;
      bool2 = false;
      break;
      label73: bool3 = false;
      break label24;
      label78: bool1 = false;
    }
  }

  public static void l(i parami)
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    if (parami != null)
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (parami.rj() == 0)
        break label68;
      bool3 = bool1;
      label21: Assert.assertTrue(bool3);
      if (parami.getUsername().length() <= 0)
        break label73;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      parami.qI();
      be.uz().su().a(parami.getUsername(), parami);
      n(parami);
      return;
      bool2 = false;
      break;
      label68: bool3 = false;
      break label21;
      label73: bool1 = false;
    }
  }

  private static void m(i parami)
  {
    boolean bool;
    on localon;
    if (parami != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      if (parami.rj() == 0)
      {
        be.uz().su().C(parami);
        be.uz().su().tO(parami.getUsername());
      }
      be.uz().su().a(parami.getUsername(), parami);
      localon = new on();
      localon.fPp = parami.getUsername();
      if (!parami.rh())
        break label110;
    }
    label110: for (localon.fPA = 1; ; localon.fPA = 2)
    {
      be.uz().st().a(new az(52, localon));
      return;
      bool = false;
      break;
    }
  }

  public static void n(i parami)
  {
    if (parami != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (parami.rj() == 0)
      {
        be.uz().su().C(parami);
        be.uz().su().tO(parami.getUsername());
      }
      be.uz().su().a(parami.getUsername(), parami);
      o(parami);
      return;
    }
  }

  public static void o(i parami)
  {
    aa.d("MicroMsg.ContactStorageLogic", "userName :" + parami.getUsername() + " type : " + parami.getType() + " isContact: " + parami.rb());
    new ob();
    ob localob = new ob();
    localob.fEI = new rw().sn(cj.hW(parami.getUsername()));
    localob.fNa = new rw().sn(cj.hW(parami.kn()));
    localob.fEG = new rw().sn(cj.hW(parami.rn()));
    localob.fEH = new rw().sn(cj.hW(parami.ro()));
    localob.cqq = parami.rk();
    localob.fEj = 3967;
    localob.fEk = parami.getType();
    localob.fOO = new rw().sn(cj.hW(parami.ru()));
    localob.fOP = new rw().sn(cj.hW(parami.rv()));
    localob.fOQ = new rw().sn(cj.hW(parami.rw()));
    localob.fEp = parami.rt();
    localob.fOY = new rw().sn(cj.hW(parami.rx()));
    localob.fEt = parami.ry();
    localob.cqs = parami.rA();
    localob.cqr = cj.hW(parami.rB());
    localob.Tv = cj.hW(parami.vz());
    localob.Tu = cj.hW(parami.vA());
    localob.fNr = cj.hW(parami.rG());
    localob.fNt = parami.rH();
    localob.fOT = 0;
    localob.fzx = new rv();
    localob.cqx = cj.hW(parami.getCountryCode());
    be.uz().st().a(new az(2, localob));
  }

  public static boolean p(i parami)
  {
    return (0x1 & parami.rH()) != 0;
  }

  public static String q(String paramString1, String paramString2)
  {
    String str2;
    if (cj.hX(paramString2))
      str2 = cu(paramString1);
    while (true)
    {
      return str2;
      String str1 = ct(paramString1);
      if (!cj.hX(str1))
        return str1;
      com.tencent.mm.storage.b localb = be.uz().sA().ts(paramString2);
      str2 = null;
      if (localb == null);
      while (cj.hX(str2))
      {
        return cu(paramString1);
        boolean bool = localb.aAk();
        str2 = null;
        if (bool)
          str2 = localb.cu(paramString1);
      }
    }
  }

  public static List tL()
  {
    return be.uz().su().aAv();
  }

  public static List tM()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = be.uz().su().aAw();
    if (localCursor.moveToFirst())
      do
      {
        i locali = new i();
        locali.convertFrom(localCursor);
        localArrayList.add(locali);
      }
      while (localCursor.moveToNext());
    localCursor.close();
    return localArrayList;
  }

  public static boolean tN()
  {
    return be.uz().su().tR("@t.qq.com");
  }

  public static boolean tO()
  {
    return be.uz().su().tR("@qqim");
  }

  public static boolean tP()
  {
    return false;
  }

  public static boolean tQ()
  {
    if (!v.tK());
    ca localca;
    do
    {
      return false;
      localca = be.uz().sz().vB("@t.qq.com");
    }
    while ((localca == null) || (cj.hX(localca.getName())));
    return true;
  }

  public static boolean tR()
  {
    if (!v.tK());
    ca localca;
    do
    {
      return false;
      localca = be.uz().sz().vB("@t.qq.com");
    }
    while ((localca == null) || (cj.hW(localca.getName()).length() == 0));
    return true;
  }

  public static List tS()
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = be.uz().su().aAz();
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return localLinkedList;
    }
    localCursor.moveToFirst();
    do
    {
      i locali = new i();
      locali.convertFrom(localCursor);
      localLinkedList.add(locali);
    }
    while (localCursor.moveToNext());
    localCursor.close();
    aa.d("MicroMsg.ContactStorageLogic", "getFavourList size:  " + localLinkedList.size());
    return localLinkedList;
  }

  public static List tT()
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = be.uz().su().aAx();
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return localLinkedList;
    }
    localCursor.moveToFirst();
    do
    {
      i locali = new i();
      locali.convertFrom(localCursor);
      localLinkedList.add(locali.getUsername());
    }
    while (localCursor.moveToNext());
    localCursor.close();
    aa.d("MicroMsg.ContactStorageLogic", "getSnsBlackContactList size:  " + localLinkedList.size());
    return localLinkedList;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.w
 * JD-Core Version:    0.6.2
 */