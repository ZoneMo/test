package com.tencent.mm.ui.tools.gridviewheaders;

import android.content.Context;
import java.util.Calendar;
import java.util.Date;

public class a
{
  private static a hnR;
  private long hnO;
  private long hnP;
  private long hnQ;

  private a()
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.set(7, 1);
    localCalendar1.set(11, 0);
    localCalendar1.set(12, 0);
    localCalendar1.set(13, 0);
    localCalendar1.set(14, 0);
    this.hnP = localCalendar1.getTimeInMillis();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.set(5, 1);
    localCalendar2.set(11, 0);
    localCalendar2.set(12, 0);
    localCalendar2.set(13, 0);
    localCalendar2.set(14, 0);
    this.hnQ = localCalendar2.getTimeInMillis();
    this.hnO = Calendar.getInstance().getTimeInMillis();
  }

  public static a aOj()
  {
    if (hnR == null);
    try
    {
      hnR = new a();
      return hnR;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long a(Date paramDate)
  {
    if (paramDate.getTime() >= this.hnP)
      return 9223372036854775807L;
    if (paramDate.getTime() >= this.hnQ)
      return 9223372036854775806L;
    return 100 * paramDate.getYear() + paramDate.getMonth();
  }

  public final String a(Date paramDate, Context paramContext)
  {
    if (paramDate.getTime() >= this.hnP)
      return paramContext.getString(2131167426);
    if (paramDate.getTime() >= this.hnQ)
      return paramContext.getString(2131167427);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(1900 + paramDate.getYear());
    arrayOfObject[1] = Integer.valueOf(1 + paramDate.getMonth());
    return String.format("%d/%d", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.a
 * JD-Core Version:    0.6.2
 */