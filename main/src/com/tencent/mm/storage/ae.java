package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.protocal.a.ev;
import com.tencent.mm.protocal.a.fb;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class ae extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(ad.cfX, "EmojiSummaryInfo");
  }

  public ae(af paramaf)
  {
    this(paramaf, ad.cfX, "EmojiSummaryInfo");
  }

  private ae(af paramaf, com.tencent.mm.sdk.e.ae paramae, String paramString)
  {
    super(paramaf, paramae, paramString, null);
    this.crf = paramaf;
  }

  private List mh(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = localaf.a("EmojiSummaryInfo", null, "type=?", arrayOfString, null, null);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      do
      {
        ad localad = new ad();
        localad.convertFrom(localCursor);
        localArrayList.add(localad);
      }
      while (localCursor.moveToNext());
    }
    if (localCursor != null)
      localCursor.close();
    return localArrayList;
  }

  public final List Le()
  {
    LinkedList localLinkedList = new LinkedList();
    List localList = mh(1);
    if ((localList != null) && (localList.size() > 0))
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localLinkedList.add(((ad)localIterator.next()).Ld());
    }
    return localLinkedList;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final List aBP()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = mh(2);
    if ((localList != null) && (localList.size() > 0))
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((ad)localIterator.next()).aBO());
    }
    return localArrayList;
  }

  public final boolean d(List paramList1, List paramList2)
  {
    if ((paramList1 == null) || (paramList2 == null))
      return false;
    i locali2;
    long l;
    if ((this.crf instanceof i))
    {
      locali2 = (i)this.crf;
      l = locali2.ca(Thread.currentThread().getId());
    }
    for (i locali1 = locali2; ; locali1 = null)
    {
      this.crf.delete("EmojiSummaryInfo", null, null);
      Iterator localIterator1 = paramList1.iterator();
      while (localIterator1.hasNext())
      {
        ContentValues localContentValues2 = new ad((fb)localIterator1.next()).oa();
        this.crf.replace("EmojiSummaryInfo", "productId_type", localContentValues2);
      }
      Iterator localIterator2 = paramList2.iterator();
      while (localIterator2.hasNext())
      {
        ContentValues localContentValues1 = new ad((ev)localIterator2.next()).oa();
        this.crf.replace("EmojiSummaryInfo", "productId_type", localContentValues1);
      }
      if (locali1 != null)
        locali1.cb(l);
      return true;
      l = -1L;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ae
 * JD-Core Version:    0.6.2
 */