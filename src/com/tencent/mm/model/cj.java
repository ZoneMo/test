package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.n;

public final class cj
{
  public static void a(i parami)
  {
    a(parami, "conversation", "rconversation", 50);
    a(parami, "bottleconversation", "rbottleconversation", 51);
  }

  private static void a(i parami, String paramString1, String paramString2, int paramInt)
  {
    if (com.tencent.mm.sdk.platformtools.cj.c((Integer)be.uz().sr().get(paramInt)) == -1)
      aa.w("MicroMsg.OldConversationProc", "check old " + paramString1 + " not exist");
    Cursor localCursor1;
    do
    {
      return;
      if (!i.b(parami, paramString1))
      {
        aa.w("MicroMsg.OldConversationProc", "check old " + paramString1 + " not exist");
        be.uz().sr().set(paramInt, Integer.valueOf(-1));
        return;
      }
      localCursor1 = parami.rawQuery("select unReadCount,status,isSend,createTime,username,content,reserved from " + paramString1, null);
    }
    while (localCursor1 == null);
    int i = localCursor1.getCount();
    aa.d("MicroMsg.OldConversationProc", "Read From Old " + paramString1 + "  :" + i);
    if (i == com.tencent.mm.sdk.platformtools.cj.c((Integer)be.uz().sr().get(paramInt)))
    {
      aa.w("MicroMsg.OldConversationProc", "Copy has been finished count:" + i);
      localCursor1.close();
      return;
    }
    long l = parami.ca(Thread.currentThread().getId());
    int j = 0;
    if (j < i)
    {
      localCursor1.moveToPosition(j);
      n localn = new n();
      localn.bY(localCursor1.getInt(0));
      localn.setStatus(localCursor1.getInt(1));
      localn.bZ(localCursor1.getInt(2));
      localn.o(localCursor1.getLong(3));
      localn.setUsername(localCursor1.getString(4));
      localn.setContent(localCursor1.getString(5));
      localn.bP(localCursor1.getString(6));
      Cursor localCursor2;
      int k;
      StringBuilder localStringBuilder;
      if (!com.tencent.mm.sdk.platformtools.cj.hX(localn.getUsername()))
      {
        localCursor2 = parami.rawQuery("select username from " + paramString2 + " where username=" + i.bQ(localn.getUsername()), null);
        k = localCursor2.getCount();
        localStringBuilder = new StringBuilder("get old:").append(localn.getUsername()).append(" in new:");
        if (k == 0)
          break label485;
      }
      label485: for (boolean bool = true; ; bool = false)
      {
        aa.d("MicroMsg.OldConversationProc", bool);
        localCursor2.close();
        if (k == 0)
          parami.insert(paramString2, "", localn.oa());
        j++;
        break;
      }
    }
    if (l != 0L)
      parami.cb(l);
    localCursor1.close();
    be.uz().sr().set(paramInt, Integer.valueOf(i));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cj
 * JD-Core Version:    0.6.2
 */