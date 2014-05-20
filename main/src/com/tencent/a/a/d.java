package com.tencent.a.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;

public final class d
{
  private static int Uc;
  private static int Ud;
  private static int Um;
  private static int Un;
  private static int Uo;
  private static long WK;
  private static long XT;
  private static ArrayList Xp;
  private static long Ya;
  private static long Yb;
  private static long Yc;
  private static long Yd;
  private static long Ye;
  private static long Yf;
  private static long Yg;
  private static long Yh;
  private static int Yi;
  private static boolean Yj;
  private static int Yk;
  private static int a = 10000;
  private static int b = 15000;
  private static int g;
  private static int w;
  private static int x;
  private static int y;
  private static int z;

  static
  {
    Uc = 5000;
    Ud = 20000;
    Um = 25000;
    Un = 15000;
    g = 1;
    Uo = 3;
    Yj = false;
    Yk = -1;
    a = 12000;
    b = 20000;
    Uc = 8000;
    Ud = 20000;
    Um = 25000;
    Un = 15000;
    g = 1;
    Uo = 3;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)b.getContext().getSystemService("connectivity");
    if (localConnectivityManager != null)
    {
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        int i = localNetworkInfo.getType();
        if (localNetworkInfo.isConnected())
        {
          Yj = true;
          Yk = i;
          if (i == 0)
          {
            String str = ((TelephonyManager)b.getContext().getSystemService("phone")).getSubscriberId();
            if ((str != null) && (str.length() > 3) && (!str.startsWith("46000")) && (!str.startsWith("46002")))
            {
              a = 15000;
              b = 25000;
              Uc = 10000;
              Ud = 25000;
              Um = 35000;
              Un = 15000;
              g = 2;
              Uo = 4;
            }
          }
        }
      }
    }
  }

  public static void F(boolean paramBoolean)
  {
    if (!paramBoolean)
      z = 1 + z;
    e locale = i(Thread.currentThread().getId());
    if (locale != null)
    {
      locale.Yl = null;
      locale.Yp = (System.currentTimeMillis() - locale.UO);
    }
  }

  public static void b(HttpURLConnection paramHttpURLConnection)
  {
    e locale = h(Thread.currentThread().getId());
    if (locale == null)
      locale = g(Thread.currentThread().getId());
    if (locale == null)
      return;
    locale.Yl = paramHttpURLConnection;
    locale.UO = System.currentTimeMillis();
  }

  public static void bb(int paramInt)
  {
    e locale1 = h(Thread.currentThread().getId());
    if (locale1 == null)
      return;
    locale1.Yo = (System.currentTimeMillis() - locale1.UO);
    locale1.UO = System.currentTimeMillis();
    locale1.g = paramInt;
    long l1;
    if (locale1.Yo == 0L)
      l1 = 1L;
    while (true)
    {
      int i = (int)(paramInt * 1000 / l1);
      y = i;
      int j;
      label79: int k;
      if (i > w)
      {
        j = y;
        w = j;
        if (y >= x)
          break label244;
        k = y;
        label98: x = k;
        if (Xp == null);
      }
      synchronized (Xp)
      {
        Iterator localIterator = Xp.iterator();
        long l2 = 0L;
        int m = 0;
        if (!localIterator.hasNext())
        {
          if (l2 > 0L)
            Yi = (int)(m * 1000 / l2);
          if ((z > 0) && (locale1.Vv < Uc) && (locale1.Yn < Un))
            z = -1 + z;
          locale1.Yl = null;
          locale1.VM = ((int)locale1.Vv);
          locale1.l = 0;
          locale1.m = 0;
          return;
          l1 = locale1.Yo;
          continue;
          j = w;
          break label79;
          label244: if (x == 0)
          {
            k = y;
            break label98;
          }
          k = x;
          break label98;
        }
        e locale2 = (e)localIterator.next();
        m += locale2.g;
        long l3 = locale2.Yo;
        l2 += l3;
      }
    }
  }

  private static e g(long paramLong)
  {
    if (Xp == null)
      Xp = new ArrayList();
    int j;
    int k;
    int m;
    label267: int i1;
    int i2;
    synchronized (Xp)
    {
      Iterator localIterator;
      if (Xp.size() > 20)
      {
        int i = Xp.size();
        j = 0;
        k = 0;
        m = 0;
        if (j < i / 2)
          break label267;
        if (k != 0)
        {
          Ya = ((e)Xp.get(0)).Ym;
          Yb = ((e)Xp.get(0)).Ym;
          XT = ((e)Xp.get(0)).Vv;
          WK = ((e)Xp.get(0)).Vv;
          Yf = ((e)Xp.get(0)).Yn;
          Yg = ((e)Xp.get(0)).Yn;
          if (((e)Xp.get(0)).Yo > 0L)
            w = (int)(1000 * ((e)Xp.get(0)).g / ((e)Xp.get(0)).Yo);
          x = w;
          localIterator = Xp.iterator();
        }
      }
      int n;
      do
      {
        e locale2;
        do
        {
          if (!localIterator.hasNext())
          {
            e locale1 = new e();
            locale1.UG = paramLong;
            Xp.add(locale1);
            return locale1;
            if ((((e)Xp.get(m)).Yo <= 0L) && (System.currentTimeMillis() - ((e)Xp.get(m)).UO <= 600000L))
              break label539;
            Xp.remove(m);
            i1 = 1;
            i2 = m;
            break;
          }
          locale2 = (e)localIterator.next();
          if (locale2.Ym > Ya)
            Ya = locale2.Ym;
          if (locale2.Ym < Yb)
            Yb = locale2.Ym;
          if (locale2.Vv > XT)
            XT = locale2.Vv;
          if (locale2.Vv < WK)
            WK = locale2.Vv;
          if (locale2.Yn > Yf)
            Yf = locale2.Yn;
          if (locale2.Yn < Yg)
            Yg = locale2.Yn;
        }
        while (locale2.Yo <= 0L);
        n = (int)(1000 * locale2.g / locale2.Yo);
        if (n > w)
          w = n;
      }
      while (n >= x);
      x = n;
    }
    while (true)
    {
      j++;
      m = i2;
      k = i1;
      break;
      label539: int i3 = m + 1;
      int i4 = k;
      i2 = i3;
      i1 = i4;
    }
  }

  private static e h(long paramLong)
  {
    if (Xp == null)
      return null;
    synchronized (Xp)
    {
      Iterator localIterator = Xp.iterator();
      e locale;
      do
      {
        if (!localIterator.hasNext())
          return null;
        locale = (e)localIterator.next();
      }
      while (locale.UG != paramLong);
      return locale;
    }
  }

  private static e i(long paramLong)
  {
    if (Xp != null);
    while (true)
    {
      int j;
      synchronized (Xp)
      {
        int i = Xp.size();
        j = i - 1;
        if (j < 0)
          return null;
        if (((e)Xp.get(j)).UG == paramLong)
        {
          e locale = (e)Xp.remove(j);
          return locale;
        }
      }
      j--;
    }
  }

  public static void mF()
  {
    e locale1 = h(Thread.currentThread().getId());
    if (locale1 == null);
    long l1;
    long l2;
    label77: 
    do
    {
      return;
      locale1.Yn = (System.currentTimeMillis() - locale1.UO);
      locale1.UO = System.currentTimeMillis();
      Yh = locale1.Yn;
      if (locale1.Yn <= Yf)
        break;
      l1 = locale1.Yn;
      Yf = l1;
      if (locale1.Yn >= Yg)
        break label150;
      l2 = locale1.Yn;
      Yg = l2;
    }
    while (Xp == null);
    while (true)
    {
      Iterator localIterator;
      int i;
      synchronized (Xp)
      {
        localIterator = Xp.iterator();
        i = 0;
        if (localIterator.hasNext())
          break label173;
        if (i > 0)
          Ye /= i;
        return;
      }
      l1 = Yf;
      break;
      label150: if (Yg == 0L)
      {
        l2 = locale1.Yn;
        break label77;
      }
      l2 = Yg;
      break label77;
      label173: e locale2 = (e)localIterator.next();
      if (locale2.Yn > 0L)
      {
        Ye += locale2.Yn;
        i++;
      }
    }
  }

  public static void mO()
  {
    e locale1 = h(Thread.currentThread().getId());
    if (locale1 == null);
    long l1;
    long l2;
    label77: 
    do
    {
      return;
      locale1.Vv = (System.currentTimeMillis() - locale1.UO);
      locale1.UO = System.currentTimeMillis();
      Yd = locale1.Vv;
      if (locale1.Vv <= XT)
        break;
      l1 = locale1.Vv;
      XT = l1;
      if (locale1.Vv >= WK)
        break label150;
      l2 = locale1.Vv;
      WK = l2;
    }
    while (Xp == null);
    while (true)
    {
      Iterator localIterator;
      int i;
      synchronized (Xp)
      {
        localIterator = Xp.iterator();
        i = 0;
        if (localIterator.hasNext())
          break label173;
        if (i > 0)
          Yc /= i;
        return;
      }
      l1 = XT;
      break;
      label150: if (WK == 0L)
      {
        l2 = locale1.Vv;
        break label77;
      }
      l2 = WK;
      break label77;
      label173: e locale2 = (e)localIterator.next();
      if (locale2.Vv > 0L)
      {
        Yc += locale2.Vv;
        i++;
      }
    }
  }

  public static int mT()
  {
    int i = a;
    if ((Yc > 0L) && (XT > 0L));
    for (int j = (int)(Math.max(Yd, Yc) + XT - WK); ; j = i)
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)b.getContext().getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if (localNetworkInfo != null)
          if ((localNetworkInfo.isConnected()) || (!localNetworkInfo.isAvailable()))
            break label195;
      }
      for (j = b; ; j = Uc)
        label195: 
        do
        {
          int k = j + z * Uc;
          if (k <= Uc)
            k = Uc;
          if (k <= XT)
            k = (int)(XT + Uc);
          if (k >= b)
            k = b;
          e locale = h(Thread.currentThread().getId());
          if (locale == null)
            locale = g(Thread.currentThread().getId());
          if (k < locale.VM + Uc)
            k = locale.VM + Uc;
          locale.VM = k;
          return k;
        }
        while ((XT <= 0L) || (XT >= Uc));
    }
  }

  public static int mU()
  {
    int i = Ud;
    if ((Ye > 0L) && (Yf > 0L));
    for (int j = (int)(Math.max(Yh, Ye) + Yf - Yg); ; j = i)
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)b.getContext().getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if (localNetworkInfo != null)
          if ((localNetworkInfo.isConnected()) || (!localNetworkInfo.isAvailable()))
            break label207;
      }
      for (j = Um; ; j = Un)
        label207: 
        do
        {
          int k = j + z * Uc;
          if (k <= Un)
            k = Un;
          if (k <= Yf)
            k = (int)(Yf + Un);
          if (k >= Um)
            k = Um;
          e locale = h(Thread.currentThread().getId());
          if (locale != null)
          {
            if (k < locale.k + Un)
              k = locale.k + Un;
            if (k < locale.VM + Un)
              k = locale.VM + Un;
            locale.k = k;
          }
          return k;
        }
        while ((Yf <= 0L) || (Yf >= Un));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.d
 * JD-Core Version:    0.6.2
 */