package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.a.d;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

public final class e extends ao
  implements h
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS userinfo ( id INTEGER PRIMARY KEY, type INT, value TEXT )" };
  private af crf;
  private final d ggr = new d(100);

  public e(i parami)
  {
    this.crf = parami;
  }

  private static int ai(Object paramObject)
  {
    if ((paramObject instanceof Integer))
      return 1;
    if ((paramObject instanceof Long))
      return 2;
    if ((paramObject instanceof String))
      return 3;
    if ((paramObject instanceof Boolean))
      return 4;
    if ((paramObject instanceof Float))
      return 5;
    if ((paramObject instanceof Double))
      return 6;
    aa.e("MicroMsg.ConfigStorage", "unresolve failed, unknown type=" + paramObject.getClass().toString());
    return -1;
  }

  private static Object b(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default:
    case 3:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      paramString = null;
      return paramString;
      try
      {
        return Integer.valueOf(paramString);
        return Long.valueOf(paramString);
        return Boolean.valueOf(paramString);
        return Float.valueOf(paramString);
        Double localDouble = Double.valueOf(paramString);
        return localDouble;
      }
      catch (Exception localException)
      {
      }
    }
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final Object get(int paramInt)
  {
    return get(paramInt, null);
  }

  public final Object get(int paramInt, Object paramObject)
  {
    boolean bool1;
    f localf;
    if (this.crf != null)
    {
      bool1 = true;
      Assert.assertTrue("db is null", bool1);
      d locald = this.ggr;
      boolean bool2 = false;
      if (locald != null)
        bool2 = true;
      Assert.assertTrue("cachesConfig is null", bool2);
      localf = (f)this.ggr.get(Integer.valueOf(paramInt));
      if (localf == null)
        break label81;
      paramObject = b(localf.type, localf.cjM);
    }
    label81: 
    do
    {
      return paramObject;
      bool1 = false;
      break;
      Cursor localCursor = this.crf.a("userinfo", null, "id=" + paramInt, null, null, null);
      if (localCursor.getCount() > 0)
      {
        localCursor.moveToFirst();
        localf = new f();
        localf.type = localCursor.getInt(1);
        localf.cjM = localCursor.getString(2);
        this.ggr.f(Integer.valueOf(paramInt), localf);
      }
      localCursor.close();
    }
    while (localf == null);
    return b(localf.type, localf.cjM);
  }

  public final void set(int paramInt, Object paramObject)
  {
    boolean bool1 = true;
    boolean bool2;
    label26: Object localObject;
    if (this.crf != null)
    {
      bool2 = bool1;
      Assert.assertTrue("db is null", bool2);
      if (this.ggr == null)
        break label107;
      Assert.assertTrue("cachesConfig is null", bool1);
      localObject = get(paramInt, null);
      this.ggr.remove(Integer.valueOf(paramInt));
      if (paramObject != null)
        break label112;
      if (localObject != null)
      {
        this.crf.delete("userinfo", "id=" + paramInt, null);
        b(5, this, Integer.valueOf(paramInt));
      }
    }
    label107: label112: ContentValues localContentValues;
    int i;
    do
    {
      do
      {
        return;
        bool2 = false;
        break;
        bool1 = false;
        break label26;
      }
      while ((localObject != null) && (localObject.toString().equals(paramObject)) && (ai(localObject) == ai(paramObject)));
      localContentValues = new ContentValues();
      localContentValues.put("id", Integer.valueOf(paramInt));
      i = ai(paramObject);
    }
    while (i == -1);
    localContentValues.put("type", Integer.valueOf(i));
    localContentValues.put("value", paramObject.toString());
    this.crf.replace("userinfo", "id", localContentValues);
    b(4, this, Integer.valueOf(paramInt));
  }

  public final String zz()
  {
    return "userinfo";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.e
 * JD-Core Version:    0.6.2
 */