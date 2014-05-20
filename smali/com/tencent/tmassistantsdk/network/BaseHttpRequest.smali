.class public abstract Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUEST_SERVER_URL:Ljava/lang/String; = "http://masdk.3g.qq.com/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract onFinished(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
.end method

.method protected sendRequest(Lcom/qq/taf/jce/JceStruct;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return v2

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tmassistantsdk/network/BaseHttpRequest$1;-><init>(Lcom/tencent/tmassistantsdk/network/BaseHttpRequest;Lcom/qq/taf/jce/JceStruct;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
