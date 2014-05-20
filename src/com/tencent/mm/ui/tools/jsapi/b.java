package com.tencent.mm.ui.tools.jsapi;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Message;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.sdk.platformtools.o;
import java.io.IOException;

public final class b extends Thread
{
  private String TAG = "MicroMsg.DownloadEmojiThread";
  private boolean cuA = false;
  private String dqp;
  private a hoO;
  private c hoP;

  public b(com.tencent.mm.plugin.webview.stub.ao paramao, ao paramao1, String paramString1, String paramString2, String paramString3)
  {
    this.hoO = new a(paramao, paramao1, paramString1, paramString3);
    this.dqp = paramString2;
  }

  private void aOs()
  {
    if (this.hoP != null)
      this.hoP.remove();
  }

  private void aOt()
  {
    this.hoO.sendEmptyMessage(11);
    aOs();
  }

  private void aOu()
  {
    this.hoO.sendEmptyMessage(-1);
    aOs();
  }

  private static boolean j(String paramString, Bitmap paramBitmap)
  {
    try
    {
      h.a(paramBitmap, 100, Bitmap.CompressFormat.PNG, paramString, true);
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public final void a(c paramc)
  {
    this.hoP = paramc;
  }

  public final void interrupt()
  {
    super.interrupt();
    if (this.hoP != null)
      this.hoP.remove();
    this.cuA = true;
  }

  public final void run()
  {
    if (!interrupted())
    {
      byte[] arrayOfByte1 = cj.sX(this.dqp);
      byte[] arrayOfByte2 = cj.sX(this.hoO.getURL());
      if (this.cuA)
      {
        aa.v(this.TAG, "add_emoticon:cancel,emojiUrl : " + this.hoO.getURL());
        aOu();
        return;
      }
      if (arrayOfByte2 == null)
      {
        aOt();
        return;
      }
      String str1 = be.uz().sJ();
      String str2 = f.h(arrayOfByte2);
      Message localMessage;
      if (!cj.hX(str2))
      {
        if (arrayOfByte1 != null)
        {
          Bitmap localBitmap = h.cj(arrayOfByte1);
          if (localBitmap != null)
            j(str1 + str2 + "_thumb", localBitmap);
        }
        localMessage = this.hoO.obtainMessage(10);
        this.hoO.eX(str2);
        com.tencent.mm.a.c.a(str1 + str2, arrayOfByte2, arrayOfByte2.length);
        this.hoO.oz(arrayOfByte2.length);
        if (!o.ck(arrayOfByte2))
          break label229;
      }
      label229: for (localMessage.arg1 = 1; ; localMessage.arg1 = 0)
      {
        this.hoO.sendMessage(localMessage);
        aOs();
        return;
        aOt();
        return;
      }
    }
    aa.v(this.TAG, "add_emoticon:cancel,emojiUrl : " + this.hoO.getURL());
    aa.v(this.TAG, "cancel_add_emoticon:ok");
    aOu();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.b
 * JD-Core Version:    0.6.2
 */