package b.a.d;

import b.a.g.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class e
{
  private final List hzY;

  public e()
  {
    this.hzY = new ArrayList();
  }

  private e(List paramList)
  {
    this.hzY = new ArrayList(paramList);
  }

  public e(Map paramMap)
  {
    this();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      this.hzY.add(new d((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
  }

  public final void a(e parame)
  {
    this.hzY.addAll(parame.hzY);
  }

  public final String aRt()
  {
    if (this.hzY.size() == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.hzY.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString().substring(1);
      d locald = (d)localIterator.next();
      localStringBuilder.append('&').append(locald.aRs());
    }
  }

  public final e aRu()
  {
    e locale = new e(this.hzY);
    Collections.sort(locale.hzY);
    return locale;
  }

  public final void bq(String paramString1, String paramString2)
  {
    this.hzY.add(new d(paramString1, paramString2));
  }

  public final String ym(String paramString)
  {
    b.a.g.d.a(paramString, "Cannot append to null URL");
    String str = aRt();
    if (str.equals(""))
      return paramString;
    StringBuilder localStringBuilder = new StringBuilder(String.valueOf(paramString));
    if (paramString.indexOf('?') != -1);
    for (Object localObject = "&"; ; localObject = Character.valueOf('?'))
      return localStringBuilder.append(localObject).toString() + str;
  }

  public final void yn(String paramString)
  {
    String[] arrayOfString1;
    int j;
    if ((paramString != null) && (paramString.length() > 0))
    {
      arrayOfString1 = paramString.split("&");
      int i = arrayOfString1.length;
      j = 0;
      if (j < i);
    }
    else
    {
      return;
    }
    String[] arrayOfString2 = arrayOfString1[j].split("=");
    String str1 = c.decode(arrayOfString2[0]);
    if (arrayOfString2.length > 1);
    for (String str2 = c.decode(arrayOfString2[1]); ; str2 = "")
    {
      this.hzY.add(new d(str1, str2));
      j++;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.e
 * JD-Core Version:    0.6.2
 */