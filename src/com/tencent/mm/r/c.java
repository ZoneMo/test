package com.tencent.mm.r;

import android.database.Cursor;
import com.tencent.mm.model.aj;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;

public final class c extends aj
{
  public final boolean cn(int paramInt)
  {
    return (paramInt != 0) && (paramInt < 604176383);
  }

  public final String getTag()
  {
    return "MicroMsg.VerifyFlagDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.VerifyFlagDataTransfer", "the previous version is %d", arrayOfObject1);
    if (!cn(paramInt))
    {
      aa.w("MicroMsg.VerifyFlagDataTransfer", "do not need transfer");
      return;
    }
    long l = System.currentTimeMillis();
    if (cj.c((Integer)be.uz().sr().get(86017)) == 3)
    {
      aa.w("MicroMsg.VerifyFlagDataTransfer", "check old contact not exist");
      return;
    }
    be.uz().sp().aQ("rcontact", "update rcontact set verifyflag=0 where verifyflag is null;");
    Cursor localCursor = be.uz().su().a("@all.weixin.android", "", null, false);
    localCursor.moveToFirst();
    while (!localCursor.isAfterLast())
    {
      com.tencent.mm.storage.i locali = new com.tencent.mm.storage.i();
      locali.convertFrom(localCursor);
      be.uz().su().c(locali.getUsername(), locali);
      localCursor.moveToNext();
    }
    localCursor.close();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - l);
    aa.e("MicroMsg.VerifyFlagDataTransfer", "update verifyflag from the beginning to update finish use %d ms", arrayOfObject2);
    be.uz().sr().set(86017, Integer.valueOf(3));
    aa.d("MicroMsg.VerifyFlagDataTransfer", "update verifyflag use time " + (System.currentTimeMillis() - l) + " ms");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.c
 * JD-Core Version:    0.6.2
 */