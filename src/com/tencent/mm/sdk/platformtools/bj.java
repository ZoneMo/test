package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.os.Build.VERSION;
import java.util.List;

public final class bj
{
  private static final int ges = 17;

  public static String ao(List paramList)
  {
    Object localObject1 = "";
    if ((paramList == null) || (paramList.size() <= 0))
    {
      localObject1 = "";
      return localObject1;
    }
    int i = 0;
    label23: String str4;
    if (i < paramList.size())
    {
      if ((paramList.get(i) == null) || (((bl)paramList.get(i)).dMM.length() != ges))
        break label213;
      String str1 = (String)localObject1 + "<mac ";
      String str2 = str1 + "macDbm=\"" + ((bl)paramList.get(i)).gez + "\"";
      String str3 = str2 + ">";
      str4 = str3 + ((bl)paramList.get(i)).dMM;
    }
    label213: for (Object localObject2 = str4 + "</mac>"; ; localObject2 = localObject1)
    {
      i++;
      localObject1 = localObject2;
      break label23;
      break;
    }
  }

  public static String ap(List paramList)
  {
    Object localObject;
    if ((paramList == null) || (paramList.size() <= 0))
      localObject = "";
    while (true)
    {
      return localObject;
      localObject = "";
      int i = 0;
      while (i < paramList.size())
      {
        String str1 = (String)localObject + "<cell ";
        String str2 = str1 + "mcc=\"" + ((bk)paramList.get(i)).get + "\" ";
        String str3 = str2 + "mnc=\"" + ((bk)paramList.get(i)).geu + "\" ";
        String str4 = str3 + "lac=\"" + ((bk)paramList.get(i)).gev + "\" ";
        String str5 = str4 + "type=\"" + ((bk)paramList.get(i)).type + "\" ";
        String str6 = str5 + "stationId=\"" + ((bk)paramList.get(i)).gex + "\" ";
        String str7 = str6 + "networkId=\"" + ((bk)paramList.get(i)).gey + "\" ";
        String str8 = str7 + "systemId=\"" + ((bk)paramList.get(i)).systemId + "\" ";
        String str9 = str8 + "dbm=\"" + ((bk)paramList.get(i)).gez + "\" ";
        String str10 = str9 + " >";
        String str11 = str10 + ((bk)paramList.get(i)).gew;
        String str12 = str11 + "</cell>";
        i++;
        localObject = str12;
      }
    }
  }

  public static void bA(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      new bo().bA(paramContext);
      return;
    }
    new bm().bA(paramContext);
  }

  public static List bB(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 5)
    {
      new bo();
      return bo.bB(paramContext);
    }
    new bm();
    return bm.bB(paramContext);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bj
 * JD-Core Version:    0.6.2
 */