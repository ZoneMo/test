package com.tencent.mm.r;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.model.aj;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import com.tencent.mm.storage.s;

public final class d extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 604372991);
  }

  public final String getTag()
  {
    return "MicroMsg.ConversationDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.ConversationDataTransfer", "the previous version is %d", arrayOfObject1);
    n localn;
    String str4;
    if ((paramInt != 0) && (paramInt < 604372991))
    {
      i locali = be.uz().sp();
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("select rconversation.username from rconversation, rcontact, bizinfo where rconversation.username = rcontact.username and rconversation.username = bizinfo.username and ( rcontact.verifyFlag & 8").append(" ) != 0 ");
      String str1 = localStringBuilder1.toString();
      aa.e("MicroMsg.ConversationDataTransfer", "select sql %s", new Object[] { str1 });
      Cursor localCursor = locali.rawQuery(str1, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("Update rconversation set parentRef = 'officialaccounts' where 1 !=1 ");
        do
        {
          String str2 = localCursor.getString(0);
          if (!w.da(str2))
            localStringBuilder2.append(" or username = '").append(str2).append("'");
        }
        while (localCursor.moveToNext());
        localCursor.close();
        String str3 = localStringBuilder2.toString();
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Boolean.valueOf(true);
        arrayOfObject2[1] = str3;
        aa.e("MicroMsg.ConversationDataTransfer", "changed[%B] exec sql[%s]", arrayOfObject2);
        locali.aQ("rconversation", str3);
        localn = be.uz().sx().tZ("officialaccounts");
        if (localn == null)
        {
          localn = new n("officialaccounts");
          localn.aAH();
          be.uz().sx().c(localn);
        }
        str4 = be.uz().sx().aAO();
        if (!cj.hX(str4))
          break label294;
        aa.w("MicroMsg.ConversationDataTransfer", "last convBiz is null");
      }
    }
    return;
    label294: ak localak = be.uz().sw().uW(str4);
    if ((localak == null) || (localak.field_msgId == 0L))
    {
      aa.w("MicroMsg.ConversationDataTransfer", "last biz msg is error");
      return;
    }
    localn.t(localak);
    localn.setContent(localak.aCl() + ":" + localak.getContent());
    localn.bP(Integer.toString(localak.getType()));
    s locals = be.uz().sx().nR();
    if (locals != null)
    {
      PString localPString1 = new PString();
      PString localPString2 = new PString();
      PInt localPInt = new PInt();
      localak.uK("officialaccounts");
      localak.setContent(localn.field_content);
      locals.a(localak, localPString1, localPString2, localPInt);
      localn.field_digest = localPString1.value;
      localn.field_digestUser = localPString2.value;
      localn.field_hasTrunc = localPInt.value;
    }
    be.uz().sx().a(localn, localn.getUsername());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.d
 * JD-Core Version:    0.6.2
 */