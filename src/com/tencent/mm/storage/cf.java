package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.e.am;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

public final class cf extends ah
{
  public static final String[] cjC = arrayOfString;
  private af crf;
  private final am gij = new cg(this);

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(ce.cfX, "Stranger");
  }

  public cf(af paramaf)
  {
    super(paramaf, ce.cfX, "Stranger", null);
    this.crf = paramaf;
  }

  private void b(ce paramce)
  {
    if (this.gij.ah(paramce))
      this.gij.Ei();
  }

  public final void a(ch paramch)
  {
    this.gij.a(paramch, null);
  }

  public final void b(ch paramch)
  {
    this.gij.remove(paramch);
  }

  public final boolean c(ce paramce)
  {
    boolean bool;
    if (paramce != null)
    {
      bool = true;
      Assert.assertTrue("stranger NULL !", bool);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramce.aAs();
      arrayOfObject[1] = paramce.ru();
      aa.e("MicroMsg.StrangerStorage", "replace : encryptUsername=%s, conRemark=%s", arrayOfObject);
      ContentValues localContentValues = paramce.oa();
      if (this.crf.replace("Stranger", "", localContentValues) <= 0L)
        break label80;
    }
    label80: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        break label86;
      return false;
      bool = false;
      break;
    }
    label86: b(paramce);
    return true;
  }

  public final ce vF(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    ce localce = new ce();
    Cursor localCursor = this.crf.a("Stranger", null, "encryptUsername = ?", new String[] { paramString }, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localce.convertFrom(localCursor);
    }
    localCursor.close();
    return localce;
  }

  public final int vG(String paramString)
  {
    int i = this.crf.delete("Stranger", "(encryptUsername=?)", new String[] { paramString });
    if (i > 0)
      Ei();
    aa.i("MicroMsg.StrangerStorage", "delByEncryptUsername:" + paramString + " result:" + i);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.cf
 * JD-Core Version:    0.6.2
 */