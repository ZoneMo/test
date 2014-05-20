package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class aq
{
  public Object CE = null;
  public String content;
  public int ehm;
  public long eic;
  public String eid;
  public String[] eie = null;
  public int[] eif = null;
  public List[] eig = null;
  public long timestamp;
  public int type;

  public final void a(Cursor paramCursor, int[] paramArrayOfInt, boolean paramBoolean)
  {
    this.type = paramCursor.getInt(0);
    this.ehm = paramCursor.getInt(1);
    this.eic = paramCursor.getLong(2);
    this.eid = paramCursor.getString(3);
    this.timestamp = paramCursor.getLong(4);
    this.content = paramCursor.getString(5);
    if (paramBoolean)
    {
      this.eie = a.egI.split(this.content);
      this.eif = new int[this.eie.length];
      int i7 = 0;
      int i8 = 0;
      while (i7 < this.eif.length)
      {
        this.eif[i7] = i8;
        i8 += 1 + this.eie[i7].length();
        i7++;
      }
    }
    if ((paramCursor.getColumnCount() >= 7) && (paramArrayOfInt != null))
    {
      this.eig = new List[paramArrayOfInt.length];
      if (paramArrayOfInt.length != 0)
        break label173;
    }
    while (true)
    {
      return;
      label173: String[] arrayOfString = a.egH.split(paramCursor.getString(6));
      int i = arrayOfString.length;
      int j = 0;
      if (i - j >= 4)
      {
        int i3 = Integer.parseInt(arrayOfString[(j + 1)]);
        int i4 = Integer.parseInt(arrayOfString[(j + 2)]);
        int i5 = i4 + Integer.parseInt(arrayOfString[(j + 3)]);
        int i6 = Arrays.binarySearch(paramArrayOfInt, i3);
        if (i6 < 0)
          i6 = -2 + -i6;
        if (this.eig[i6] == null)
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(new ar(i4, i5, (byte)0));
          this.eig[i6] = localArrayList;
        }
        while (true)
        {
          j += 4;
          break;
          List localList = this.eig[i6];
          ar localar2 = (ar)localList.get(-1 + localList.size());
          if (localar2.dKv >= i4)
            localar2.dKv = i5;
          else
            localList.add(new ar(i4, i5, (byte)0));
        }
      }
      byte[] arrayOfByte = this.content.getBytes();
      List[] arrayOfList = this.eig;
      int k = arrayOfList.length;
      for (int m = 0; m < k; m++)
      {
        Iterator localIterator = arrayOfList[m].iterator();
        while (localIterator.hasNext())
        {
          ar localar1 = (ar)localIterator.next();
          int n = localar1.dKv - localar1.ehn;
          localar1.ehn = new String(arrayOfByte, 0, localar1.ehn).length();
          localar1.dKv = (new String(arrayOfByte, localar1.ehn, n).length() + localar1.ehn);
          if (paramBoolean)
          {
            int i1 = Arrays.binarySearch(this.eif, localar1.ehn);
            if (i1 < 0)
              i1 = -2 + -i1;
            localar1.eih = i1;
            int i2 = this.eif[i1];
            localar1.eii = (localar1.ehn - i2);
            localar1.eij = (localar1.dKv - i2);
          }
        }
      }
    }
  }

  public final ar aaW()
  {
    return (ar)this.eig[0].get(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.aq
 * JD-Core Version:    0.6.2
 */