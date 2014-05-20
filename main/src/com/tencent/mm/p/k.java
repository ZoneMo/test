package com.tencent.mm.p;

import android.database.Cursor;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.List;

public final class k extends ah
{
  public static final String[] cjC = arrayOfString;
  private final am cnP = new l(this);

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(a.cfX, "bizinfo");
  }

  public k(af paramaf)
  {
    super(paramaf, a.cfX, "bizinfo", null);
  }

  public final void a(m paramm)
  {
    this.cnP.a(paramm, null);
  }

  public final boolean a(a parama)
  {
    parama.field_updateTime = System.currentTimeMillis();
    parama.xB();
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = parama.field_username;
    arrayOfObject[1] = parama.field_brandList;
    arrayOfObject[2] = Integer.valueOf(parama.field_brandFlag);
    arrayOfObject[3] = parama.field_brandInfo;
    arrayOfObject[4] = parama.field_extInfo;
    arrayOfObject[5] = parama.field_brandIconURL;
    arrayOfObject[6] = Long.valueOf(parama.field_updateTime);
    aa.f("MicroMsg.BizInfoStorage", "username is %s, %s, %d, %s, %s, %s, %d", arrayOfObject);
    boolean bool = super.b(parama);
    if ((bool) && (!w.cp(parama.field_username)))
    {
      o localo = new o();
      localo.cnW = parama.field_username;
      localo.cns = parama.xC();
      localo.cnV = n.cnR;
      localo.cnX = parama;
      this.cnP.ah(localo);
      this.cnP.Ei();
    }
    return bool;
  }

  public final void b(m paramm)
  {
    if (this.cnP != null)
      this.cnP.remove(paramm);
  }

  public final boolean b(a parama)
  {
    parama.field_updateTime = System.currentTimeMillis();
    parama.xB();
    boolean bool = super.a(parama);
    if ((bool) && (!w.cp(parama.field_username)))
    {
      o localo = new o();
      localo.cnW = parama.field_username;
      localo.cns = parama.xC();
      localo.cnV = n.cnT;
      localo.cnX = parama;
      this.cnP.ah(localo);
      this.cnP.Ei();
    }
    return bool;
  }

  public final List cT(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[6];
    arrayOfObject1[0] = "username";
    arrayOfObject1[1] = "bizinfo";
    arrayOfObject1[2] = "acceptType";
    arrayOfObject1[3] = Integer.valueOf(paramInt);
    arrayOfObject1[4] = "username";
    arrayOfObject1[5] = "%@%";
    String str = String.format("select %s from %s where %s & %d > 0 and %s not like '%s'", arrayOfObject1);
    aa.d("MicroMsg.BizInfoStorage", "getList: sql[%s]", new Object[] { str });
    long l = cj.FE();
    Cursor localCursor = rawQuery(str, new String[0]);
    LinkedList localLinkedList = new LinkedList();
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        localLinkedList.add(localCursor.getString(0));
        localCursor.moveToNext();
      }
      localCursor.close();
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = Integer.valueOf(paramInt);
      arrayOfObject3[1] = Long.valueOf(cj.O(l));
      aa.d("MicroMsg.BizInfoStorage", "getMyAcceptList: type[%d], use time[%d ms]", arrayOfObject3);
      return be.uz().su().av(localLinkedList);
    }
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(paramInt);
    arrayOfObject2[1] = Long.valueOf(cj.O(l));
    aa.d("MicroMsg.BizInfoStorage", "getMyAcceptList: cursor not null, type[%d], use time[%d ms]", arrayOfObject2);
    return localLinkedList;
  }

  public final long cU(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select updateTime from BizInfo where type = ").append(paramInt);
    localStringBuilder.append(" and status = 1 ORDER BY updateTime DESC");
    String str = localStringBuilder.toString();
    aa.e("MicroMsg.BizInfoStorage", "getLastNewBizUpdateTime, sql %s", new Object[] { str });
    Cursor localCursor = rawQuery(str, new String[0]);
    if (localCursor == null)
      return 0L;
    if (!localCursor.moveToFirst())
    {
      localCursor.close();
      return 0L;
    }
    long l = localCursor.getLong(0);
    localCursor.close();
    return l;
  }

  public final a eG(String paramString)
  {
    a locala = new a();
    locala.field_username = paramString;
    super.c(locala, new String[0]);
    return locala;
  }

  public final void eH(String paramString)
  {
    a locala = new a();
    locala.field_username = paramString;
    super.b(locala, new String[] { "username" });
    o localo = new o();
    localo.cnW = paramString;
    localo.cnV = n.cnS;
    localo.cnX = locala;
    this.cnP.ah(localo);
    this.cnP.Ei();
  }

  public final int xG()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "username";
    arrayOfObject[1] = "bizinfo";
    arrayOfObject[2] = "type";
    arrayOfObject[3] = Integer.valueOf(1);
    Cursor localCursor = rawQuery(String.format("select count(%s) from %s where %s = %d", arrayOfObject), new String[0]);
    int i = 0;
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.k
 * JD-Core Version:    0.6.2
 */