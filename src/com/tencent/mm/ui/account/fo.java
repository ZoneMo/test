package com.tencent.mm.ui.account;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.a.a.c;
import com.tencent.mm.ui.a.a.h;
import com.tencent.mm.ui.a.a.m;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONObject;

final class fo
  implements c
{
  fo(fm paramfm)
  {
  }

  public final void a(FileNotFoundException paramFileNotFoundException)
  {
    aa.e("MicroMsg.RefreshTokenRunner", "onFileNotFoundException");
    fm.a(this.gsk, 2, paramFileNotFoundException.getMessage());
  }

  public final void a(IOException paramIOException)
  {
    aa.e("MicroMsg.RefreshTokenRunner", "onIOException");
    fm.a(this.gsk, 2, paramIOException.getMessage());
  }

  public final void a(MalformedURLException paramMalformedURLException)
  {
    aa.e("MicroMsg.RefreshTokenRunner", "onMalformedURLException");
    fm.a(this.gsk, 2, paramMalformedURLException.getMessage());
  }

  public final void vX(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.RefreshTokenRunner", "response is null or nil");
      fm.a(this.gsk, 1, "response is null or nil");
      return;
    }
    if ((paramString.contains("access_token")) && (paramString.length() > 12))
      try
      {
        Bundle localBundle = m.xj(paramString);
        if (localBundle.containsKey("access_token"))
        {
          fm.a(this.gsk, localBundle);
          return;
        }
      }
      catch (Exception localException2)
      {
        fm.a(this.gsk, 2, "decodeUrl fail");
        return;
      }
    JSONObject localJSONObject1;
    do
    {
      try
      {
        if (paramString.equals("false"))
          throw new h("request failed");
      }
      catch (Exception localException1)
      {
        aa.e("MicroMsg.RefreshTokenRunner", "parseJson exception : " + localException1.getMessage());
        fm.a(this.gsk, 2, "parseJson error");
        return;
        if (paramString.equals("true"))
          paramString = "{value : true}";
        localJSONObject1 = new JSONObject(paramString);
        if (localJSONObject1.has("error"))
        {
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("error");
          throw new h(localJSONObject2.getString("message"), localJSONObject2.getString("type"), 0);
        }
      }
      catch (h localh)
      {
        String str = "errCode = " + localh.getErrorCode() + ", errType = " + localh.aLM() + ", errMsg = " + localh.getMessage();
        aa.e("MicroMsg.RefreshTokenRunner", "parseJson facebookerror, " + str);
        fm.a(this.gsk, 3, str);
        return;
      }
      if ((localJSONObject1.has("error_code")) && (localJSONObject1.has("error_msg")))
        throw new h(localJSONObject1.getString("error_msg"), "", Integer.parseInt(localJSONObject1.getString("error_code")));
      if (localJSONObject1.has("error_code"))
        throw new h("request failed", "", Integer.parseInt(localJSONObject1.getString("error_code")));
      if (localJSONObject1.has("error_msg"))
        throw new h(localJSONObject1.getString("error_msg"));
    }
    while (!localJSONObject1.has("error_reason"));
    throw new h(localJSONObject1.getString("error_reason"));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fo
 * JD-Core Version:    0.6.2
 */