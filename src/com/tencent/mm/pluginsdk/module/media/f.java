package com.tencent.mm.pluginsdk.module.media;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.a.or;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXMusicObject;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import java.io.File;

public final class f
{
  private String dsd;
  private String fiX;
  private or fjA;
  private MMActivity fjB;
  private String fjC;
  private e fjD;

  public f(or paramor, MMActivity paramMMActivity, String paramString1, String paramString2, String paramString3, e parame)
  {
    this.fjA = paramor;
    this.fjB = paramMMActivity;
    this.fjC = paramString1;
    this.fjD = parame;
    this.dsd = paramString2;
    this.fiX = paramString3;
  }

  private WXMediaMessage aqF()
  {
    if (this.fjA == null)
      return null;
    WXMusicObject localWXMusicObject = new WXMusicObject();
    localWXMusicObject.musicUrl = this.fjA.fQc;
    localWXMusicObject.musicDataUrl = this.fjA.fQa;
    localWXMusicObject.musicLowBandUrl = this.fjA.fQb;
    localWXMusicObject.musicLowBandDataUrl = this.fjA.fQb;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.mediaObject = localWXMusicObject;
    localWXMediaMessage.title = this.fjA.fPW;
    localWXMediaMessage.description = this.fjA.fPX;
    String str;
    File localFile;
    if (this.fiX == null)
    {
      str = this.fjA.fQe;
      localFile = new File(str);
      if (!localFile.exists())
        break label178;
    }
    label178: for (Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.su(localFile.getAbsolutePath()); ; localBitmap = null)
    {
      if (localBitmap == null)
        localBitmap = BitmapFactory.decodeResource(this.fjB.getResources(), com.tencent.mm.h.abH);
      localWXMediaMessage.thumbData = cj.n(localBitmap);
      return localWXMediaMessage;
      str = this.fiX;
      break;
    }
  }

  public final void a(or paramor, String paramString1, String paramString2, String paramString3)
  {
    this.fjA = paramor;
    this.fjC = paramString1;
    this.dsd = paramString2;
    this.fiX = paramString3;
  }

  public final boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((this.fjD == null) || (this.fjB == null) || (this.fjC == null))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = this.fjD;
      arrayOfObject1[1] = this.fjB;
      arrayOfObject1[2] = this.fjC;
      aa.b("MicroMsg.MusicBarComponent", "error on ActivityResult im:%s, ac:%s, orName:%s", arrayOfObject1);
      return true;
    }
    if ((-1 == paramInt2) && (paramInt1 == 0))
    {
      if (paramIntent != null)
      {
        String str = paramIntent.getStringExtra("Select_Conv_User");
        WXMediaMessage localWXMediaMessage = aqF();
        if (localWXMediaMessage != null)
        {
          this.fjD.a(this.fjB, this.dsd, localWXMediaMessage, str, this.fjC);
          aa.d("MicroMsg.MusicBarComponent", "succeed to share to friend:%s", new Object[] { str });
        }
      }
      while (true)
      {
        return false;
        aa.e("MicroMsg.MusicBarComponent", "error on ActivityResult data == null");
      }
    }
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(paramInt2);
    arrayOfObject2[1] = Integer.valueOf(paramInt1);
    aa.b("MicroMsg.MusicBarComponent", "error on ActivityResult not ok, resultCode:%d, requestCode:%d", arrayOfObject2);
    return true;
  }

  public final void onCreate()
  {
    if (this.fjA == null)
      return;
    this.fjB.a(0, com.tencent.mm.h.agK, new g(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.f
 * JD-Core Version:    0.6.2
 */