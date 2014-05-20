package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;

public final class ch
{
  private static String cjp = "select * from chatroom_members";

  public static void a(af paramaf)
  {
    if (!(paramaf instanceof i))
      aa.e("MicroMsg.OldChatroomProc", "!(db instanceof SqliteDB)");
    Cursor localCursor1;
    do
    {
      return;
      if (cj.c((Integer)be.uz().sr().get(63)) == -1)
      {
        aa.w("MicroMsg.OldChatroomProc", "check old contact not exist");
        return;
      }
      if (!i.b((i)paramaf, "chatroom_members"))
      {
        aa.w("MicroMsg.OldChatroomProc", "check old contact not exist");
        be.uz().sr().set(63, Integer.valueOf(-1));
        return;
      }
      localCursor1 = paramaf.rawQuery(cjp, null);
    }
    while (localCursor1 == null);
    int i = localCursor1.getCount();
    long l1 = System.currentTimeMillis();
    aa.d("MicroMsg.OldChatroomProc", "Read From Old ChatRoomMember :" + i);
    if (i == cj.c((Integer)be.uz().sr().get(63)))
    {
      aa.w("MicroMsg.OldChatroomProc", "Copy has been finished count:" + i);
      localCursor1.close();
      return;
    }
    long l2 = ((i)paramaf).ca(Thread.currentThread().getId());
    int j = 0;
    if (j < i)
    {
      localCursor1.moveToPosition(j);
      com.tencent.mm.storage.b localb = new com.tencent.mm.storage.b();
      localb.field_chatroomname = localCursor1.getString(0);
      localb.field_memberlist = localCursor1.getString(1);
      localb.field_addtime = localCursor1.getLong(2);
      localb.field_roomflag = localCursor1.getInt(3);
      localb.field_displayname = localCursor1.getString(4);
      localb.field_roomowner = localCursor1.getString(4);
      Cursor localCursor2;
      int k;
      StringBuilder localStringBuilder;
      if (!cj.hX(localb.field_chatroomname))
      {
        localCursor2 = paramaf.rawQuery("select chatroomname from " + "chatroom" + " where chatroomname=" + i.bQ(localb.field_chatroomname), null);
        k = localCursor2.getCount();
        localStringBuilder = new StringBuilder("get chatroom:").append(localb.field_chatroomname).append(" in newchatroomStg:");
        if (k == 0)
          break label432;
      }
      label432: for (boolean bool = true; ; bool = false)
      {
        aa.d("MicroMsg.OldChatroomProc", bool);
        localCursor2.close();
        if (k == 0)
          paramaf.insert("chatroom", "", localb.oa());
        j++;
        break;
      }
    }
    if (l2 != 0L)
      ((i)paramaf).cb(l2);
    localCursor1.close();
    aa.d("MicroMsg.OldChatroomProc", "chatroomProc end time  " + (System.currentTimeMillis() - l1));
    be.uz().sr().set(63, Integer.valueOf(i));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ch
 * JD-Core Version:    0.6.2
 */