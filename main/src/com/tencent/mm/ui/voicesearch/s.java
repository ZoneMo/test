package com.tencent.mm.ui.voicesearch;

import android.database.Cursor;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.List;

final class s
  implements Runnable
{
  s(j paramj)
  {
  }

  public final void run()
  {
    int i = 0;
    if ((j.g(this.htK) != null) && (j.g(this.htK).length != 0))
    {
      ArrayList localArrayList3 = new ArrayList();
      String[] arrayOfString = j.g(this.htK);
      int j = arrayOfString.length;
      while (i < j)
      {
        String str2 = arrayOfString[i];
        if (this.htK.ya(str2))
          localArrayList3.add(str2);
        i++;
      }
      if (localArrayList3.size() > 0)
      {
        j.a(this.htK, be.uz().su().a((String[])localArrayList3.toArray(new String[localArrayList3.size()]), j.h(this.htK), null, j.a(this.htK)));
        return;
      }
      j.b(this.htK, be.uz().su().aAG());
      return;
    }
    if (j.i(this.htK) != null)
    {
      if (!j.h(this.htK).equals("@all.chatroom.contact"))
      {
        Cursor localCursor3 = be.uz().su().b(j.i(this.htK), j.h(this.htK), j.a(this.htK), true);
        j.c(this.htK, localCursor3);
        return;
      }
      Cursor localCursor1 = be.uz().su().b(j.i(this.htK), "@micromsg.with.all.biz.qq.com", j.a(this.htK), false);
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      while (localCursor1.moveToNext())
      {
        String str1 = localCursor1.getString(localCursor1.getColumnIndex("username"));
        if (!str1.endsWith("@chatroom"))
          localArrayList1.add(str1);
        else
          localArrayList2.add(str1);
      }
      if ((localCursor1 != null) && (!localCursor1.isClosed()))
        localCursor1.close();
      if ((localArrayList1.size() != 0) || (localArrayList2.size() != 0));
      for (Cursor localCursor2 = be.uz().su().a(j.i(this.htK), localArrayList1, null, localArrayList2, j.a(this.htK)); ; localCursor2 = be.uz().su().aAG())
      {
        j.d(this.htK, localCursor2);
        return;
      }
    }
    j.e(this.htK, be.uz().su().aAG());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.s
 * JD-Core Version:    0.6.2
 */