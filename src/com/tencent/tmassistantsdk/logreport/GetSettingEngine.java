package com.tencent.tmassistantsdk.logreport;

import com.tencent.tmassistantsdk.network.GetSettingHttpRequest;
import com.tencent.tmassistantsdk.network.IGetSettingHttpListener;
import com.tencent.tmassistantsdk.protocol.ProtocolPackage;
import com.tencent.tmassistantsdk.protocol.jce.GetSettingsRequest;
import com.tencent.tmassistantsdk.protocol.jce.GetSettingsResponse;
import com.tencent.tmassistantsdk.protocol.jce.SettingsCfg;
import com.tencent.tmassistantsdk.protocol.jce.StatCfg;
import com.tencent.tmassistantsdk.util.GlobalUtil;
import java.util.ArrayList;

public class GetSettingEngine
  implements IGetSettingHttpListener
{
  private static final String TAG = "GetSettingEngine";
  private static GetSettingEngine mInstance = null;

  public static GetSettingEngine getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new GetSettingEngine();
      GetSettingEngine localGetSettingEngine = mInstance;
      return localGetSettingEngine;
    }
    finally
    {
    }
  }

  public void onSettingHttpRequestFinish(GetSettingsRequest paramGetSettingsRequest, GetSettingsResponse paramGetSettingsResponse, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramGetSettingsResponse.settings != null) && (paramGetSettingsResponse.settings.size() > 0))
    {
      SettingsCfg localSettingsCfg = (SettingsCfg)paramGetSettingsResponse.settings.get(0);
      if ((localSettingsCfg != null) && (localSettingsCfg.cfg != null))
      {
        StatCfg localStatCfg = (StatCfg)ProtocolPackage.bytes2JceObj(localSettingsCfg.cfg, StatCfg.class);
        if (localStatCfg != null)
          GlobalUtil.getInstance().setNetTypeValue(localStatCfg.netType);
      }
    }
  }

  public void sendRequest()
  {
    GetSettingHttpRequest localGetSettingHttpRequest = new GetSettingHttpRequest();
    localGetSettingHttpRequest.setGetSettingHttpListener(this);
    localGetSettingHttpRequest.sendSettingRequest();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.logreport.GetSettingEngine
 * JD-Core Version:    0.6.2
 */