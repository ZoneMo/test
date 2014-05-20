package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import java.util.List;

public final class x
{
  public static int a(String paramString, List paramList)
  {
    if (!be.se())
    {
      aa.w("MicroMsg.ConversationLogic", "get total unread with black list, but has not set uin");
      return 0;
    }
    long l1 = cj.FE();
    Cursor localCursor1 = be.uz().sx().f(paramString, paramList);
    long l2 = cj.FE();
    if ((localCursor1 != null) && (localCursor1.getCount() > 0))
      localCursor1.moveToFirst();
    for (int i = localCursor1.getInt(0); ; i = 0)
    {
      if (localCursor1 != null)
        localCursor1.close();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.e("MicroMsg.ConversationLogic", "unRead getTotalUnread %d", arrayOfObject1);
      if (i <= 0)
        i = 0;
      while (true)
      {
        Object[] arrayOfObject4 = new Object[1];
        arrayOfObject4[0] = Long.valueOf(cj.O(l1));
        aa.d("MicroMsg.ConversationLogic", "get count with black list use %d ms", arrayOfObject4);
        return i;
        Cursor localCursor2 = be.uz().sx().uh(paramString);
        if (localCursor2 == null)
        {
          aa.w("MicroMsg.ConversationLogic", "cursor is null, return");
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = Long.valueOf(cj.O(l2));
          aa.d("MicroMsg.ConversationLogic", "get count use %d ms", arrayOfObject6);
        }
        else
        {
          localCursor2.moveToFirst();
          while (!localCursor2.isAfterLast())
          {
            i locali = be.uz().su().tO(localCursor2.getString(0));
            if ((locali != null) && (locali.ry() == 0))
            {
              i -= localCursor2.getInt(1);
              Object[] arrayOfObject5 = new Object[2];
              arrayOfObject5[0] = locali.getUsername();
              arrayOfObject5[1] = Integer.valueOf(i);
              aa.e("MicroMsg.ConversationLogic", "unRead chatroom mute %s, unRead %d,", arrayOfObject5);
            }
            localCursor2.moveToNext();
          }
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(i);
          aa.d("MicroMsg.ConversationLogic", "unRead result talker count is %d", arrayOfObject2);
          localCursor2.close();
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Long.valueOf(cj.O(l2));
          aa.d("MicroMsg.ConversationLogic", "get count use %d ms", arrayOfObject3);
          i = Math.max(0, i);
        }
      }
    }
  }

  public static int dk(String paramString)
  {
    return a(paramString, null);
  }

  public static int dl(String paramString)
  {
    if (!be.se())
    {
      aa.w("MicroMsg.ConversationLogic", "get Total Unread Talker, but has not set uin");
      return 0;
    }
    long l = cj.FE();
    Cursor localCursor1 = be.uz().sx().ui(paramString);
    if (localCursor1.getCount() > 0)
      localCursor1.moveToFirst();
    for (int i = localCursor1.getInt(0); ; i = 0)
    {
      localCursor1.close();
      if (i <= 0)
        break;
      Cursor localCursor2 = be.uz().sx().uh(paramString);
      if (localCursor2 == null)
      {
        aa.w("MicroMsg.ConversationLogic", "cursor is null, return");
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Long.valueOf(cj.O(l));
        aa.d("MicroMsg.ConversationLogic", "get count use %d ms", arrayOfObject3);
        return i;
      }
      localCursor2.moveToFirst();
      while (!localCursor2.isAfterLast())
      {
        i locali = be.uz().su().tO(localCursor2.getString(0));
        if ((locali != null) && (locali.ry() == 0))
          i--;
        localCursor2.moveToNext();
      }
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.d("MicroMsg.ConversationLogic", "result talker count is %d", arrayOfObject1);
      localCursor2.close();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(cj.O(l));
      aa.d("MicroMsg.ConversationLogic", "get count use %d ms", arrayOfObject2);
      return Math.max(0, i);
    }
  }

  public static int tU()
  {
    int i = 0;
    if (!be.se())
      aa.w("MicroMsg.ConversationLogic", "get Bottle Total Conversation Unread, but has not set uin");
    Cursor localCursor;
    do
    {
      return i;
      localCursor = be.uz().sx().aAP();
      i = 0;
      if (localCursor != null)
      {
        int j = localCursor.getCount();
        i = 0;
        if (j > 0)
        {
          localCursor.moveToFirst();
          i = localCursor.getInt(0);
        }
      }
    }
    while (localCursor == null);
    localCursor.close();
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.x
 * JD-Core Version:    0.6.2
 */