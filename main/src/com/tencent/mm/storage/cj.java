package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;

public final class cj extends ah
  implements h
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(ci.cfX, "VoiceTransText");
  }

  public cj(af paramaf)
  {
    this(paramaf, ci.cfX, "VoiceTransText");
  }

  private cj(af paramaf, ae paramae, String paramString)
  {
    super(paramaf, paramae, paramString, null);
    this.crf = paramaf;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final boolean a(ci paramci)
  {
    if (paramci == null);
    ContentValues localContentValues;
    do
    {
      return false;
      localContentValues = paramci.oa();
    }
    while (this.crf.replace("VoiceTransText", "msgId", localContentValues) < 0L);
    return true;
  }

  public final ci bZ(long paramLong)
  {
    if (paramLong < 0L)
      return null;
    ci localci = new ci();
    af localaf = this.crf;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    Cursor localCursor = localaf.a("VoiceTransText", null, "msgId=?", arrayOfString, null, null);
    if (localCursor.getCount() > 0)
    {
      localCursor.moveToFirst();
      localci.convertFrom(localCursor);
    }
    localCursor.close();
    return localci;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.cj
 * JD-Core Version:    0.6.2
 */