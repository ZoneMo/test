package com.tencent.tmassistantsdk.network;

import com.qq.taf.jce.JceStruct;
import com.tencent.tmassistantsdk.protocol.jce.GetSettingsRequest;
import com.tencent.tmassistantsdk.protocol.jce.GetSettingsResponse;

public class GetSettingHttpRequest extends BaseHttpRequest
{
  private static final String TAG = "GetSettingHttpRequest";
  private IGetSettingHttpListener mListener = null;

  protected void onFinished(JceStruct paramJceStruct1, JceStruct paramJceStruct2)
  {
    if (paramJceStruct2 == null);
    while ((this.mListener == null) || (!(paramJceStruct2 instanceof GetSettingsResponse)))
      return;
    GetSettingsResponse localGetSettingsResponse = (GetSettingsResponse)paramJceStruct2;
    if (localGetSettingsResponse.ret == 0)
    {
      this.mListener.onSettingHttpRequestFinish((GetSettingsRequest)paramJceStruct1, localGetSettingsResponse, true);
      return;
    }
    this.mListener.onSettingHttpRequestFinish((GetSettingsRequest)paramJceStruct1, localGetSettingsResponse, false);
  }

  public void sendSettingRequest()
  {
    sendRequest(new GetSettingsRequest());
  }

  public void setGetSettingHttpListener(IGetSettingHttpListener paramIGetSettingHttpListener)
  {
    this.mListener = paramIGetSettingHttpListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.network.GetSettingHttpRequest
 * JD-Core Version:    0.6.2
 */