package com.tencent.mm.r;

import android.database.Cursor;
import com.tencent.mm.model.aj;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class b extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 620757033);
  }

  public final String getTag()
  {
    return "MicroMsg.DataTransfer.BlackListConvDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.DataTransfer.BlackListConvDataTransfer", "the previous version is %d", arrayOfObject);
    if ((paramInt != 0) && (paramInt < 620757033))
    {
      LinkedList localLinkedList = new LinkedList();
      Cursor localCursor = be.uz().su().b("@black.android", "", null);
      if (localCursor != null)
      {
        localCursor.moveToFirst();
        while (!localCursor.isAfterLast())
        {
          com.tencent.mm.storage.i locali = new com.tencent.mm.storage.i();
          locali.convertFrom(localCursor);
          localLinkedList.add(locali.getUsername());
          localCursor.moveToNext();
        }
        localCursor.close();
      }
      if (localLinkedList.size() > 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Update rconversation");
        localStringBuilder.append(" set parentRef = '@blacklist' where 1 != 1 ");
        Iterator localIterator = localLinkedList.iterator();
        while (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          localStringBuilder.append(" or username = '").append(str2).append("'");
        }
        String str1 = localStringBuilder.toString();
        aa.e("MicroMsg.DataTransfer.BlackListConvDataTransfer", "update sql: %s", new Object[] { str1 });
        be.uz().sp().aQ("rconversation", str1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.b
 * JD-Core Version:    0.6.2
 */