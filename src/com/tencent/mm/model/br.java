package com.tencent.mm.model;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.m.af;
import com.tencent.mm.platformtools.ab;
import com.tencent.mm.platformtools.ac;
import com.tencent.mm.platformtools.f;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.List;

public class br
{
  private static br ciU;
  public bu ciT;

  private static boolean b(String paramString, List paramList)
  {
    SharedPreferences.Editor localEditor = be.uz().bY("banner").edit();
    localEditor.putInt(paramString + "ArraySize", paramList.size());
    for (int i = 0; i < paramList.size(); i++)
      localEditor.putInt(paramString + i, ((Integer)paramList.get(i)).intValue());
    return localEditor.commit();
  }

  private static List dv(String paramString)
  {
    SharedPreferences localSharedPreferences = be.uz().bY("banner");
    int i = localSharedPreferences.getInt(paramString + "ArraySize", 0);
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
      localArrayList.add(Integer.valueOf(localSharedPreferences.getInt(paramString + j, 0)));
    return localArrayList;
  }

  public static br uP()
  {
    try
    {
      if (ciU == null)
        ciU = new br();
      return ciU;
    }
    finally
    {
    }
  }

  public static ab uQ()
  {
    SharedPreferences localSharedPreferences = be.uz().bY("banner");
    int i = localSharedPreferences.getInt("CurrentType", -1);
    int j = localSharedPreferences.getInt("CurrentShowType", -1);
    String str1 = localSharedPreferences.getString("CurrentData", "");
    if (i != -1)
    {
      switch (bs.ciV[f.eL(i).ordinal()])
      {
      case 3:
      default:
      case 1:
      case 2:
      case 4:
      case 5:
        String str2;
        do
        {
          do
          {
            do
            {
              bt localbt;
              do
              {
                return new ac().eO(i).eP(j).hO(str1).FA();
                localbt = uR();
              }
              while ((localbt != bt.ciZ) && (localbt != bt.cja));
              aa.i("MicorMsg.MainFrameBannerStorage", "already Bind the Mobile");
              return null;
              af.wl();
            }
            while (!af.wp());
            aa.i("MicorMsg.MainFrameBannerStorage", "avatar already existed");
            return null;
          }
          while (uR() != bt.ciZ);
          aa.i("MicorMsg.MainFrameBannerStorage", "already upload the contacts");
          return null;
          str2 = (String)be.uz().sr().get(208903);
        }
        while ((str2 == null) || (str2.length() <= 0));
        aa.i("MicorMsg.MainFrameBannerStorage", "already bind Google Account");
        return null;
      case 6:
      case 7:
      }
      return null;
    }
    return null;
  }

  private static bt uR()
  {
    while (true)
    {
      try
      {
        str1 = (String)be.uz().sr().get(4097, "");
        str2 = (String)be.uz().sr().get(6, "");
        boolean bool = v.tG();
        aa.d("MicorMsg.MainFrameBannerStorage", "isUpload " + bool + " stat " + v.tl());
        if ((str1 != null) && (str1.length() > 0))
        {
          if ((str2 == null) || (str2.length() <= 0))
            break label149;
          if ((str1 == null) && (str2 == null))
            return bt.ciX;
          if ((str1 != null) && (str2 == null))
            return bt.ciY;
          if (bool)
            return bt.ciZ;
          bt localbt = bt.cja;
          return localbt;
        }
      }
      catch (Exception localException)
      {
        return bt.ciX;
      }
      String str1 = null;
      continue;
      label149: String str2 = null;
    }
  }

  public final void a(bu parambu)
  {
    this.ciT = parambu;
  }

  public final void a(f paramf, com.tencent.mm.platformtools.e parame)
  {
    SharedPreferences.Editor localEditor = be.uz().bY("banner").edit();
    switch (bs.ciW[parame.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      if (this.ciT != null)
        this.ciT.tf();
      return;
      localEditor.remove("CurrentType").remove("CurrentShowType").remove("CurrentData").commit();
      continue;
      localEditor.remove("CurrentType").remove("CurrentShowType").remove("CurrentData").commit();
      List localList = dv("HistoryInfo");
      if (!localList.contains(Integer.valueOf(paramf.getValue())))
        localList.add(Integer.valueOf(paramf.getValue()));
      b("HistoryInfo", localList);
    }
  }

  public final boolean a(ab paramab)
  {
    boolean bool1 = false;
    if (paramab == null);
    do
    {
      f localf1;
      f localf2;
      do
      {
        return bool1;
        if (paramab.cGO == f.cGl)
        {
          be.uz().bY("banner").edit().clear().commit();
          if (this.ciT != null)
            this.ciT.tf();
          return true;
        }
        localf1 = paramab.cGO;
        localf2 = f.cGm;
        bool1 = false;
      }
      while (localf1 == localf2);
      SharedPreferences.Editor localEditor = be.uz().bY("banner").edit();
      ab localab = uQ();
      boolean bool2 = dv("HistoryInfo").contains(Integer.valueOf(paramab.cGO.getValue()));
      bool1 = false;
      if (!bool2)
        bool1 = true;
      if ((localab != null) && (localab.cGP == com.tencent.mm.platformtools.e.cGc))
      {
        List localList = dv("HistoryInfo");
        if (!localList.contains(Integer.valueOf(localab.cGO.getValue())))
          localList.add(Integer.valueOf(localab.cGO.getValue()));
        b("HistoryInfo", localList);
      }
      if (bool1)
        localEditor.putInt("CurrentType", paramab.cGO.getValue()).putInt("CurrentShowType", paramab.cGP.getValue()).putString("CurrentData", paramab.cGQ).commit();
    }
    while (this.ciT == null);
    this.ciT.tf();
    return bool1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.br
 * JD-Core Version:    0.6.2
 */