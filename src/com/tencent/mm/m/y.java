package com.tencent.mm.m;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.a.d;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

public final class y extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS img_flag ( username VARCHAR(40) PRIMARY KEY , imgflag int , lastupdatetime int , reserved1 text ,reserved2 text ,reserved3 int ,reserved4 int )" };
  private i cjB;
  private final d clg = new d(800);

  public y(i parami)
  {
    this.cjB = parami;
  }

  public final boolean a(x paramx)
  {
    if (eq(paramx.getUsername()) == null)
    {
      this.clg.f(paramx.getUsername(), paramx);
      if ((paramx != null) && (paramx.getUsername() != null));
      for (boolean bool2 = true; ; bool2 = false)
      {
        Assert.assertTrue(bool2);
        paramx.cM((int)(System.currentTimeMillis() / 1000L));
        paramx.vY();
        paramx.cL(-1);
        ContentValues localContentValues2 = paramx.vT();
        if ((int)this.cjB.insert("img_flag", "username", localContentValues2) < 0)
          break;
        return true;
      }
      return false;
    }
    this.clg.remove(paramx.getUsername());
    if ((paramx != null) && (paramx.getUsername() != null));
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue(bool1);
      paramx.cM((int)(System.currentTimeMillis() / 1000L));
      paramx.cL(0x4 | paramx.vU());
      ContentValues localContentValues1 = paramx.vT();
      i locali = this.cjB;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramx.getUsername();
      if (locali.update("img_flag", localContentValues1, "username=?", arrayOfString) > 0)
        break;
      return false;
    }
  }

  public final x eq(String paramString)
  {
    x localx1 = (x)this.clg.get(paramString);
    if ((localx1 != null) && (localx1.getUsername().equals(paramString)))
      return localx1;
    String str = "select img_flag.username,img_flag.imgflag,img_flag.lastupdatetime,img_flag.reserved1,img_flag.reserved2,img_flag.reserved3,img_flag.reserved4 from img_flag where img_flag.username=\"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    x localx2;
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localx2 = new x();
      localx2.convertFrom(localCursor);
    }
    while (true)
    {
      localCursor.close();
      this.clg.f(paramString, localx2);
      return localx2;
      localx2 = null;
    }
  }

  public final void er(String paramString)
  {
    if (cj.hX(paramString))
      return;
    this.clg.remove(paramString);
    this.cjB.delete("img_flag", "username=?", new String[] { paramString });
  }

  public final boolean i(List paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      return false;
    long l = this.cjB.ca(Thread.currentThread().getId());
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        a((x)paramList.get(i));
        i++;
      }
      bool = true;
      this.cjB.cb(l);
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicroMsg.ImgFlagStorage", localException.getMessage());
        boolean bool = false;
      }
    }
  }

  public final void wa()
  {
    this.clg.clear();
  }

  public final List wb()
  {
    Cursor localCursor = this.cjB.rawQuery("select username from img_flag where username not in (select username from rcontact ) and username not like \"%@qqim\" and username not like \"%@bottle\";", null);
    int i = localCursor.getCount();
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    localCursor.moveToFirst();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      localArrayList.add(localCursor.getString(0));
    }
    localCursor.close();
    return localArrayList;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.y
 * JD-Core Version:    0.6.2
 */