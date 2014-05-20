package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;

public final class ag extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private com.tencent.mm.sdk.e.af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(af.cfX, "EmotionDetail");
  }

  public ag(com.tencent.mm.sdk.e.af paramaf)
  {
    super(paramaf, af.cfX, "EmotionDetail", null);
    this.crf = paramaf;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final boolean b(af paramaf)
  {
    aa.d("MicroMsg.emotion.EmotionDetailInfoStorage", "[saveOrUpdate]");
    if (paramaf == null)
      aa.i("MicroMsg.emotion.EmotionDetailInfoStorage", "[insert] failed. item is null.");
    long l;
    do
    {
      return false;
      ContentValues localContentValues = paramaf.oa();
      l = this.crf.replace("EmotionDetail", "productID", localContentValues);
      if (l != -1L)
        th(paramaf.field_productID);
    }
    while (l < 0L);
    return true;
  }

  public final af uJ(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    Cursor localCursor = this.crf.a("EmotionDetail", null, "productID=?", new String[] { paramString }, null, null);
    int i = localCursor.getCount();
    af localaf = null;
    if (i > 0)
    {
      localCursor.moveToFirst();
      localaf = new af();
      localaf.convertFrom(localCursor);
    }
    localCursor.close();
    return localaf;
  }

  public final String zz()
  {
    return "EmotionDetail";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ag
 * JD-Core Version:    0.6.2
 */