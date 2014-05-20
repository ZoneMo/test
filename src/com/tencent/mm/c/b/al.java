package com.tencent.mm.c.b;

import com.tencent.mm.ap.i;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import junit.framework.Assert;

public final class al extends i
{
  private static al bZc = null;
  private static HashMap bZd;

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("FavItemInfo".hashCode()), new am());
    bZd.put(Integer.valueOf("FavSearchInfo".hashCode()), new an());
    bZd.put(Integer.valueOf("FavCdnInfo".hashCode()), new ao());
  }

  private al()
  {
    long l = System.currentTimeMillis();
    if (be.uz().sd() != 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      String str1 = be.uz().sW() + "enFavorite.db";
      aa.e("MicroMsg.FavoriteDataBase", "db path", new Object[] { str1 });
      if (a("", str1, be.uz().sd(), s.pU(), bZd, true))
        break;
      throw new a((byte)0);
    }
    String str2 = aDA();
    if (!cj.hX(str2))
    {
      aa.e("MicroMsg.FavoriteDataBase", "dbinit failed :" + str2);
      at.azE().aN("init db Favorite Failed: [ " + str2 + "]", "DBinit");
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(System.currentTimeMillis() - l);
    aa.e("MicroMsg.FavoriteDataBase", "init db Favorite time:%d", arrayOfObject);
  }

  public static al od()
  {
    if (bZc == null)
      bZc = new al();
    return bZc;
  }

  public final void aI(String paramString)
  {
    super.aI(paramString);
    bZc = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.c.b.al
 * JD-Core Version:    0.6.2
 */