package com.tencent.mm.model;

import android.content.Context;
import android.database.Cursor;
import com.tencent.mm.n;
import com.tencent.mm.n.j;
import com.tencent.mm.n.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.Iterator;
import java.util.List;

public final class bv
{
  public static int a(String paramString, ca paramca)
  {
    be.ut().o(new bw(paramString, paramca));
    return 0;
  }

  public static void a(ca paramca)
  {
    be.ut().o(new by(paramca));
  }

  public static void a(String paramString1, List paramList, String paramString2, boolean paramBoolean, String paramString3)
  {
    ak localak = new ak();
    localak.uK(paramString1);
    localak.setType(10000);
    localak.G(System.currentTimeMillis());
    localak.setStatus(4);
    localak.bZ(2);
    StringBuffer localStringBuffer = new StringBuffer();
    String str1 = v.th();
    String str2 = al.getContext().getString(n.bgD);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      if (!str3.equals(str1))
      {
        i locali = be.uz().su().tO(str3);
        if ((locali != null) && (locali.rj() != 0))
        {
          if (paramBoolean)
            localStringBuffer.append("<a href=\"" + paramString3 + str3 + "\">" + locali.rr() + "</a>" + str2);
          else
            localStringBuffer.append(locali.rr() + str2);
        }
        else if (paramBoolean)
          localStringBuffer.append("<a href=\"" + paramString3 + str3 + "\">" + str3 + "</a>" + str2);
        else
          localStringBuffer.append(str3 + str2);
      }
    }
    if (localStringBuffer.length() > 0)
      localStringBuffer.deleteCharAt(localStringBuffer.lastIndexOf(str2));
    localak.setContent(paramString2.replace("%s", localStringBuffer));
    be.uz().sw().v(localak);
  }

  public static void a(boolean paramBoolean, String paramString)
  {
    int i = 3;
    ak localak1 = be.uz().sw().uW("qqsync");
    if ((localak1 == null) || (localak1.Bo() == 0L))
    {
      ak localak2 = new ak();
      localak2.uK("qqsync");
      if (paramBoolean);
      while (true)
      {
        localak2.setStatus(i);
        localak2.setType(1);
        if (paramString == null)
          paramString = "";
        localak2.setContent(paramString);
        localak2.G(cj.FD());
        localak2.cL(-2);
        be.uz().sw().v(localak2);
        aa.i("MicroMsg.MsgInfoStorageLogic", "qqsync reminder new");
        return;
        i = 4;
      }
    }
    localak1.uK("qqsync");
    if (paramBoolean);
    while (true)
    {
      localak1.setStatus(i);
      localak1.setType(1);
      if (paramString != null)
        localak1.setContent(paramString);
      localak1.G(cj.FD());
      localak1.cL(-2);
      be.uz().sw().a(localak1.Bo(), localak1);
      aa.i("MicroMsg.MsgInfoStorageLogic", "qqsync reminder updated");
      return;
      i = 4;
    }
  }

  public static long b(String paramString, long paramLong)
  {
    long l = 0L;
    if (paramString != null)
    {
      ak localak = be.uz().sw().uW(paramString);
      if (localak != null)
        l = 1L + localak.DL();
    }
    if (l > paramLong * 1000L)
      return l;
    return paramLong * 1000L;
  }

  public static boolean cu(int paramInt)
  {
    switch (paramInt)
    {
    case 25:
    default:
      return false;
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    }
    return true;
  }

  public static long d(ak paramak)
  {
    i locali = be.uz().su().tO(paramak.aCl());
    if ((locali == null) || (locali.rj() == 0))
      be.uz().su().B(new i(paramak.aCl()));
    return be.uz().sw().v(paramak);
  }

  public static long dA(String paramString)
  {
    long l = System.currentTimeMillis();
    if (paramString != null)
    {
      ak localak = be.uz().sw().uW(paramString);
      if ((localak != null) && (1L + localak.DL() > l))
        l = 1L + localak.DL();
    }
    return l;
  }

  public static int dB(String paramString)
  {
    return be.uz().sw().vb(paramString);
  }

  @Deprecated
  public static int dw(String paramString)
  {
    return dx(paramString);
  }

  private static int dx(String paramString)
  {
    if (paramString == null);
    int i;
    do
    {
      do
        return -1;
      while ((paramString.length() <= 0) || (paramString.startsWith("~SEMI_XML~")));
      i = paramString.indexOf(':');
    }
    while ((i != -1) && (paramString.substring(0, i).contains("<")));
    return i;
  }

  public static String dy(String paramString)
  {
    int i = dx(paramString);
    if (i == -1)
      return null;
    return paramString.substring(0, i);
  }

  public static String dz(String paramString)
  {
    int i = dx(paramString);
    if (i == -1);
    while (i + 2 >= paramString.length())
      return paramString;
    return paramString.substring(i + 2);
  }

  private static void e(ak paramak)
  {
    if (paramak == null)
      return;
    int i = paramak.getType();
    switch (i)
    {
    default:
    case -1879048191:
    case -1879048190:
    case -1879048189:
    }
    while (true)
    {
      j localj = l.T(Integer.valueOf(i));
      if (localj == null)
        break;
      localj.c(paramak);
      return;
      i = 49;
    }
  }

  public static void h(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        q(((Long)localIterator.next()).longValue());
    }
  }

  public static int n(String paramString, int paramInt)
  {
    ak localak = be.uz().sw().ae(paramString, paramInt);
    if ((localak == null) || (localak.AH() != paramInt))
      return 0;
    e(localak);
    return be.uz().sw().ah(paramString, paramInt);
  }

  public static int o(String paramString, int paramInt)
  {
    Cursor localCursor = be.uz().sw().aj(paramString, paramInt);
    if (localCursor.moveToFirst())
      while (!localCursor.isAfterLast())
      {
        ak localak = new ak();
        localak.convertFrom(localCursor);
        e(localak);
        localCursor.moveToNext();
      }
    localCursor.close();
    return be.uz().sw().ai(paramString, paramInt);
  }

  public static int q(long paramLong)
  {
    ak localak = be.uz().sw().bU(paramLong);
    if ((localak == null) || (localak.Bo() != paramLong))
      return 0;
    e(localak);
    return be.uz().sw().bV(paramLong);
  }

  public static void uS()
  {
    List localList = be.uz().sw().uY("bottlemessage");
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        e((ak)localList.get(i));
    be.uz().sw().va("bottlemessage");
  }

  public static void uT()
  {
    List localList = be.uz().sw().uY("qmessage");
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        e((ak)localList.get(i));
    be.uz().sw().va("qmessage");
  }

  public static void uU()
  {
    List localList = be.uz().sw().uY("tmessage");
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        e((ak)localList.get(i));
    be.uz().sw().va("tmessage");
  }

  public static void uV()
  {
    List localList = be.uz().sw().uY("message");
    if (localList != null)
      for (int i = 0; i < localList.size(); i++)
        e((ak)localList.get(i));
    be.uz().sw().va("message");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bv
 * JD-Core Version:    0.6.2
 */