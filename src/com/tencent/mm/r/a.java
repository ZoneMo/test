package com.tencent.mm.r;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.aj;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.f;
import com.tencent.mm.p.k;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class a extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 604372991);
  }

  public final String getTag()
  {
    return "MicroMsg.App.BizInfoDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.App.BizInfoDataTransfer", "the previous version is %d", arrayOfObject);
    if ((paramInt != 0) && (paramInt < 604372991))
    {
      i locali = be.uz().sp();
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("select BizInfo.username, BizInfo.extInfo");
      localStringBuilder1.append(" from rcontact , BizInfo");
      localStringBuilder1.append(" where rcontact.username = BizInfo.username");
      localStringBuilder1.append(" and (rcontact.type & 1 ) != 0 ");
      localStringBuilder1.append(" and ( rcontact.verifyFlag & 8 ) != 0 ");
      String str1 = localStringBuilder1.toString();
      LinkedList localLinkedList = new LinkedList();
      aa.e("MicroMsg.App.BizInfoDataTransfer", "sql %s", new Object[] { str1 });
      Cursor localCursor = locali.rawQuery(localStringBuilder1.toString(), null);
      if (localCursor != null)
      {
        localCursor.moveToFirst();
        while (!localCursor.isAfterLast())
        {
          com.tencent.mm.p.a locala = new com.tencent.mm.p.a();
          locala.convertFrom(localCursor);
          if (locala.xu().cny == 1)
            localLinkedList.add(locala.field_username);
          localCursor.moveToNext();
        }
        localCursor.close();
      }
      if (localLinkedList.size() > 0)
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("Update BizInfo set type = 1 where 1 !=1 ");
        Iterator localIterator = localLinkedList.iterator();
        while (localIterator.hasNext())
        {
          String str3 = (String)localIterator.next();
          localStringBuilder2.append(" or username = '").append(str3).append("'");
        }
        String str2 = localStringBuilder2.toString();
        aa.e("MicroMsg.App.BizInfoDataTransfer", "update sql %s", new Object[] { str2 });
        ab.ye().aQ("BizInfo", str2);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.a
 * JD-Core Version:    0.6.2
 */