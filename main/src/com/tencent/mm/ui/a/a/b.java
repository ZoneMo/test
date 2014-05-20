package com.tencent.mm.ui.a.a;

import android.os.Bundle;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;

final class b extends Thread
{
  b(a parama, String paramString1, Bundle paramBundle, String paramString2, c paramc)
  {
  }

  public final void run()
  {
    try
    {
      String str = this.hak.hae.a(this.haf, this.hag, this.hah);
      c localc4 = this.hai;
      localc4.vX(str);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      c localc3 = this.hai;
      localc3.a(localFileNotFoundException);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      c localc2 = this.hai;
      localc2.a(localMalformedURLException);
      return;
    }
    catch (IOException localIOException)
    {
      c localc1 = this.hai;
      localc1.a(localIOException);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.b
 * JD-Core Version:    0.6.2
 */