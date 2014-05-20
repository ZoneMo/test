package com.tencent.mm.modelfriend;

import android.content.Context;
import android.graphics.Bitmap;
import com.tencent.mm.ah.d;
import com.tencent.mm.ah.f;
import com.tencent.mm.ah.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.al;
import com.tencent.mm.storage.ap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class z
{
  private static Map cqZ = null;

  public static boolean a(String paramString, Context paramContext, byte[] paramArrayOfByte)
  {
    return c.b(paramString, paramContext, paramArrayOfByte);
  }

  public static Bitmap c(String paramString, Context paramContext)
  {
    return c.e(paramString, paramContext);
  }

  public static boolean df(int paramInt)
  {
    at localat = ax.Ao().dq(paramInt);
    if (localat == null);
    while (localat.Aa() != 1)
      return false;
    return true;
  }

  public static String fB(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")))
      return "";
    return ax.Al().fp(paramString);
  }

  public static void m(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      HashSet localHashSet = new HashSet();
      Iterator localIterator1 = k.Dx().Dq().iterator();
      while (localIterator1.hasNext())
      {
        com.tencent.mm.ah.e locale = (com.tencent.mm.ah.e)localIterator1.next();
        al localal = be.uz().sw().vj(locale.field_msgContent);
        if (localal != null)
        {
          String str1 = localal.aCz();
          String str2 = localal.aCw();
          if (((localal.Gf() == 10) || (localal.Gf() == 11)) && ((paramList.contains(str1)) || (paramList.contains(str2))))
            localHashSet.add(locale.field_talker);
        }
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.FriendLogic", "deleteMobileFMessage(md5List), delete fmsg and fconv, talker size = " + localHashSet.size());
      Iterator localIterator2 = localHashSet.iterator();
      while (localIterator2.hasNext())
        d.gF((String)localIterator2.next());
    }
  }

  public static void n(List paramList)
  {
    if (paramList == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FriendLogic", "sync address book failed, null info list");
      return;
    }
    ax.Al().i(paramList);
  }

  public static void o(List paramList)
  {
    if (paramList == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FriendLogic", "set uploaded mobile contact failed, null info list");
      return;
    }
    ax.Al().k(paramList);
  }

  public static List zc()
  {
    return ax.Al().zc();
  }

  public static void zm()
  {
    be.uz().sr().set(12322, Boolean.valueOf(true));
  }

  public static boolean zn()
  {
    if ((be.uz() != null) && (be.uz().sr() != null))
      return cj.a((Boolean)be.uz().sr().get(12322, Boolean.valueOf(true)), true);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FriendLogic", "[arthurdan.UploadPhone] Notice!!!! MMCore.getAccStg() is null!!!");
    return false;
  }

  public static boolean zo()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.FriendLogic", "isTipInMobileFriend");
    if (zp() == aa.crc)
      return !cj.a((Boolean)be.uz().sr().get(12322, Boolean.valueOf(false)), false);
    return false;
  }

  public static aa zp()
  {
    while (true)
    {
      try
      {
        str1 = (String)be.uz().sr().get(4097, "");
        str2 = (String)be.uz().sr().get(6, "");
        boolean bool = v.tG();
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.FriendLogic", "isUpload " + bool + " stat " + v.tl());
        if ((str1 != null) && (str1.length() > 0))
        {
          if ((str2 == null) || (str2.length() <= 0))
            break label149;
          if ((str1 == null) && (str2 == null))
            return aa.cra;
          if ((str1 != null) && (str2 == null))
            return aa.crb;
          if (bool)
            return aa.crc;
          aa localaa = aa.crd;
          return localaa;
        }
      }
      catch (Exception localException)
      {
        return aa.cra;
      }
      String str1 = null;
      continue;
      label149: String str2 = null;
    }
  }

  public static void zq()
  {
    be.uz().sr().set(4097, "");
    be.uz().sr().set(6, "");
  }

  public static String zr()
  {
    return (String)be.uz().sr().get(6, "");
  }

  public static boolean zs()
  {
    return (be.se()) && (zp() == aa.crc) && (zn());
  }

  public static boolean zt()
  {
    return true;
  }

  public static void zu()
  {
  }

  public static void zv()
  {
    ax.Al().yZ();
  }

  public static void zw()
  {
    HashSet localHashSet = new HashSet();
    Iterator localIterator1 = k.Dx().Dq().iterator();
    while (localIterator1.hasNext())
    {
      com.tencent.mm.ah.e locale = (com.tencent.mm.ah.e)localIterator1.next();
      al localal = be.uz().sw().vj(locale.field_msgContent);
      if ((localal != null) && ((localal.Gf() == 10) || (localal.Gf() == 11)))
        localHashSet.add(locale.field_talker);
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.FriendLogic", "deleteMobileFMessage, delete fmsg and fconv, talker size = " + localHashSet.size());
    Iterator localIterator2 = localHashSet.iterator();
    while (localIterator2.hasNext())
      d.gF((String)localIterator2.next());
  }

  public static List zx()
  {
    return ax.Al().za();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.z
 * JD-Core Version:    0.6.2
 */