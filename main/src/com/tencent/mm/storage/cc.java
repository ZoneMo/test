package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class cc extends ai
  implements h
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS role_info ( id TEXT PRIMARY KEY, name TEXT, status INT, text_reserved1 TEXT, text_reserved2 TEXT, text_reserved3 TEXT, text_reserved4 TEXT, int_reserved1 INT, int_reserved2 INT, int_reserved3 INT, int_reserved4 INT )" };
  private af crf = null;

  public cc(i parami)
  {
    this.crf = parami;
  }

  private void a(ca paramca)
  {
    paramca.cL(135);
    ContentValues localContentValues = paramca.oa();
    if ((localContentValues.size() > 0) && (this.crf.insert("role_info", "id", localContentValues) != 0L))
      Ei();
  }

  private ca vC(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue(bool1);
      ca localca1 = new ca();
      Cursor localCursor = this.crf.a("role_info", null, "name= ?", new String[] { paramString }, null, null);
      boolean bool2 = localCursor.moveToFirst();
      ca localca2 = null;
      if (bool2)
      {
        localca1.convertFrom(localCursor);
        localca2 = localca1;
      }
      localCursor.close();
      return localca2;
    }
  }

  public final void M(String paramString, boolean paramBoolean)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.RoleStorage", "insert role info failed: empty user");
      return;
    }
    ca localca = vC(paramString);
    if (localca == null)
    {
      a(new ca(paramString, paramBoolean, 2));
      aa.d("MicroMsg.RoleStorage", "insert new role, user=" + paramString);
      return;
    }
    localca.cU(paramBoolean);
    localca.cL(4);
    b(localca);
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final List aDl()
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = this.crf.a("role_info", null, "int_reserved1=1", null, null, null);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        ca localca = new ca();
        localca.convertFrom(localCursor);
        localLinkedList.add(localca);
        localCursor.moveToNext();
      }
    }
    localCursor.close();
    return localLinkedList;
  }

  public final void an(String paramString, int paramInt)
  {
    if (cj.hX(paramString))
      aa.e("MicroMsg.RoleStorage", "insert role info failed: empty user");
    while (vC(paramString) != null)
      return;
    a(new ca(paramString, true, paramInt));
    aa.d("MicroMsg.RoleStorage", "insert new role, user=" + paramString);
  }

  public final void b(ca paramca)
  {
    ContentValues localContentValues = paramca.oa();
    if (localContentValues.size() > 0)
    {
      af localaf = this.crf;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramca.getName();
      int i = localaf.update("role_info", localContentValues, "name like ?", arrayOfString);
      aa.d("MicroMsg.RoleStorage", "update role info, name=" + paramca.getName() + ", res:" + i);
      if (i > 0)
        Ei();
    }
  }

  public final void b(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.RoleStorage", "insert role info failed: empty user");
      return;
    }
    ca localca = vC(paramString);
    if (localca == null)
    {
      a(new ca(paramString, paramBoolean1, 2));
      aa.d("MicroMsg.RoleStorage", "insert new role, user=" + paramString);
      return;
    }
    localca.cU(paramBoolean1);
    localca.cV(paramBoolean2);
    localca.cL(4);
    b(localca);
  }

  public final void eH(String paramString)
  {
    if (paramString.length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      int i = this.crf.delete("role_info", "name=?", new String[] { paramString });
      aa.d("MicroMsg.RoleStorage", "delete name name :" + paramString + ", res:" + i);
      if (i > 0)
        Ei();
      return;
    }
  }

  public final boolean has(String paramString)
  {
    ca localca = vB(new cb(paramString).vA(""));
    return (localca != null) && (paramString.equals(localca.getName()));
  }

  public final ca vB(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    ca localca1 = new ca();
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("%" + paramString);
    Cursor localCursor = localaf.a("role_info", null, "name LIKE ?", arrayOfString, null, null);
    boolean bool = localCursor.moveToFirst();
    ca localca2 = null;
    if (bool)
    {
      localca1.convertFrom(localCursor);
      localca2 = localca1;
    }
    localCursor.close();
    return localca2;
  }

  public final String zz()
  {
    return "role_info";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.cc
 * JD-Core Version:    0.6.2
 */