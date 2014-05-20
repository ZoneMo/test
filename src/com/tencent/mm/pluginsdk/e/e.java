package com.tencent.mm.pluginsdk.e;

import android.content.Context;
import android.text.format.Time;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public final class e
{
  public static CharSequence b(Context paramContext, long paramLong, boolean paramBoolean)
  {
    String str1 = z.azj();
    Locale localLocale = z.sA(str1);
    GregorianCalendar localGregorianCalendar1;
    String str2;
    if (!str1.equalsIgnoreCase("zh_CN"))
    {
      localGregorianCalendar1 = new GregorianCalendar();
      if (paramLong < 3600000L)
        str2 = "";
    }
    Time localTime1;
    Time localTime2;
    do
    {
      GregorianCalendar localGregorianCalendar3;
      do
      {
        return str2;
        GregorianCalendar localGregorianCalendar2 = new GregorianCalendar(localGregorianCalendar1.get(1), localGregorianCalendar1.get(2), localGregorianCalendar1.get(5));
        long l1 = paramLong - localGregorianCalendar2.getTimeInMillis();
        if ((l1 > 0L) && (l1 <= 86400000L))
        {
          java.text.DateFormat localDateFormat = java.text.DateFormat.getTimeInstance(3, localLocale);
          return localDateFormat.format(Long.valueOf(paramLong));
        }
        long l2 = 86400000L + (paramLong - localGregorianCalendar2.getTimeInMillis());
        if ((l2 > 0L) && (l2 <= 86400000L))
        {
          if (paramBoolean)
            return paramContext.getString(n.bng);
          return paramContext.getString(n.bng) + " " + java.text.DateFormat.getTimeInstance(3, localLocale).format(Long.valueOf(paramLong));
        }
        localGregorianCalendar3 = new GregorianCalendar();
        localGregorianCalendar3.setTimeInMillis(paramLong);
        if ((localGregorianCalendar1.get(1) != localGregorianCalendar3.get(1)) || (localGregorianCalendar1.get(3) != localGregorianCalendar3.get(3)))
          break;
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("E", localLocale);
        str2 = localSimpleDateFormat.format(Long.valueOf(paramLong));
      }
      while (paramBoolean);
      return str2 + " " + java.text.DateFormat.getTimeInstance(3, localLocale).format(Long.valueOf(paramLong));
      if (localGregorianCalendar1.get(1) == localGregorianCalendar3.get(1))
      {
        if (paramBoolean)
          return java.text.DateFormat.getDateInstance(3, localLocale).format(Long.valueOf(paramLong));
        return java.text.DateFormat.getDateTimeInstance(3, 3, localLocale).format(Long.valueOf(paramLong));
      }
      if (paramBoolean)
        return java.text.DateFormat.getDateInstance(3, localLocale).format(Long.valueOf(paramLong));
      return java.text.DateFormat.getDateTimeInstance(3, 3, localLocale).format(Long.valueOf(paramLong));
      if (paramLong < 3600000L)
        return "";
      localTime1 = new Time();
      localTime1.set(paramLong);
      localTime2 = new Time();
      localTime2.setToNow();
      if ((localTime1.year == localTime2.year) && (localTime1.yearDay == localTime2.yearDay))
        return f(paramContext, localTime1.hour) + d.a(paramContext.getString(n.bmM), localTime1);
      if ((localTime1.year == localTime2.year) && (localTime2.yearDay - localTime1.yearDay == 1))
      {
        if (paramBoolean)
          return paramContext.getString(n.bng) + " " + f(paramContext, localTime1.hour);
        return paramContext.getString(n.bng) + " " + f(paramContext, localTime1.hour) + d.a(paramContext.getString(n.bmM), localTime1);
      }
      if ((localTime1.year != localTime2.year) || (localTime1.getWeekNumber() != localTime2.getWeekNumber()))
        break;
      str2 = d.a("E ", localTime1) + h(paramContext, 3600000L * localTime1.hour);
    }
    while (paramBoolean);
    return str2 + d.a(paramContext.getString(n.bmM), localTime1);
    if (localTime1.year == localTime2.year)
    {
      if (paramBoolean)
        return d.a(paramContext.getString(n.bmz), localTime1);
      int j = n.bmB;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = h(paramContext, 3600000L * localTime1.hour);
      return d.a(paramContext.getString(j, arrayOfObject2).toString(), localTime1);
    }
    if (paramBoolean)
      return d.a(paramContext.getString(n.bmG), localTime1);
    int i = n.bmH;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = h(paramContext, 3600000L * localTime1.hour);
    return d.a(paramContext.getString(i, arrayOfObject1).toString(), localTime1);
  }

  public static String e(Context paramContext, int paramInt)
  {
    long l1 = 1000L * paramInt;
    GregorianCalendar localGregorianCalendar1 = new GregorianCalendar();
    if (l1 < 3600000L)
      return "";
    GregorianCalendar localGregorianCalendar2 = new GregorianCalendar(localGregorianCalendar1.get(1), localGregorianCalendar1.get(2), localGregorianCalendar1.get(5));
    long l2 = l1 - localGregorianCalendar2.getTimeInMillis();
    if ((l2 >= 0L) && (l2 < 86400000L))
      return h(paramContext, l2) + ";" + g(paramContext.getString(n.bmK), l1);
    long l3 = l1 - (localGregorianCalendar2.getTimeInMillis() - 86400000L);
    if ((l3 >= 0L) && (l3 < 86400000L))
      return paramContext.getString(n.bng) + " " + h(paramContext, l3) + ";" + g(paramContext.getString(n.bmK), l1);
    long l4 = l1 - (localGregorianCalendar2.getTimeInMillis() - 172800000L);
    if ((l4 >= 0L) && (l4 < 86400000L))
      return paramContext.getString(n.bmP) + " " + h(paramContext, l4) + ";" + g(paramContext.getString(n.bmK), l1);
    long l5 = l1 - (86400000L + localGregorianCalendar2.getTimeInMillis());
    if ((l5 >= 0L) && (l5 < 86400000L))
      return paramContext.getString(n.bmY) + " " + h(paramContext, l5) + ";" + g(paramContext.getString(n.bmK), l1);
    long l6 = l1 - (172800000L + localGregorianCalendar2.getTimeInMillis());
    if ((l6 >= 0L) && (l6 < 86400000L))
      return paramContext.getString(n.bmO) + " " + h(paramContext, l6) + ";" + g(paramContext.getString(n.bmK), l1);
    GregorianCalendar localGregorianCalendar3 = new GregorianCalendar();
    localGregorianCalendar3.setTimeInMillis(l1);
    int i = localGregorianCalendar3.get(11);
    if ((localGregorianCalendar1.get(1) == localGregorianCalendar3.get(1)) && (localGregorianCalendar1.get(3) == localGregorianCalendar3.get(3)))
    {
      int k = localGregorianCalendar3.get(7);
      StringBuilder localStringBuilder2 = new StringBuilder();
      String str2 = "";
      switch (k)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        return str2 + " " + f(paramContext, i) + ";" + g(paramContext.getString(n.bmK), l1);
        str2 = paramContext.getString(n.bnc);
        continue;
        str2 = paramContext.getString(n.bna);
        continue;
        str2 = paramContext.getString(n.bne);
        continue;
        str2 = paramContext.getString(n.bnf);
        continue;
        str2 = paramContext.getString(n.bnd);
        continue;
        str2 = paramContext.getString(n.bmZ);
        continue;
        str2 = paramContext.getString(n.bnb);
      }
    }
    if ((localGregorianCalendar1.get(1) == localGregorianCalendar3.get(1)) && (1 + localGregorianCalendar1.get(3) == localGregorianCalendar3.get(3)))
    {
      int j = localGregorianCalendar3.get(7);
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1 = "";
      switch (j)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        return str1 + " " + f(paramContext, i) + ";" + g(paramContext.getString(n.bmK), l1);
        str1 = paramContext.getString(n.bmT);
        continue;
        str1 = paramContext.getString(n.bmR);
        continue;
        str1 = paramContext.getString(n.bmV);
        continue;
        str1 = paramContext.getString(n.bmW);
        continue;
        str1 = paramContext.getString(n.bmU);
        continue;
        str1 = paramContext.getString(n.bmQ);
        continue;
        str1 = paramContext.getString(n.bmS);
      }
    }
    if (localGregorianCalendar1.get(1) == localGregorianCalendar3.get(1))
      return android.text.format.DateFormat.format(paramContext.getString(n.bmz), l1) + " " + f(paramContext, i) + ";" + g(paramContext.getString(n.bmK), l1);
    return android.text.format.DateFormat.format(paramContext.getString(n.bmG), l1) + " " + f(paramContext, i) + ";" + g(paramContext.getString(n.bmK), l1);
  }

  private static CharSequence f(Context paramContext, int paramInt)
  {
    if (paramInt < 0)
      return "";
    if (paramInt < 6L)
      return paramContext.getString(n.bmC);
    if (paramInt < 12L)
      return paramContext.getString(n.bmI);
    if (paramInt < 13L)
      return paramContext.getString(n.bmJ);
    if (paramInt < 18L)
      return paramContext.getString(n.bmx);
    return paramContext.getString(n.bmD);
  }

  public static String f(String paramString, long paramLong)
  {
    return new SimpleDateFormat(paramString).format(new Date(1000L * paramLong));
  }

  public static String g(String paramString, long paramLong)
  {
    String str1 = android.text.format.DateFormat.format(paramString, paramLong).toString();
    String str2;
    if (cj.hX(str1))
      str2 = "";
    do
    {
      return str2;
      str2 = str1.trim();
    }
    while (!str2.startsWith("0"));
    return str2.substring(1);
  }

  public static CharSequence h(Context paramContext, long paramLong)
  {
    if (paramLong < 0L)
      return "";
    if (paramLong < 21600000L)
      return paramContext.getString(n.bmC);
    if (paramLong < 43200000L)
      return paramContext.getString(n.bmI);
    if (paramLong < 46800000L)
      return paramContext.getString(n.bmJ);
    if (paramLong < 64800000L)
      return paramContext.getString(n.bmx);
    return paramContext.getString(n.bmD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.e.e
 * JD-Core Version:    0.6.2
 */