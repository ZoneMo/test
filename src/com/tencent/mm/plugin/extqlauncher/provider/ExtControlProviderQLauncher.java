package com.tencent.mm.plugin.extqlauncher.provider;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.ext.provider.ExtContentProviderBase;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;

public class ExtControlProviderQLauncher extends ExtContentProviderBase
{
  private static final UriMatcher dfB;
  private static final String[] dfC = { "retCode" };
  private static final String[] dgA = { "id", "count" };
  private Context context;
  private String dgB = "";
  private int dgC = -1;

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dfB = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.extqlauncher", "openQRCodeScan", 18);
    dfB.addURI("com.tencent.mm.plugin.extqlauncher", "batchAddShortcut", 19);
    dfB.addURI("com.tencent.mm.plugin.extqlauncher", "getUnreadCount", 20);
  }

  public ExtControlProviderQLauncher()
  {
  }

  public ExtControlProviderQLauncher(String paramString, int paramInt, Context paramContext)
  {
    this.dgB = paramString;
    this.dgC = paramInt;
    this.context = paramContext;
  }

  private Cursor o(String[] paramArrayOfString)
  {
    aa.d("MicroMsg.ExtControlProviderQLauncher", "getUnreadCount");
    if (this.context == null)
    {
      fT(4);
      return null;
    }
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.e("MicroMsg.ExtControlProviderQLauncher", "wrong args");
      fT(3);
      return null;
    }
    MatrixCursor localMatrixCursor = new MatrixCursor(dgA);
    for (int i = 0; ; i++)
    {
      try
      {
        if ((i >= paramArrayOfString.length) || (i >= 10))
          break label245;
        if (cj.hX(paramArrayOfString[i]))
          continue;
        if (paramArrayOfString[i].equals("0"))
        {
          Object[] arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = paramArrayOfString[i];
          com.tencent.mm.plugin.extqlauncher.b.Mw();
          arrayOfObject4[1] = Integer.valueOf(com.tencent.mm.plugin.extqlauncher.b.Mx());
          localMatrixCursor.addRow(arrayOfObject4);
        }
        else
        {
          n localn = be.uz().sx().tZ(paramArrayOfString[i]);
          if (localn != null)
          {
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = paramArrayOfString[i];
            arrayOfObject2[1] = Integer.valueOf(localn.rN());
            localMatrixCursor.addRow(arrayOfObject2);
          }
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getMessage();
        aa.b("MicroMsg.ExtControlProviderQLauncher", "exception in updateShortcut, %s", arrayOfObject1);
        fT(4);
        localMatrixCursor.close();
        return null;
      }
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = paramArrayOfString[i];
      arrayOfObject3[1] = Integer.valueOf(0);
      localMatrixCursor.addRow(arrayOfObject3);
      continue;
      label245: fT(0);
      return localMatrixCursor;
    }
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.d("MicroMsg.ExtControlProviderQLauncher", "query()");
    a(paramUri, this.context, this.dgC, this.dgB);
    if (paramUri == null)
    {
      fT(3);
      return null;
    }
    if ((cj.hX(Mp())) || (cj.hX(Mq())))
    {
      fT(3);
      return null;
    }
    if (!ID())
    {
      fT(1);
      return this.dft;
    }
    if (!ao(this.context))
    {
      aa.w("MicroMsg.ExtControlProviderQLauncher", "invalid appid ! return null");
      fT(2);
      return null;
    }
    switch (this.dgC)
    {
    case 19:
    default:
      fT(3);
      return null;
    case 18:
      aa.d("MicroMsg.ExtControlProviderQLauncher", "toScanQRCode");
      if (this.context == null)
      {
        fT(4);
        return null;
      }
      Intent localIntent = new Intent();
      localIntent.putExtra("BaseScanUI_select_scan_mode", 1);
      localIntent.putExtra("BaseScanUI_only_scan_qrcode_with_zbar", true);
      a.b(this.context, "scanner", ".ui.BaseScanUI", localIntent);
      MatrixCursor localMatrixCursor = new MatrixCursor(dfC);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      localMatrixCursor.addRow(arrayOfObject);
      fT(0);
      return localMatrixCursor;
    case 20:
    }
    return o(paramArrayOfString2);
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.provider.ExtControlProviderQLauncher
 * JD-Core Version:    0.6.2
 */