package com.tencent.mm.plugin.scanner.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class i extends ah
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(n.cfX, "Product");
  }

  public i(af paramaf)
  {
    super(paramaf, n.cfX, "Product", null);
    this.crf = paramaf;
  }

  public final int a(String paramString, n paramn)
  {
    if ((cj.hX(paramString)) || (paramn == null) || (cj.hX(paramn.field_productid)))
    {
      aa.w("MicroMsg.scanner.ProductStorage", "wrong argument");
      return 0;
    }
    ContentValues localContentValues = paramn.oa();
    if (localContentValues.size() > 0);
    for (int i = this.crf.update("Product", localContentValues, "productid=?", new String[] { paramString }); ; i = 0)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramn.field_productid;
      arrayOfObject[1] = Integer.valueOf(i);
      aa.e("MicroMsg.scanner.ProductStorage", "update: id=%s, ret=%s ", arrayOfObject);
      return i;
    }
  }

  public final boolean a(n paramn)
  {
    if ((paramn == null) || (cj.hX(paramn.field_productid)))
    {
      aa.w("MicroMsg.scanner.ProductStorage", "wrong argument");
      return false;
    }
    ContentValues localContentValues = paramn.oa();
    if (this.crf.replace("Product", n.cfX.gfz, localContentValues) > 0L);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramn.field_productid;
      arrayOfObject[1] = Boolean.valueOf(bool);
      aa.e("MicroMsg.scanner.ProductStorage", "replace: id=%s, ret=%s ", arrayOfObject);
      return bool;
    }
  }

  public final n mn(String paramString)
  {
    n localn = null;
    if (cj.hX(paramString))
      aa.e("MicroMsg.scanner.ProductStorage", "null id");
    Map localMap;
    do
    {
      do
      {
        return localn;
        String str = "select * from Product  where productid='" + paramString + "'";
        Cursor localCursor = this.crf.rawQuery(str, null);
        int i = localCursor.getCount();
        localn = null;
        if (i != 0)
        {
          localn = new n();
          localCursor.moveToFirst();
          localn.convertFrom(localCursor);
        }
        localCursor.close();
      }
      while ((localn == null) || (localn.field_xml == null));
      localMap = u.aL(localn.field_xml, "product");
    }
    while (localMap == null);
    localn.egv = a.d(localMap, ".product");
    return localn;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.i
 * JD-Core Version:    0.6.2
 */