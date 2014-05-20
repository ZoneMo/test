package com.tencent.map.location;

import android.net.wifi.ScanResult;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class f
{
  private static f TY;
  private String TX;
  private long TZ = 0L;
  private List Ua = new ArrayList();
  private List Ub = new ArrayList();

  private static boolean a(StringBuffer paramStringBuffer)
  {
    try
    {
      double d = new JSONObject(paramStringBuffer.toString()).getJSONObject("location").getDouble("accuracy");
      boolean bool1 = d < 5000.0D;
      boolean bool2 = false;
      if (bool1)
        bool2 = true;
      return bool2;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private boolean a(List paramList)
  {
    if (paramList == null);
    do
    {
      return false;
      int i;
      if (this.Ub != null)
      {
        int k = 0;
        i = 0;
        if (k < this.Ub.size())
        {
          String str = ((i)this.Ub.get(k)).TX;
          for (int m = 0; ; m++)
            if ((str != null) && (m < paramList.size()))
            {
              if (str.equals(((ScanResult)paramList.get(m)).BSSID))
                i++;
            }
            else
            {
              k++;
              break;
            }
        }
      }
      else
      {
        i = 0;
      }
      int j = paramList.size();
      if ((j >= 6) && (i >= 1 + j / 2))
        return true;
      if ((j < 6) && (i >= 2))
        return true;
    }
    while ((this.Ub.size() > 2) || (paramList.size() > 2) || (Math.abs(System.currentTimeMillis() - this.TZ) > 30000L));
    return true;
  }

  public static f lW()
  {
    if (TY == null)
      TY = new f();
    return TY;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, List paramList)
  {
    this.TZ = System.currentTimeMillis();
    this.TX = null;
    this.Ua.clear();
    h localh = new h((byte)0);
    localh.a = paramInt1;
    localh.b = paramInt2;
    localh.Uc = paramInt3;
    localh.Ud = paramInt4;
    this.Ua.add(localh);
    if (paramList != null)
    {
      this.Ub.clear();
      for (int i = 0; i < paramList.size(); i++)
      {
        i locali = new i((byte)0);
        locali.TX = ((ScanResult)paramList.get(i)).BSSID;
        this.Ub.add(locali);
      }
    }
  }

  public final void ai(String paramString)
  {
    this.TX = paramString;
  }

  public final String b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, List paramList)
  {
    if ((this.TX == null) || (this.TX.length() < 10));
    label237: label251: 
    do
    {
      return null;
      String str = this.TX;
      if ((str == null) || (paramList == null));
      for (str = null; ; str = null)
      {
        long l;
        do
        {
          this.TX = str;
          if (this.TX == null)
            break;
          if ((this.Ua == null) || (this.Ua.size() <= 0))
            break label251;
          h localh = (h)this.Ua.get(0);
          if ((localh.a != paramInt1) || (localh.b != paramInt2) || (localh.Uc != paramInt3) || (localh.Ud != paramInt4))
            break;
          if (((this.Ub != null) && (this.Ub.size() != 0)) || ((paramList != null) && (paramList.size() != 0)))
            break label237;
          return this.TX;
          l = Math.abs(System.currentTimeMillis() - this.TZ);
        }
        while (((l <= 30000L) || (paramList.size() <= 2)) && ((l <= 45000L) || (paramList.size() > 2)) && (a(new StringBuffer(str))));
      }
      if (a(paramList))
        return this.TX;
    }
    while (!a(paramList));
    return this.TX;
  }

  public final void lX()
  {
    this.TX = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.f
 * JD-Core Version:    0.6.2
 */