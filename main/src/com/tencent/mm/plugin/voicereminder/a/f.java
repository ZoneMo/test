package com.tencent.mm.plugin.voicereminder.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.platformtools.n;
import com.tencent.mm.plugin.voicereminder.ui.RemindDialog;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.setting.SettingsRingtoneUI;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SuppressLint({"UseSparseArrays"})
public class f
  implements bb
{
  private static f eOY;
  private static HashMap eaQ;
  private com.tencent.mm.platformtools.o cAg;
  private final Set cbo = new HashSet();
  private String chB;
  private y eOX;
  private u eOZ;
  private List ePa = new ArrayList();
  private com.tencent.mm.sdk.b.g ePb = new h(this);
  private com.tencent.mm.sdk.b.g ePc = new i(this);

  static
  {
    HashMap localHashMap = new HashMap();
    eaQ = localHashMap;
    localHashMap.put(Integer.valueOf("VOICEREMIND_TABLE".hashCode()), new g());
  }

  private static f alh()
  {
    f localf = (f)be.uh().dN(f.class.getName());
    eOY = localf;
    if (localf == null)
    {
      eOY = new f();
      be.uh().a(f.class.getName(), eOY);
    }
    return eOY;
  }

  public static y ali()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (alh().eOX == null)
      alh().eOX = new y(alh().cAg);
    return alh().eOX;
  }

  public static u alj()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (alh().eOZ == null)
      alh().eOZ = new u();
    return alh().eOZ;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.ayH().a("VoiceReminderRemind", this.ePb);
    com.tencent.mm.sdk.b.a.ayH().a("VoiceReminderDeleteRecordMessage", this.ePc);
  }

  public final void a(j paramj)
  {
    aa.d("MicroMsg.SubCoreVoiceRemind", "addVoiceRemind ");
    if (paramj != null)
      this.cbo.add(paramj);
  }

  public final void b(j paramj)
  {
    aa.d("MicroMsg.SubCoreVoiceRemind", "removeVoiceRemind ");
    if (paramj != null)
      this.cbo.remove(paramj);
  }

  public final void bJ(int paramInt)
  {
  }

  public final boolean bl(long paramLong)
  {
    boolean bool = this.ePa.contains(Long.valueOf(paramLong));
    aa.d("MicroMsg.SubCoreVoiceRemind", "silent " + bool + "  mid " + paramLong);
    return bool;
  }

  public final void d(String paramString1, String paramString2, long paramLong)
  {
    Context localContext = al.getContext();
    if (localContext == null)
      aa.d("MicroMsg.SubCoreVoiceRemind", "notifyVoiceRemind context null");
    while (true)
    {
      return;
      try
      {
        SharedPreferences localSharedPreferences = localContext.getSharedPreferences(al.azs(), 0);
        boolean bool1 = localSharedPreferences.getBoolean("settings_shake", true);
        boolean bool2 = localSharedPreferences.getBoolean("settings_sound", true);
        aa.d("MicroMsg.SubCoreVoiceRemind", "shake " + bool1 + "sound " + bool2);
        if (w.cR(be.nQ().oL()))
          if (bool1)
            au.a(localContext, true);
        while ((this.cbo == null) || (this.cbo.size() == 0))
        {
          RemindDialog.j(localContext, paramString1, paramString2);
          return;
          if (bool1)
            au.a(localContext, true);
          if (bool2)
          {
            String str = localSharedPreferences.getString("settings.ringtone", SettingsRingtoneUI.hfS);
            if (str == SettingsRingtoneUI.hfS);
            MediaPlayer localMediaPlayer;
            Uri localUri;
            for (Object localObject = RingtoneManager.getDefaultUri(2); ; localObject = localUri)
            {
              while (true)
              {
                localMediaPlayer = new MediaPlayer();
                try
                {
                  localMediaPlayer.setDataSource(localContext, (Uri)localObject);
                  AudioManager localAudioManager = (AudioManager)localContext.getSystemService("audio");
                  if (localAudioManager.getStreamVolume(5) == 0)
                    break;
                  if (!localAudioManager.isWiredHeadsetOn())
                    break label368;
                  int i = localAudioManager.getStreamVolume(8);
                  j = localAudioManager.getStreamMaxVolume(8);
                  k = localAudioManager.getStreamVolume(5);
                  if (k <= j)
                    break label445;
                  localAudioManager.setStreamVolume(8, j, 0);
                  localMediaPlayer.setAudioStreamType(8);
                  localMediaPlayer.setLooping(true);
                  localMediaPlayer.prepare();
                  localMediaPlayer.setLooping(false);
                  localMediaPlayer.start();
                  localAudioManager.setStreamVolume(8, i, 0);
                  Object[] arrayOfObject = new Object[2];
                  arrayOfObject[0] = Integer.valueOf(i);
                  arrayOfObject[1] = Integer.valueOf(j);
                  aa.e("MicroMsg.SubCoreVoiceRemind", "oldVolume is %d, toneVolume is %d", arrayOfObject);
                }
                catch (Exception localException2)
                {
                }
              }
              break;
              localUri = Uri.parse(str);
            }
            label368: localMediaPlayer.setAudioStreamType(5);
            localMediaPlayer.setLooping(true);
            localMediaPlayer.prepare();
            localMediaPlayer.setLooping(false);
            localMediaPlayer.start();
          }
        }
        Iterator localIterator = this.cbo.iterator();
        while (localIterator.hasNext())
          ((j)localIterator.next()).e(paramString2, paramLong);
      }
      catch (Exception localException1)
      {
        while (true)
        {
          int k;
          continue;
          label445: int j = k;
        }
      }
    }
  }

  public final void p(String paramString1, String paramString2)
  {
    f localf = alh();
    if ((au.hX(paramString1)) || (au.hX(localf.chB)) || (!paramString1.equals(localf.chB)))
    {
      String str = paramString2 + "CommonOneMicroMsg.db";
      aa.d("MicroMsg.SubCoreVoiceRemind", "setVoiceRemindPath core on accPath : " + paramString1);
      localf.chB = paramString1;
      File localFile1 = new File(paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(paramString1 + "voiceremind/");
      if (!localFile2.exists())
        localFile2.mkdirs();
      localf.cAg = n.a(localf.hashCode(), str, eaQ);
      localf.eOX = new y(localf.cAg);
    }
  }

  public final void pk(String paramString)
  {
    be.uz().sx().ua(paramString);
    this.ePa.clear();
    Cursor localCursor = be.uz().sw().vf(paramString);
    localCursor.moveToFirst();
    while (!localCursor.isAfterLast())
    {
      ak localak = new ak();
      localak.convertFrom(localCursor);
      long l = localak.Bo();
      aa.d("MicroMsg.SubCoreVoiceRemind", "resetSilentQuene: msgId = " + l + " status = " + localak.getStatus());
      localCursor.moveToNext();
      this.ePa.add(Long.valueOf(l));
    }
    localCursor.close();
    be.uz().sw().vc(paramString);
  }

  public final void qy()
  {
    if (alh().eOZ != null)
      alh().eOZ.stop();
    if (eOY != null)
    {
      aa.d("MicroMsg.SubCoreVoiceRemind", "SubCoreVoiceRemind close db");
      f localf = eOY;
      if (localf.cAg != null)
      {
        localf.cAg.eN(localf.hashCode());
        localf.cAg = null;
      }
      localf.chB = "";
    }
    com.tencent.mm.sdk.b.a.ayH().b("VoiceReminderRemind", this.ePb);
    com.tencent.mm.sdk.b.a.ayH().b("VoiceReminderDeleteRecordMessage", this.ePc);
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.f
 * JD-Core Version:    0.6.2
 */