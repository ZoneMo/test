package com.tencent.tmassistantsdk.openSDK.QQDownloader;

import android.net.Uri;
import android.provider.BaseColumns;

public final class AssistantStore$DownloadInfos
  implements BaseColumns
{
  public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.android.qqdownloader.provider/downloadsinfo?notify=true");
  public static final Uri CONTENT_URI_NO_NOTIFICATION = Uri.parse("content://com.tencent.android.qqdownloader.provider/downloadsinfo?notify=false");

  public static Uri getContentUri(String paramString)
  {
    return Uri.parse("content://com.tencent.android.qqdownloader.provider/downloadsinfo/" + paramString + "?notify=true");
  }

  public static Uri getContentUri(String paramString, boolean paramBoolean)
  {
    return Uri.parse("content://com.tencent.android.qqdownloader.provider/downloadsinfo/" + paramString + "?notify=" + paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloader.AssistantStore.DownloadInfos
 * JD-Core Version:    0.6.2
 */