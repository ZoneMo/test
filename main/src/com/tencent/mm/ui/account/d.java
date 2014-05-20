package com.tencent.mm.ui.account;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.List;

final class d extends Filter
{
  private d(c paramc)
  {
  }

  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    int i = 0;
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (c.a(this.gpw) == null);
    synchronized (c.b(this.gpw))
    {
      c.a(this.gpw, new ArrayList(c.c(this.gpw)));
      if (paramCharSequence != null)
        if (paramCharSequence.length() != 0)
          break label134;
    }
    synchronized (c.b(this.gpw))
    {
      ArrayList localArrayList1 = new ArrayList(c.a(this.gpw));
      localFilterResults.values = localArrayList1;
      localFilterResults.count = localArrayList1.size();
      return localFilterResults;
      localObject4 = finally;
      throw localObject4;
    }
    label134: String str1 = paramCharSequence.toString().toLowerCase();
    String str6;
    String str2;
    if ((c.d(this.gpw) != null) && (c.d(this.gpw).length() > 0))
    {
      String[] arrayOfString = str1.split(c.d(this.gpw));
      if ((arrayOfString != null) && (arrayOfString.length > 1))
      {
        String str5 = arrayOfString[0] + c.d(this.gpw);
        str6 = arrayOfString[1];
        str2 = str5;
      }
    }
    for (String str3 = str6; ; str3 = str1)
    {
      ArrayList localArrayList2 = c.a(this.gpw);
      int j = localArrayList2.size();
      ArrayList localArrayList3 = new ArrayList(j);
      while (i < j)
      {
        String str4 = (String)localArrayList2.get(i);
        if (str4.toString().toLowerCase().startsWith(str3))
          localArrayList3.add(str2 + str4);
        i++;
      }
      localFilterResults.values = localArrayList3;
      localFilterResults.count = localArrayList3.size();
      return localFilterResults;
      str2 = "";
    }
  }

  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    c.a(this.gpw, (List)paramFilterResults.values);
    if (paramFilterResults.count > 0)
    {
      this.gpw.notifyDataSetChanged();
      return;
    }
    this.gpw.notifyDataSetInvalidated();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.d
 * JD-Core Version:    0.6.2
 */