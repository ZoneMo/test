package com.tencent.mm.ap;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.cm;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import junit.framework.Assert;

public final class g
  implements af
{
  private static String gjy = "";
  private boolean fhM = false;
  Queue gjA = new LinkedList();
  private f gjm = null;
  private i gjx = null;
  Map gjz = new HashMap();

  public g(i parami)
  {
    this.gjx = parami;
    if (!cj.hX(parami.getKey()))
      this.gjm = f.vL(null);
  }

  public static void aDz()
  {
  }

  private int vM(String paramString)
  {
    if ((this.gjx == null) || (this.gjx.inTransaction()))
      return -3;
    String str;
    do
      try
      {
        if (f.a(this.gjm, paramString))
          this.gjm.execSQL("drop table " + paramString);
        Cursor localCursor = this.gjx.rawQuery(" select sql from sqlite_master where tbl_name=\"" + paramString + "\" and type = \"table\"", null);
        str = null;
        if (localCursor != null)
        {
          int i = localCursor.getCount();
          str = null;
          if (i == 1)
          {
            localCursor.moveToFirst();
            str = localCursor.getString(0);
          }
          localCursor.close();
          continue;
          this.gjm.execSQL(str);
          this.gjm.execSQL("insert into " + paramString + " select * from old." + paramString);
          aa.e("MicroMsg.MemoryStorage", "copy table %s success", new Object[] { paramString });
          return 0;
        }
      }
      catch (Exception localException)
      {
        return -2;
      }
    while (str != null);
    return -1;
  }

  public final Cursor K(String paramString, boolean paramBoolean)
  {
    return null;
  }

  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4)
  {
    if ((this.gjm != null) && (this.gjm.isOpen()))
      return this.gjm.a(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close query [%s] [%s]", arrayOfObject);
    return c.aDv();
  }

  public final boolean aDx()
  {
    boolean bool1;
    if (this.gjm != null)
    {
      boolean bool2 = this.gjm.isOpen();
      bool1 = false;
      if (bool2);
    }
    else
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = gjy;
      aa.b("MicroMsg.MemoryStorage", "memory db is close [%s]", arrayOfObject);
      bool1 = true;
    }
    return bool1;
  }

  public final void aDy()
  {
    Iterator localIterator = this.gjz.keySet().iterator();
    while (localIterator.hasNext())
      ((l)this.gjz.get(localIterator.next())).aDC();
  }

  public final boolean aQ(String paramString1, String paramString2)
  {
    Assert.assertTrue("Not Attach Mem Storage:" + paramString1, this.gjz.containsKey(paramString1));
    boolean bool1;
    if ((this.gjm != null) && (this.gjm.isOpen()))
    {
      ((l)this.gjz.get(paramString1)).vP(paramString2);
      this.gjm.execSQL(paramString2);
      bool1 = true;
    }
    boolean bool2;
    do
    {
      i locali;
      do
      {
        return bool1;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString1;
        arrayOfObject[1] = gjy;
        aa.c("MicroMsg.MemoryStorage", "memoryDB already close execSQL [%s] [%s]", arrayOfObject);
        locali = this.gjx;
        bool1 = false;
      }
      while (locali == null);
      bool2 = this.gjx.isOpen();
      bool1 = false;
    }
    while (!bool2);
    this.gjx.aQ(paramString2, paramString1);
    return true;
  }

  public final boolean b(h paramh)
  {
    Object[] arrayOfObject1 = new Object[2];
    if (paramh == null);
    for (String str1 = "stg_null"; ; str1 = paramh.zz())
    {
      arrayOfObject1[0] = str1;
      arrayOfObject1[1] = Integer.valueOf(this.gjA.size());
      aa.d("MicroMsg.MemoryStorage", "attachTable begin stg:%s size:%d", arrayOfObject1);
      if (this.gjm != null)
        break;
      aa.e("MicroMsg.MemoryStorage", "attachTable db is null");
      return false;
    }
    if (paramh != null)
      this.gjA.add(paramh);
    h localh;
    if (this.gjx.inTransaction())
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(this.gjA.size());
      aa.c("MicroMsg.MemoryStorage", "attachTable is in transcation ,give up attach table size:%d", arrayOfObject5);
      return false;
      localh = (h)this.gjA.peek();
      if (localh != null)
        break label207;
      this.gjA.poll();
    }
    while (true)
    {
      if (this.gjA.size() <= 0)
        break label608;
      if (!this.gjx.inTransaction())
        break;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.gjA.size());
      aa.c("MicroMsg.MemoryStorage", "attachTable is in transcation , break attach table size:%d", arrayOfObject2);
      return false;
      label207: String str2 = localh.zz();
      if (cj.hX(str2))
      {
        aa.b("MicroMsg.MemoryStorage", "attachTable Error table Name :%s", new Object[] { str2 });
        this.gjA.poll();
      }
      else if (f.a(this.gjm, str2))
      {
        aa.b("MicroMsg.MemoryStorage", "attachTable Error Attach table twice :%s", new Object[] { str2 });
        this.gjA.poll();
      }
      else
      {
        if (vM(str2) != 0)
          try
          {
            if (this.fhM)
            {
              this.gjm.execSQL("DETACH DATABASE old");
              this.fhM = false;
            }
            if (cj.hX(this.gjx.getKey()))
              this.gjm.execSQL("ATTACH DATABASE '" + this.gjx.getPath() + "' AS old ");
            while (true)
            {
              this.fhM = true;
              if (vM(str2) == 0)
                break;
              aa.e("MicroMsg.MemoryStorage", "copy table failed :" + str2);
              return false;
              this.gjm.execSQL("ATTACH DATABASE '" + this.gjx.getPath() + "' AS old KEY '" + this.gjx.getKey() + "'");
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              this.fhM = false;
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = localException.getMessage();
              aa.b("MicroMsg.MemoryStorage", "ERROR : attach disk db [%s] , will do again !", arrayOfObject4);
            }
          }
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = str2;
        arrayOfObject3[1] = Integer.valueOf(this.gjA.size());
        arrayOfObject3[2] = Integer.valueOf(this.gjz.size());
        aa.d("MicroMsg.MemoryStorage", "attachTable %s succ , waitsize:%d finsize:%d", arrayOfObject3);
        l locall = new l(this.gjx, str2);
        this.gjz.put(str2, locall);
        localh.a(this);
        this.gjA.poll();
      }
    }
    label608: return true;
  }

  public final int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    Assert.assertTrue("Not Attach Mem Storage:" + paramString1, this.gjz.containsKey(paramString1));
    if ((this.gjm != null) && (this.gjm.isOpen()))
    {
      ((l)this.gjz.get(paramString1)).c(paramString2, paramArrayOfString);
      return this.gjm.delete(paramString1, paramString2, paramArrayOfString);
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close delete [%s] [%s]", arrayOfObject);
    if ((this.gjx != null) && (this.gjx.isOpen()))
      return this.gjx.delete(paramString1, paramString2, paramArrayOfString);
    return -1;
  }

  public final long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    Assert.assertTrue("Not Attach Mem Storage:" + paramString1, this.gjz.containsKey(paramString1));
    if ((this.gjm != null) && (this.gjm.isOpen()))
    {
      ((l)this.gjz.get(paramString1)).a(paramString2, paramContentValues);
      return this.gjm.insert(paramString1, paramString2, paramContentValues);
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close insert [%s] [%s]", arrayOfObject);
    if ((this.gjx != null) && (this.gjx.isOpen()))
      return this.gjx.insert(paramString1, paramString2, paramContentValues);
    return -1L;
  }

  public final Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    if ((this.gjm != null) && (this.gjm.isOpen()))
      return this.gjm.rawQuery(paramString, paramArrayOfString);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close rawQuery [%s] [%s]", arrayOfObject);
    return c.aDv();
  }

  public final long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    Assert.assertTrue("Not Attach Mem Storage:" + paramString1, this.gjz.containsKey(paramString1));
    if ((this.gjm != null) && (this.gjm.isOpen()))
    {
      ((l)this.gjz.get(paramString1)).b(paramString2, paramContentValues);
      return this.gjm.replace(paramString1, paramString2, paramContentValues);
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close replace [%s] [%s]", arrayOfObject);
    if ((this.gjx != null) && (this.gjx.isOpen()))
      return this.gjx.replace(paramString1, paramString2, paramContentValues);
    return -1L;
  }

  public final void sh()
  {
    gjy = cj.azV().toString();
    if (this.gjm != null)
    {
      this.gjm.close();
      this.gjm = null;
    }
  }

  public final void tc()
  {
    if (this.gjA.size() > 0)
      b(null);
  }

  public final int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    Assert.assertTrue("Not Attach Mem Storage:" + paramString1, this.gjz.containsKey(paramString1));
    if ((this.gjm != null) && (this.gjm.isOpen()))
    {
      ((l)this.gjz.get(paramString1)).a(paramContentValues, paramString2, paramArrayOfString);
      return this.gjm.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = gjy;
    aa.c("MicroMsg.MemoryStorage", "memoryDB already close update [%s] [%s]", arrayOfObject);
    if ((this.gjx != null) && (this.gjx.isOpen()))
      return this.gjx.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    return -1;
  }

  public final boolean vN(String paramString)
  {
    if (cj.hX(paramString))
      return false;
    l locall = (l)this.gjz.get(paramString);
    if (locall == null)
      return false;
    locall.aDC();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.g
 * JD-Core Version:    0.6.2
 */