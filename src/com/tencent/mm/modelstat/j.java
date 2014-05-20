package com.tencent.mm.modelstat;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.g;
import com.tencent.mm.ap.h;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

public final class j extends ai
  implements h
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS netstat ( id INTEGER PRIMARY KEY, peroid INT, textCountIn INT, textBytesIn INT, imageCountIn INT, imageBytesIn INT, voiceCountIn INT, voiceBytesIn INT, videoCountIn INT, videoBytesIn INT, mobileBytesIn INT, wifiBytesIn INT, sysMobileBytesIn INT, sysWifiBytesIn INT, textCountOut INT, textBytesOut INT, imageCountOut INT, imageBytesOut INT, voiceCountOut INT, voiceBytesOut INT, videoCountOut INT, videoBytesOut INT, mobileBytesOut INT, wifiBytesOut INT, sysMobileBytesOut INT, sysWifiBytesOut INT, reserved1 INT, reserved2 INT, reserved3 TEXT )", "CREATE INDEX IF NOT EXISTS  statInfoIndex ON netstat ( peroid ) " };
  private af crf = null;

  public j(i parami)
  {
    this.crf = parami;
  }

  private long b(f paramf)
  {
    Assert.assertNotNull(paramf);
    if (paramf.CP() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      ContentValues localContentValues = paramf.oa();
      if (localContentValues.size() <= 0)
        break;
      return this.crf.insert("netstat", "id", localContentValues);
    }
    return -1L;
  }

  public final void CY()
  {
    int i = (int)(cj.FF() / 86400000L);
    if (el(i) != null)
      return;
    f localf = new f();
    localf.dU(i);
    b(localf);
  }

  public final long CZ()
  {
    int i = (int)(cj.FF() / 86400000L);
    Cursor localCursor = this.crf.rawQuery("SELECT peroid FROM netstat  WHERE peroid <  ( SELECT MAX ( peroid ) FROM netstat)", null);
    if (localCursor.moveToFirst())
      i = localCursor.getInt(localCursor.getColumnIndex("peroid"));
    localCursor.close();
    return 86400000L * i;
  }

  public final int a(g paramg)
  {
    if (paramg != null)
      this.crf = paramg;
    return 0;
  }

  public final void c(f paramf)
  {
    Assert.assertNotNull(paramf);
    if (paramf.CP() <= 0)
      paramf.dU((int)(cj.FD() / 86400000L));
    if (paramf.CP() <= 0);
    int i;
    ContentValues localContentValues;
    do
    {
      return;
      f localf = el(paramf.CP());
      if ((localf == null) || (paramf.CP() != localf.CP()))
        break;
      localf.a(paramf);
      aa.v("MicroMsg.NetStatStorage", "update append " + localf);
      i = paramf.CP();
      localContentValues = localf.oa();
    }
    while (localContentValues.size() <= 0);
    this.crf.update("netstat", localContentValues, "peroid=" + i, null);
    return;
    paramf.cL(0x2 | paramf.vU());
    aa.v("MicroMsg.NetStatStorage", "insert append " + paramf);
    b(paramf);
  }

  public final f el(int paramInt)
  {
    Cursor localCursor = this.crf.a("netstat", null, "peroid = " + paramInt, null, null, null);
    boolean bool = localCursor.moveToFirst();
    f localf = null;
    if (bool)
    {
      localf = new f();
      localf.convertFrom(localCursor);
    }
    localCursor.close();
    return localf;
  }

  public final void em(int paramInt)
  {
    this.crf.delete("netstat", null, null);
    f localf = new f();
    localf.dU(paramInt);
    b(localf);
  }

  public final f en(int paramInt)
  {
    String str = "SELECT MAX( id), MAX( peroid), SUM( textCountIn), SUM( textBytesIn), SUM( imageCountIn), SUM( imageBytesIn), SUM( voiceCountIn), SUM( voiceBytesIn), SUM( videoCountIn), SUM( videoBytesIn), SUM( mobileBytesIn), SUM( wifiBytesIn), SUM( sysMobileBytesIn), SUM( sysWifiBytesIn), SUM( textCountOut), SUM( textBytesOut), SUM( imageCountOut), SUM( imageBytesOut), SUM( voiceCountOut), SUM( voiceBytesOut), SUM( videoCountOut), SUM( videoBytesOut), SUM( mobileBytesOut), SUM( wifiBytesOut), SUM( sysMobileBytesOut), SUM( sysWifiBytesOut ) FROM netstat WHERE peroid >= " + paramInt;
    Cursor localCursor = this.crf.rawQuery(str, null);
    boolean bool = localCursor.moveToFirst();
    f localf = null;
    if (bool)
    {
      localf = new f();
      localf.convertFrom(localCursor);
    }
    localCursor.close();
    return localf;
  }

  public final String zz()
  {
    return "netstat";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelstat.j
 * JD-Core Version:    0.6.2
 */