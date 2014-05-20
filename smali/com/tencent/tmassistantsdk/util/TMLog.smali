.class public Lcom/tencent/tmassistantsdk/util/TMLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mDebugFlagForSDK:Z

.field private static mDebugFlagForSDKTag:Ljava/lang/String;

.field private static mHardDebugFlag:Z

.field private static mUseTimeLongList:Ljava/util/HashMap;

.field private static mUseTimeStringList:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/tencent/tmassistantsdk/util/TMLog;->mHardDebugFlag:Z

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeStringList:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeLongList:Ljava/util/HashMap;

    .line 20
    sput-boolean v1, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDK:Z

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    .line 69
    return-void
.end method

.method public static debugE(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-boolean v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDK:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method public static debugV(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    sget-boolean v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDK:Z

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    .line 87
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    .line 60
    return-void
.end method

.method public static isForDebug()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mHardDebugFlag:Z

    return v0
.end method

.method public static setDebugLog(ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    sput-boolean p0, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDK:Z

    .line 25
    sput-object p1, Lcom/tencent/tmassistantsdk/util/TMLog;->mDebugFlagForSDKTag:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static time(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    const-string v0, "UseTime"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tencent/tmassistantsdk/util/TMLog;->time(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public static time(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/tmassistantsdk/util/TMLog;->time(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public static time(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeStringList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 112
    if-nez v0, :cond_4

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    sget-object v1, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeStringList:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 116
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeLongList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    sget-object v2, Lcom/tencent/tmassistantsdk/util/TMLog;->mUseTimeLongList:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 123
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    if-eqz p2, :cond_0

    .line 126
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 128
    const-string v0, "total time:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 130
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 132
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v3, v7, v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 134
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    .line 138
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public static time(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const-string v0, "UseTime"

    invoke-static {v0, p0, p1}, Lcom/tencent/tmassistantsdk/util/TMLog;->time(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    .line 51
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/tencent/tmassistantsdk/util/TMLog;->isForDebug()Z

    .line 78
    return-void
.end method
