package com.tencent.mm.platformtools;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.setting.SettingsRingtoneUI;

public final class af
{
  public static Notification a(Context paramContext, int paramInt1, int paramInt2, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4, Bitmap paramBitmap, PendingIntent paramPendingIntent)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      new ad();
      Notification.Builder localBuilder = new Notification.Builder(paramContext);
      localBuilder.setLights(-16711936, 300, 1000).setSmallIcon(paramInt1).setTicker(paramString2).setContentTitle(paramString3).setContentText(paramString4).setContentIntent(paramPendingIntent);
      if (paramBoolean)
        paramInt2 &= -2;
      while (true)
      {
        aa.d("MiroMsg.NotificationUtil", "defaults flag " + paramInt2);
        localBuilder.setDefaults(paramInt2);
        if (paramBitmap != null)
          localBuilder.setLargeIcon(paramBitmap);
        return localBuilder.getNotification();
        if (((paramInt2 & 0x1) != 0) && (paramString1 != null))
        {
          paramInt2 &= -2;
          localBuilder.setSound(Uri.parse(paramString1));
        }
      }
    }
    new ae();
    Notification localNotification = new Notification();
    localNotification.ledARGB = -16711936;
    localNotification.ledOnMS = 300;
    localNotification.ledOffMS = 1000;
    localNotification.flags = (0x1 | localNotification.flags);
    localNotification.icon = paramInt1;
    localNotification.tickerText = paramString2;
    aa.d("MiroMsg.NotificationUtil", "defaults flag " + paramInt2);
    if (paramBoolean)
      paramInt2 &= -2;
    while (true)
    {
      localNotification.defaults = paramInt2;
      localNotification.setLatestEventInfo(paramContext, paramString3, paramString4, paramPendingIntent);
      return localNotification;
      if (((paramInt2 & 0x1) != 0) && (paramString1 != SettingsRingtoneUI.hfS))
      {
        paramInt2 &= -2;
        localNotification.sound = Uri.parse(paramString1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.af
 * JD-Core Version:    0.6.2
 */