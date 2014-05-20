package com.tencent.mm.plugin.base.stub;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.aa;

public class MMPluginProvider extends ContentProvider
{
  private static final UriMatcher cNZ;
  private d cNY = new d();

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    cNZ = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.sdk.plugin.provider", "sharedpref", 2);
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    aa.v("MicroMsg.MMPluginProvider", "plugin delete" + paramUri);
    switch (cNZ.match(paramUri))
    {
    default:
      aa.e("MicroMsg.MMPluginProvider", "Unknown URI " + paramUri);
      return 0;
    case 2:
    }
    return d.Iu();
  }

  public String getType(Uri paramUri)
  {
    switch (cNZ.match(paramUri))
    {
    case 2:
    }
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    aa.v("MicroMsg.MMPluginProvider", "plugin insert" + paramUri);
    switch (cNZ.match(paramUri))
    {
    default:
      aa.e("MicroMsg.MMPluginProvider", "Unknown URI " + paramUri);
      return null;
    case 2:
    }
    return d.It();
  }

  public boolean onCreate()
  {
    this.cNY.ak(getContext());
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.v("MicroMsg.MMPluginProvider", "plugin query" + paramUri);
    switch (cNZ.match(paramUri))
    {
    default:
      aa.e("MicroMsg.MMPluginProvider", "Unknown URI " + paramUri);
      return null;
    case 2:
    }
    return d.a(paramArrayOfString1, paramArrayOfString2);
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    aa.d("MicroMsg.MMPluginProvider", "plugin update" + paramUri);
    switch (cNZ.match(paramUri))
    {
    default:
      aa.e("MicroMsg.MMPluginProvider", "Unknown URI " + paramUri);
      return 0;
    case 2:
    }
    return d.Iv();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.MMPluginProvider
 * JD-Core Version:    0.6.2
 */