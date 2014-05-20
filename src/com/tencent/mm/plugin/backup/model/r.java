package com.tencent.mm.plugin.backup.model;

import android.os.StatFs;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.am.b;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.backup.a.g;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.rx;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.sdk.platformtools.u;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public final class r
{
  private static List cKz = null;
  private static Random cgn = new Random();

  public static List GQ()
  {
    if (cKz != null)
      return cKz;
    cKz = new LinkedList();
    for (String str : w.chR)
      cKz.add(str);
    cKz.add("weixin");
    cKz.add("weibo");
    cKz.add("qqmail");
    cKz.add("fmessage");
    cKz.add("tmessage");
    cKz.add("qmessage");
    cKz.add("qqsync");
    cKz.add("floatbottle");
    cKz.add("lbsapp");
    cKz.add("shakeapp");
    cKz.add("medianote");
    cKz.add("qqfriend");
    cKz.add("readerapp");
    cKz.add("newsapp");
    cKz.add("blogapp");
    cKz.add("facebookapp");
    cKz.add("masssendapp");
    cKz.add("meishiapp");
    cKz.add("feedsapp");
    cKz.add("voipapp");
    cKz.add("filehelper");
    cKz.add("officialaccounts");
    cKz.add("helper_entry");
    cKz.add("pc_share");
    cKz.add("cardpackage");
    cKz.add("voicevoipapp");
    cKz.add("voiceinputapp");
    cKz.add("linkedinplugin");
    return cKz;
  }

  public static int GR()
  {
    if (ba.bt(al.getContext()))
      return 3;
    if (ba.bp(al.getContext()))
      return 1;
    if (ba.bs(al.getContext()))
      return 2;
    ba.bq(al.getContext());
    return 0;
  }

  public static int GS()
  {
    int i = 4;
    if (ba.bt(al.getContext()))
      i = 15;
    do
    {
      do
        return i;
      while (ba.bp(al.getContext()));
      if (ba.bs(al.getContext()))
        return 8;
    }
    while (!ba.bq(al.getContext()));
    return 12;
  }

  public static int a(String paramString, ae paramae, LinkedList paramLinkedList, int paramInt, boolean paramBoolean)
  {
    int i = c.ar(paramString);
    if ((i <= 0) || (paramae == null))
    {
      StringBuilder localStringBuilder = new StringBuilder("filePath error or bakitem is null ").append(paramString);
      if (paramae == null);
      for (boolean bool = true; ; bool = false)
      {
        aa.e("MicroMsg.BakUtil", bool);
        return 0;
      }
    }
    if (paramBoolean)
      return i;
    if ((i < 8192) && (paramae.fAz.ayg() == 0))
    {
      byte[] arrayOfByte = c.h(paramString, 0, -1);
      rv localrv = new rv().bM(arrayOfByte);
      paramae.fAA = i;
      paramae.fAB = paramInt;
      paramae.fAz = localrv;
      return i;
    }
    if (paramLinkedList == null)
    {
      aa.e("MicroMsg.BakUtil", "error addupMediaList == null");
      return 0;
    }
    String str = f.h((paramString + System.currentTimeMillis() + cgn.nextDouble()).getBytes());
    aa.d("MicroMsg.BakUtil", "filePath " + paramString + " " + str);
    paramae.fAx.add(new rw().sn(str));
    paramae.fAy.add(new rx().lv(paramInt));
    g localg = new g();
    localg.csY = paramae.fzo;
    localg.mediaId = str;
    localg.bRt = paramString;
    localg.type = paramInt;
    paramLinkedList.add(localg);
    paramae.fAw = paramae.fAx.size();
    return 0;
  }

  public static String a(ae paramae, int paramInt)
  {
    String str;
    if ((paramae.fAB == paramInt) && (paramae.fAz != null))
    {
      str = f.h(paramae.fAz.ayh().getBytes());
      return str;
    }
    Iterator localIterator = paramae.fAy.iterator();
    for (int i = 0; ; i++)
    {
      if (!localIterator.hasNext())
        break label103;
      if (((rx)localIterator.next()).ayk() == paramInt)
      {
        str = ((rw)paramae.fAx.get(i)).getString();
        if (c.as(io(str)))
          break;
        return null;
      }
    }
    label103: return null;
  }

  public static boolean a(ae paramae)
  {
    if ((paramae.fAB == 10) && (paramae.fAz != null))
      return true;
    Iterator localIterator = paramae.fAy.iterator();
    while (localIterator.hasNext())
      if (((rx)localIterator.next()).ayk() == 10)
        return true;
    return false;
  }

  public static boolean a(ae paramae, int paramInt, String paramString)
  {
    byte[] arrayOfByte;
    if (paramae.fAB == paramInt)
    {
      arrayOfByte = paramae.fAz.ayh().getBytes();
      if (arrayOfByte.length > 0);
    }
    String str;
    do
    {
      return false;
      c.a(paramString, arrayOfByte, arrayOfByte.length);
      return true;
      str = a(paramae, paramInt);
    }
    while (cj.hX(str));
    m.f(io(str), paramString, false);
    return true;
  }

  public static int b(ae paramae, int paramInt)
  {
    int j;
    if (paramae.fAB == paramInt)
    {
      j = paramae.fAz.ayh().getBytes().length;
      return j;
    }
    Iterator localIterator = paramae.fAy.iterator();
    for (int i = 0; ; i++)
    {
      boolean bool = localIterator.hasNext();
      j = 0;
      if (!bool)
        break;
      if (((rx)localIterator.next()).ayk() == paramInt)
        return c.ar(io(((rw)paramae.fAx.get(i)).getString()));
    }
  }

  public static byte[] c(ae paramae, int paramInt)
  {
    if (paramae.fAB == paramInt)
      return paramae.fAz.ayh().getBytes();
    Iterator localIterator = paramae.fAy.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
      if (((rx)localIterator.next()).ayk() == paramInt)
      {
        String str = io(((rw)paramae.fAx.get(i)).getString());
        int j = c.ar(str);
        if ((j == 0) || (j > 1048576))
        {
          aa.e("MicroMsg.BakUtil", "thumb not exist or  too big!");
          return null;
        }
        return c.h(str, 0, -1);
      }
    return null;
  }

  public static boolean eX(int paramInt)
  {
    StatFs localStatFs = new StatFs(l.getDataDirectory().getPath());
    long l1 = localStatFs.getBlockCount();
    long l2 = localStatFs.getAvailableBlocks();
    if (l1 <= 0L);
    long l3;
    do
    {
      do
        return false;
      while (l1 - l2 < 0L);
      l3 = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
      aa.d("MicroMsg.BakUtil", "checkDataFull :" + l3 + " needSize " + paramInt);
    }
    while (paramInt > l3);
    return true;
  }

  public static String io(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
      return "";
    return d.Gr() + "mmbakMeida/" + ip(paramString) + paramString;
  }

  public static String ip(String paramString)
  {
    if (paramString == null)
      return "";
    String str1 = f.h(paramString.getBytes());
    String str2 = "";
    String str3 = "";
    if (str1.length() > 0)
      str2 = str1.charAt(0) + "/";
    if (str1.length() >= 2)
      str3 = str1.charAt(1) + "/";
    return str2 + str3;
  }

  public static boolean iq(String paramString)
  {
    if (paramString == null);
    do
    {
      return false;
      int i = paramString.indexOf('<');
      if (i > 0)
        paramString = paramString.substring(i);
    }
    while (u.aL(paramString, "msg") == null);
    return true;
  }

  public static int ir(String paramString)
  {
    int i = 0;
    char[] arrayOfChar = paramString.toCharArray();
    int j = 0;
    while (i < arrayOfChar.length)
    {
      j = j * 31 + arrayOfChar[i];
      i++;
    }
    return j;
  }

  public static int z(String paramString, int paramInt)
  {
    if (!cj.hX(paramString));
    try
    {
      int i = Integer.valueOf(paramString).intValue();
      paramInt = i;
      return paramInt;
    }
    catch (Exception localException)
    {
    }
    return paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.r
 * JD-Core Version:    0.6.2
 */