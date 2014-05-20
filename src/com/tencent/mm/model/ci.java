package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;

public final class ci
{
  public static void a(af paramaf)
  {
    if (!(paramaf instanceof com.tencent.mm.ap.i))
      aa.e("MicroMsg.OldContactProc", "!(db instanceof SqliteDB)");
    Cursor localCursor1;
    do
    {
      return;
      if (cj.c((Integer)be.uz().sr().get(49)) == -1)
      {
        aa.w("MicroMsg.OldContactProc", "check old contact not exist");
        return;
      }
      if ((!com.tencent.mm.ap.i.b((com.tencent.mm.ap.i)paramaf, "contact")) || (!com.tencent.mm.ap.i.b((com.tencent.mm.ap.i)paramaf, "contact_ext")))
      {
        aa.w("MicroMsg.OldContactProc", "check old contact not exist");
        be.uz().sr().set(49, Integer.valueOf(-1));
        return;
      }
      localCursor1 = paramaf.rawQuery("select contact.contactID,contact.sex,contact.type,contact.showHead,contact.username,contact.nickname,contact.pyInitial,contact.quanPin,contact.reserved,contact_ext.username,contact_ext.Uin,contact_ext.Email,contact_ext.Mobile,contact_ext.ShowFlag,contact_ext.ConType,contact_ext.ConRemark,contact_ext.ConRemark_PYShort,contact_ext.ConRemark_PYFull,contact_ext.ConQQMBlog,contact_ext.ConSMBlog,contact_ext.DomainList,contact_ext.reserved1,contact_ext.reserved2,contact_ext.reserved3,contact_ext.reserved4,contact_ext.reserved5,contact_ext.reserved6,contact_ext.reserved7,contact_ext.reserved8,contact_ext.reserved9,contact_ext.reserved10 , contact_ext.weiboflag , contact_ext.weibonickname from contact left join contact_ext on contact.username = contact_ext.username ", null);
    }
    while (localCursor1 == null);
    int i = localCursor1.getCount();
    aa.d("MicroMsg.OldContactProc", "Read From Old Contact :" + i);
    if (i == cj.c((Integer)be.uz().sr().get(49)))
    {
      aa.w("MicroMsg.OldContactProc", "Copy has been finished count:" + i);
      localCursor1.close();
      return;
    }
    long l = ((com.tencent.mm.ap.i)paramaf).ca(Thread.currentThread().getId());
    int j = 0;
    if (j < i)
    {
      localCursor1.moveToPosition(j);
      com.tencent.mm.storage.i locali = new com.tencent.mm.storage.i();
      locali.bL(localCursor1.getInt(1));
      locali.setType(localCursor1.getInt(2));
      locali.bM(localCursor1.getInt(3));
      locali.setUsername(localCursor1.getString(4));
      locali.bt(localCursor1.getString(5));
      locali.bv(localCursor1.getString(6));
      locali.bw(localCursor1.getString(7));
      locali.bx(localCursor1.getString(8));
      locali.bQ(localCursor1.getInt(10));
      locali.bF(localCursor1.getString(11));
      locali.bG(localCursor1.getString(12));
      locali.bR(localCursor1.getInt(13));
      locali.bS(localCursor1.getInt(14));
      locali.bH(localCursor1.getString(15));
      locali.bI(localCursor1.getString(16));
      locali.bJ(localCursor1.getString(17));
      locali.bL(localCursor1.getString(18));
      locali.bK(localCursor1.getString(19));
      locali.bM(localCursor1.getString(20));
      locali.bT(localCursor1.getInt(21));
      locali.bU(localCursor1.getInt(22));
      locali.bN(localCursor1.getInt(23));
      locali.bz(localCursor1.getString(26));
      locali.bA(localCursor1.getString(27));
      locali.bB(localCursor1.getString(28));
      locali.setSource(localCursor1.getInt(25));
      locali.bV(localCursor1.getInt(24));
      locali.bN(localCursor1.getString(29));
      locali.bD(localCursor1.getString(30));
      locali.bP(localCursor1.getInt(31));
      locali.bE(localCursor1.getString(32));
      String str;
      Cursor localCursor2;
      int k;
      StringBuilder localStringBuilder;
      if (!cj.hX(locali.getUsername()))
      {
        str = k.tH(locali.getUsername());
        localCursor2 = paramaf.rawQuery("select username from " + str + " where username=" + com.tencent.mm.ap.i.bQ(locali.getUsername()), null);
        k = localCursor2.getCount();
        localStringBuilder = new StringBuilder("get Contact:").append(locali.getUsername()).append(" in rconnect:");
        if (k == 0)
          break label775;
      }
      label775: for (boolean bool = true; ; bool = false)
      {
        aa.d("MicroMsg.OldContactProc", bool);
        localCursor2.close();
        if (k == 0)
          paramaf.insert(str, "", locali.oa());
        j++;
        break;
      }
    }
    if (l != 0L)
      ((com.tencent.mm.ap.i)paramaf).cb(l);
    localCursor1.close();
    be.uz().sr().set(49, Integer.valueOf(i));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ci
 * JD-Core Version:    0.6.2
 */